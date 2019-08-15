import tensorflow as tf
from tensorflow.contrib import rnn
import numpy as np
from sklearn.metrics import roc_auc_score, accuracy_score
import random
import pandas as pd

labels = ["day",
"hour",
"minute",
"lyingDown", 
"sitting", 
"walking", 
"running", 
"bicycling",
"sleeping", 
"labWork",
"inClass",
"inMeeting",
"drivingDriver",
"drivingPass",
"exercise",
"cooking", 
"shopping", 
"strolling", 
"drinkingAlcohol", 
"shower",
"cleaning",
"doingLaundry",
"washingDishes", 
"watchingTv", 
"surfInternet",
"singing",
"talking",
"computerWork",
"eating",
"toilet",
"grooming",
"dressing",
"stairsUp",
"stairsDown",
"standing",
"withCoworker", 
"withFriends",
"mainWorkplace",
"indoors",
"outdoors",
"inCar",
"onBus",
"home",
"restaurant",
"atParty",
"atBar",
'beach',
'atGym',
"elevator",
"atSchool",
"anomalie"]

# try using two LSTM layers with fully connected layer and output

sess = tf.compat.v1.InteractiveSession()

# Parameters
n_input = 50
n_lstm = 50
n_hidden_1 = 50
n_output = 50
timesteps = 70
learning_rate = 0.001
iterations = 100000
display_steps = 1000
regulariser_rate = 0.1

# graph inputs
x = tf.compat.v1.placeholder("float", [None, timesteps, n_input])
y = tf.compat.v1.placeholder("float", [None, n_output])

# initialize weights for lstm 
weight_lstm = tf.Variable(tf.random_normal([n_input, n_lstm]))
bias_lstm = tf.Variable(tf.random_normal([n_lstm]))

# initialize weights for layer 1
weight_hidden_1 = tf.Variable(tf.random_normal([n_lstm, n_hidden_1]))
bias_hidden_1 = tf.Variable(tf.random_normal([n_hidden_1]))

# initialize output weights
weight_output = tf.Variable(tf.random_normal([n_hidden_1, n_output]))
bias_output = tf.Variable(tf.random_normal([n_output]))

def RNN_layer(x, weight, bias):
    x = tf.reshape(x, [-1, timesteps])
    x = tf.split(x, timesteps, 1)
    lstm_cell = rnn.MultiRNNCell([rnn.BasicLSTMCell(n_lstm), rnn.BasicLSTMCell(n_lstm)])
    outputs, states = rnn.static_rnn(lstm_cell, x, dtype=tf.float32)

    return tf.matmul(outputs[-1], weight) + bias

# define layers
lstm_layers = RNN_layer(x, weight_lstm, bias_lstm)

layer_1 = tf.nn.sigmoid(tf.add(tf.matmul(lstm_layers, weight_hidden_1), bias_hidden_1))

predicted_y = tf.nn.sigmoid(tf.add(tf.matmul(layer_1, weight_output),bias_output))

loss = tf.reduce_mean(tf.nn.softmax_cross_entropy_with_logits(logits=predicted_y, labels=y)) + regulariser_rate*(tf.reduce_sum(tf.square(bias_hidden_1))+tf.reduce_sum(tf.square(bias_lstm)))
optimizer = tf.compat.v1.train.AdamOptimizer(learning_rate).minimize(loss, var_list=[weight_hidden_1,
                                                                        weight_lstm,
                                                                        weight_output,
                                                                        bias_hidden_1,
                                                                        bias_lstm,
                                                                        bias_output])

# Accuracy
correct_pred = tf.equal(tf.argmax(predicted_y, 1), tf.argmax(y, 1))
accuracy = tf.reduce_mean(tf.cast(correct_pred, tf.float32))

######
# Training

training_accuracy = []
training_loss = []
testing_accuracy = []

acc_total = 0
loss_total = 0

sess.run(tf.compat.v1.global_variables_initializer())

data = pd.read_csv("./text.csv", names=labels)
nor_obs = data.loc[data.anomalie == 0]
ano_obs = data.loc[data.anomalie == 1]

training_num = int(len(nor_obs)*0.7)
input_train = nor_obs.loc[:training_num, :].drop('anomalie', 1).values
input_test = nor_obs.loc[training_num:, :].drop('anomalie', 1).values
output_train = nor_obs.loc[timesteps:training_num, :].drop('anomalie', 1).values
output_test = nor_obs.loc[training_num+timesteps:, :].drop('anomalie', 1).values

test_data_x = []


for one_input in range(0, len(input_test) - timesteps):
        print("converting {0} of {1}".format(one_input, len(input_test) - timesteps))
        one_point = np.reshape(input_test[one_input: one_input+timesteps], [1, timesteps, n_output])
        if (one_input == 0):
                test_data_x = one_point
        else:
                test_data_x = np.concatenate([test_data_x, one_point])


index = random.randint(0, len(input_train) - timesteps - 1)

print("Start training")
for step in range(iterations):
        if index > (len(input_train) - timesteps - 1):
                index = 0

        _, acc, losses, prediction = sess.run([optimizer, accuracy, loss, predicted_y], feed_dict={    x: np.reshape(input_train[index: index + timesteps], [1, timesteps, n_output]),
                                                                                                y: np.reshape(output_train[index],[1, -1])})
        loss_total += losses
        acc_total += acc

        index += 1

        if ((step + 1) % display_steps == 0):
                training_accuracy.append(acc_total/step)
                training_loss.append(loss_total/step)
                print("Step:{0}, Train loss average:{1:.2f} Train acc {2:.3f}".format(step, (loss_total/step), (acc_total/step)))
                print("         training loss: {0:.2f} training accuracy {1:.3f}".format(losses, acc))
                testing_acc = 0
                count = 0
                for test in range(0, len(input_test) - timesteps):
                        count += 1
                        testing_acc += sess.run(accuracy, feed_dict={x: np.reshape(test_data_x[test],[1, timesteps, n_output]), y: np.reshape(output_test[test], [1, -1])})
                print("Testing acc: {0:.3f}".format(testing_acc/(count)))
        

print("finished")