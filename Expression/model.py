import os

import keras.backend.tensorflow_backend as KTF
import numpy as np
import tensorflow as tf
from keras.models import model_from_json


# os.environ["CUDA_DEVICE_ORDER"]="PCI_BUS_ID"
# os.environ["CUDA_VISIBLE_DEVICES"]="0"

def get_session(gpu_fraction=0.30):
    '''Assume that you have 6GB of GPU memory and want to allocate ~2GB
       link https://groups.google.com/forum/#!topic/keras-users/MFUEY9P1sc8'''

    num_threads = os.environ.get('OMP_NUM_THREADS')
    print('ttl thread::', num_threads)
    gpu_options = tf.GPUOptions(per_process_gpu_memory_fraction=gpu_fraction)

    if num_threads:
        return tf.Session(config=tf.ConfigProto(
            gpu_options=gpu_options, intra_op_parallelism_threads=num_threads
        ))
    else:
        return tf.Session(config=tf.ConfigProto(gpu_options=gpu_options))
KTF.set_session(get_session())

EMOTIONS_LIST = ["Angry", "Disgust",
                 "Fear", "Happy",
                 "Sad", "Surprise",
                 "Neutral"]

with open('face_model.json', "r") as json_file:
    loaded_model_json = json_file.read()
    # print(loaded_model_json)
    loaded_model = model_from_json(loaded_model_json)
    print('----------', loaded_model)
    # load weights into the new model
loaded_model.load_weights('face_model1.h5')
graph = tf.get_default_graph()
print("Model loaded from disk")
loaded_model.summary()
cnt = 0


def predict_emotion(img):
    # print("---------------",img)
    # loaded_model._make_prediction_function()  # added
    global cnt
    global graph  # added
    with graph.as_default():  # added
        # model.predict_proba(new_X)
        preds = loaded_model.predict(img)
    res = np.argmax(preds)
    print(res)

    cnt += 1

    return EMOTIONS_LIST[res], res

    #
    # if __name__ == '__main__':
    #     pass
