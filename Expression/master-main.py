# -*- coding: utf-8 -*-
from datetime import date, datetime
from flask import Flask,request,jsonify
from tensorflow.python.eager.context import eager_mode

import pymysql
import camera

UPLOAD_FOLDER = 'thumbnail_images'
app = Flask(__name__)

ALLOWED_EXTENSIONS = set(['png', 'jpg', 'mp4', 'bmp'])


def allowed_file(filename):
    return '.' in filename and \
           filename.rsplit('.', 1)[1].lower() in ALLOWED_EXTENSIONS


@app.after_request
def add_header(r):

    r.headers["Cache-Control"] = "no-cache, no-store, must-revalidate"
    r.headers["Pragma"] = "no-cache"
    r.headers["Expires"] = "0"
    r.headers['Cache-Control'] = 'public, max-age=0'
    return r


@app.after_request
def add_header(r):
    r.headers["Cache-Control"] = "no-cache, no-store, must-revalidate"
    r.headers["Pragma"] = "no-cache"
    r.headers["Expires"] = "0"
    r.headers['Cache-Control'] = 'public, max-age=0'
    return r


@app.route('/', methods=['GET'])
def helmet_detect():

    output ={}
    lst =  camera.start_app(0)
    emotion = ['Angry', 'Disgust', 'Fear', 'Happy', 'Sad', 'Suprise', 'Neutral']


    for i in range(len(emotion)):
        output[emotion[i]]=lst[i]

    Angry = str(output['Angry'])

    print("angryCOut",Angry)

    Disgust = str(output['Disgust'])
    Fear = str(output['Fear'])
    Happy = str(output['Happy'])
    Sad = str(output['Sad'])
    Suprise = str(output['Suprise'])
    Neutral = str(output['Neutral'])
    emotionDate = str(date.today())
    emotionTIme = str(datetime.time(datetime.now()))


    connection  = pymysql.connect(
        host="localhost",
        user = "root",
        password = "root",
        db = "demo"
    )

    cursor1 = connection.cursor()

    cursor1.execute("INSERT INTO detection_table(Angry,Disgust,Fear,Happy,Sad,Suprise,Neutral,emotionDate,emotionTIme)   VALUES ('"+ Angry +"','"+ Disgust +"','"+ Fear +"','"+ Happy +"','"+ Sad +"','"+ Suprise +"','"+ Neutral +"','"+ emotionDate +"','"+emotionTIme+"')")
    connection.commit()
    cursor1.close()
    connection.close()
    print("output",output)

    response =jsonify(output)

    response.headers.add("Access-Control-Allow-Origin","*")

    return response


@app.route('/getgraph', methods=['GET', 'POST'])
def graph_detect():

    camera.get_graph()


@app.after_request
def add_header(r):
    r.headers["Cache-Control"] = "no-cache, no-store, must-revalidate"
    r.headers["Pragma"] = "no-cache"
    r.headers["Expires"] = "0"
    r.headers['Cache-Control'] = 'public, max-age=0'
    return r


if __name__=="__main__":
    app.debug = False
    app.run(port=5678)