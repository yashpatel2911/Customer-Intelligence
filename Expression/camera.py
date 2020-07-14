import cv2
import glob
import matplotlib.pyplot as plt
import numpy as np
import os

from model import predict_emotion

# video_path=0
# rgb = cv2.VideoCapture(video_path)
facec = cv2.CascadeClassifier('haarcascade_frontalface_alt2.xml')
font = cv2.FONT_HERSHEY_SIMPLEX


# AGE CATEGORIES: Adult(0), Child(1), Old(2), Youth(3)
# EMOTION CATEGORIES: Angry(0), Disgust(1), Fear(2), Happy(3), Sad(4), Suprise(5), Neutral(6)
def start_app(path):
    data = []
    n_frame = 0
    no_emo_det = 0
    cnt = 0

    if (path != 0):
        video_path = path
        cap = path
    else:
        video_path = 'camera_capture.mp4'
        cap = 0

    rgb = cv2.VideoCapture(0)
    facec = cv2.CascadeClassifier('haarcascade_frontalface_alt2.xml')
    font = cv2.FONT_HERSHEY_COMPLEX

    frame_h = int(rgb.get(cv2.CAP_PROP_FRAME_HEIGHT))
    frame_w = int(rgb.get(cv2.CAP_PROP_FRAME_WIDTH))

    video_out = "static/videos/" + 'expresssion_detected' + '.webm'  # '.webm'

    video_writer = cv2.VideoWriter(video_out, cv2.VideoWriter_fourcc(*'VP80'), 30.0, (frame_w, frame_h))

    #video_writer = cv2.VideoWriter(video_out, cv2.VideoWriter_fourcc(*'MPEG'), 30.0, (frame_w, frame_h))

    count = 0
    while True:
        n_frame += 1

        ret, fr = rgb.read()

        if ret == False:
            break

        gray = cv2.cvtColor(fr, cv2.COLOR_BGR2GRAY)
        faces = facec.detectMultiScale(gray, 1.3, 5)
        faces, fr, gray_fr = faces, fr, gray

        if len(faces) == 0:
            no_emo_det += 1
        else:
            frame = []
            for (x, y, w, h) in faces:
                fc_emo = gray_fr[y:y + h, x:x + w]
                # cv2.imwrite('test\{}.jpg'.format(count),fc_emo)
                count += 1
                cnt += 1
                # fc_age = fr[y:y + h, x:x + w]
                # fc_gender = fr[y:y + h, x:x + w]

                # print(fc)
                roi_emo = cv2.resize(fc_emo, (48, 48))

                # predictions code
                pred_emo, emo_index = predict_emotion(roi_emo[np.newaxis, :, :, np.newaxis])

                frame.append(emo_index)

                rgb_emo = cv2.cvtColor(fc_emo, cv2.COLOR_GRAY2BGR)

                # if not os.path.isdir('result/' + '{}'.format(pred_emo)):
                #     os.makedirs('result/' + '{}'.format(pred_emo))
                # cv2.imwrite('output/' + '{}/Angry_{}.jpg'.format('logic', cnt), rgb_emo)
                # cv2.imwrite('static/output/{}.jpg'.format(cnt), rgb_emo)
                # if pred_emo == 'Angry':
                #     cv2.imwrite('result/' + '{}/Angry_{}.jpg'.format(pred_emo, cnt), rgb_emo)
                #     cv2.imwrite('result/' + '{}/Angry_{}.jpg'.format('logic', cnt), rgb_emo)
                # elif pred_emo == 'Disgust':
                #     cv2.imwrite('result/' + '{}/Disgust_{}.jpg'.format('logic', cnt), rgb_emo)
                #     cv2.imwrite('result/' + '{}/Disgust_{}.jpg'.format(pred_emo, cnt), rgb_emo)
                # elif pred_emo == 'Fear':
                #     cv2.imwrite('result/' + '{}/Fear_{}.jpg'.format('logic', cnt), rgb_emo)
                #     cv2.imwrite('result/' + '{}/Fear_{}.jpg'.format(pred_emo, cnt), rgb_emo)
                # elif pred_emo == 'Happy':
                #     cv2.imwrite('result/' + '{}/Happy_{}.jpg'.format('logic', cnt), rgb_emo)
                #     cv2.imwrite('result/' + '{}/Happy_{}.jpg'.format(pred_emo, cnt), rgb_emo)
                # elif pred_emo == 'Sad':
                #     cv2.imwrite('result/' + '{}/Sad_{}.jpg'.format('logic', cnt), rgb_emo)
                #     cv2.imwrite('result/' + '{}/Sad_{}.jpg'.format(pred_emo, cnt), rgb_emo)
                # elif pred_emo == 'Surprise':
                #     cv2.imwrite('result/' + '{}/Surprise_{}.jpg'.format('logic', cnt), rgb_emo)
                #     cv2.imwrite('result/' + '{}/Surprise_{}.jpg'.format(pred_emo, cnt), rgb_emo)
                # elif pred_emo == 'Neutral':
                #     cv2.imwrite('result/' + '{}/Neutral_{}.jpg'.format('logic', cnt), rgb_emo)
                #     cv2.imwrite('result/' + '{}/Neutral_{}.jpg'.format(pred_emo, cnt), rgb_emo)
                # else:
                #     cv2.imwrite('result/' + '{}/None_{}.jpg'.format('logic', cnt), rgb_emo)
                #     cv2.imwrite('result/' + '{}/None_{}.jpg'.format('None', cnt), rgb_emo)

                # cv2 writing code
                cv2.putText(fr, pred_emo, (x, y), font, 1, (255, 255, 0), 2)

                cv2.rectangle(fr, (x, y), (x + w, y + h), (255, 0, 0), 2)

            cv2.putText(fr, 'Total Detected :{}'.format(len(faces)), (30, 30), font, 1, (255, 0, 0), 2)
            data.append(frame)

        if cv2.waitKey(1) == 27:
            break
        cv2.imshow('Filter', fr)
        video_writer.write(np.uint8(fr))

    cv2.destroyAllWindows()
    rgb.release()
    video_writer.release()

    # ANALYSIS AND PLOTTING SECTION
    # emotion counting and other statistics
    # creating counts of emotion
    emotion = [0, 0, 0, 0, 0, 0, 0]
    for frame in data:
        for box in frame:
            emotion[box] += 1

    dict = emotion
    no_emo_det = no_emo_det / n_frame * 100

    emotion = [(x / n_frame) * 100 for x in emotion]
    emotion = emotion + [no_emo_det]

    emo_tup = ('Angry', 'Disgust', 'Fear', 'Happy', 'Sad', 'Suprise', 'Neutral', 'None')
    y_pos = np.arange(len(emo_tup))

    colors = ['red', 'green', 'black', 'yellow', 'magenta', 'orange', 'cyan', 'brown']

    # female_colors=['#D35E60','#84BA5B','#808585','#DD974C','#9067A7','#CCC210','#7293CB','#AB6857']
    # male_colors=['#CC2529','#3E9651','#535154','#DA7C30','#6B4C9A','#948B3D','#396AB1','#922428']

    # rects1_m=plt.bar(y_pos,emotion,width=0.18,color=male_colors,align='edge',edgecolor='none')

    # plt.legend((rects1_m[0],rects1_m[1],rects1_m[2],rects1_m[3],rects1_m[4],rects1_m[5],rects1_m[6],rects1_m[7]),emo_tup,loc='best')
    # plt.grid()
    # ax=plt.gca()
    # ax.set_ylim([0,100])
    # ax.set_facecolor('#e5e7ea')
    # plt.xlabel('Emotions')
    # plt.ylabel('Frame Percentage')
    # plt.title('Video Analysis Graph')
    # autolabel(rects1_f,rects1_m,'A')
    # autolabel(rects2_f,rects2_m,'C')
    # autolabel(rects3_f,rects3_m,'O')
    # autolabel(rects4_f,rects4_m,'Y')

    ax = plt.gca()
    ax.set_ylim([0, 100])
    plt.bar(y_pos, emotion, color=colors)
    plt.xticks(y_pos, emo_tup)
    plt.xlabel('Emotions')
    plt.ylabel('Frame Percentage')
    plt.title('Video Analysis Graph')
    plt.savefig('static/images/graph.png')
    plt.gcf().clear()

    return dict

def get_graph():
    global file
    data = []
    n_frame = 0
    no_emo_det = 0
    cnt = 0
    count = 0
    # Put here cluster code or call cluster file.



    getFolder = glob.glob(r'static\cluster\*')
    print(getFolder)
    for folder in getFolder:
        print('folder', folder)
        getFiles = glob.glob(folder + '\*.*')
        for file in getFiles:
            n_frame += 1
            fr = cv2.imread(file)

            gray = cv2.cvtColor(fr, cv2.COLOR_BGR2GRAY)
            faces = facec.detectMultiScale(gray, 1.3, 5)
            faces, fr, gray_fr = faces, fr, gray

            if len(faces) == 0:
                no_emo_det += 1
            else:
                frame = []
                for (x, y, w, h) in faces:
                    fc_emo = gray_fr[y:y + h, x:x + w]
                    count += 1
                    cnt += 1
                    # print(fc)
                    roi_emo = cv2.resize(fc_emo, (48, 48))

                    # predictions code
                    pred_emo, emo_index = predict_emotion(roi_emo[np.newaxis, :, :, np.newaxis])

                    frame.append(emo_index)

                    rgb_emo = cv2.cvtColor(fc_emo, cv2.COLOR_GRAY2BGR)

                    if not os.path.isdir(folder + '/{}'.format(pred_emo)):
                        os.makedirs(folder + '/{}'.format(pred_emo))

                    if pred_emo == 'Angry':
                        cv2.imwrite(folder + '/{}/Angry_{}.jpg'.format(pred_emo, cnt), rgb_emo)
                    elif pred_emo == 'Disgust':
                        cv2.imwrite(folder + '/{}/Disgust_{}.jpg'.format(pred_emo, cnt), rgb_emo)
                        # cv2.imwrite(folder + '/{}/Disgust_{}.jpg'.format('logic', cnt), rgb_emo)
                    elif pred_emo == 'Fear':
                        cv2.imwrite(folder + '/{}/Fear_{}.jpg'.format(pred_emo, cnt), rgb_emo)
                        # cv2.imwrite(folder + '/{}/Fear_{}.jpg'.format('logic', cnt), rgb_emo)
                    elif pred_emo == 'Happy':
                        cv2.imwrite(folder + '/{}/Happy_{}.jpg'.format(pred_emo, cnt), rgb_emo)
                        # cv2.imwrite(folder + '/{}/Happy_{}.jpg'.format('logic', cnt), rgb_emo)
                    elif pred_emo == 'Sad':
                        cv2.imwrite(folder + '/{}/Sad_{}.jpg'.format(pred_emo, cnt), rgb_emo)
                        # cv2.imwrite(folder + '/{}/Sad_{}.jpg'.format('logic', cnt), rgb_emo)
                    elif pred_emo == 'Surprise':
                        cv2.imwrite(folder + '/{}/Surprise_{}.jpg'.format(pred_emo, cnt), rgb_emo)
                        # cv2.imwrite(folder + '/{}/Surprise_{}.jpg'.format('logic', cnt), rgb_emo)
                    elif pred_emo == 'Neutral':
                        cv2.imwrite(folder + '/{}/Neutral_{}.jpg'.format(pred_emo, cnt), rgb_emo)
                        # cv2.imwrite(folder + '/{}/Neutral_{}.jpg'.format('logic', cnt), rgb_emo)
                    else:
                        cv2.imwrite(folder + '/{}/None_{}.jpg'.format('None', cnt), rgb_emo)
                        # cv2.imwrite(folder + '/{}/None_{}.jpg'.format('logic', cnt), rgb_emo)

                    # cv2 writing code
                    cv2.putText(fr, pred_emo, (x, y), font, 1, (255, 255, 0), 2)

                    cv2.rectangle(fr, (x, y), (x + w, y + h), (255, 0, 0), 2)
                print('Total Detected :{}'.format(len(faces)))
                cv2.putText(fr, 'Total Detected :{}'.format(len(faces)), (50, 50), font, 2, (255, 255, 0), 3)
                data.append(frame)

            if cv2.waitKey(1) == 27:
                break
            cv2.imshow('Filter', fr)

            # video_writer.write(np.uint8(fr))

        emotion = [0, 0, 0, 0, 0, 0, 0]
        for frame in data:
            for box in frame:
                emotion[box] += 1

        no_emo_det = no_emo_det / n_frame * 100

        emotion = [(x / n_frame) * 100 for x in emotion]
        emotion = emotion + [no_emo_det]

        emo_tup = ('Angry', 'Disgust', 'Fear', 'Happy', 'Sad', 'Suprise', 'Neutral', 'None')
        y_pos = np.arange(len(emo_tup))

        colors = ['red', 'green', 'black', 'yellow', 'magenta', 'orange', 'cyan', 'brown']

        ax = plt.gca()
        ax.set_ylim([0, 100])
        plt.bar(y_pos, emotion, color=colors)
        plt.xticks(y_pos, emo_tup)
        plt.xlabel('Emotions')
        plt.ylabel('Frame Percentage')
        plt.title('Video Analysis Graph')
        plt.savefig(folder + '\ind_video_analysis_graph.jpg')
        plt.savefig('Ind_Video_Analysis{}.jpg'.format(folder[-1]))
        # plt.savefig( + '\ind_video_analysis_graph.jpg')
        plt.show()

        plt.gcf().clear()
        print('>>>>>>>>>>>>>>>>', file)

    cv2.destroyAllWindows()
    # rgb.release()
    # video_writer.release()

    # ANALYSIS AND PLOTTING SECTION
    # emotion counting and other statistics
    # creating counts of emotion
