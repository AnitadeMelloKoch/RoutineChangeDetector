import tensorflow as tf
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt

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

# Parameters
timesteps = 100
num_x = 50*timesteps
num_hidden_1 = 25*timesteps
num_hidden_2 = 10*timesteps
num_hidden_3 = 25*timesteps
num_y = 50*timesteps
epochs = 20
batch_size = 150

# num_test_images = 10

initial_learning_rate = 0.01

x = tf.placeholder("float", [None, num_x])
y = tf.placeholder("float", [None, num_x])


weight_1 = tf.Variable(tf.random.normal([num_x, num_hidden_1]), name="weight_1")
bias_1 = tf.Variable(tf.random.normal([num_hidden_1]), name="bias_1")

weight_2 = tf.Variable(tf.random.normal([num_hidden_1, num_hidden_2]), name="weight_2")
bias_2 = tf.Variable(tf.random.normal([num_hidden_2]), name="bias_2")

weight_3 = tf.Variable(tf.random.normal([num_hidden_2, num_hidden_3]), name="weight_3")
bias_3 = tf.Variable(tf.random.normal([num_hidden_3]), name="bias_3")

weight_out = tf.Variable(tf.random.normal([num_hidden_3, num_y]), name="weight_4")
bias_out = tf.Variable(tf.random.normal([num_y]), name="bias_out")

layer_1 = tf.nn.sigmoid(tf.add(tf.matmul(x, weight_1), bias_1))

layer_2 = tf.nn.sigmoid(tf.add(tf.matmul(layer_1, weight_2), bias_2))

layer_3 = tf.nn.sigmoid(tf.add(tf.matmul(layer_2, weight_3), bias_3))

layer_out = tf.nn.sigmoid(tf.add(tf.matmul(layer_3, weight_out), bias_out))

loss = tf.reduce_mean(tf.square(layer_out - x))

optimizer = tf.train.AdamOptimizer(initial_learning_rate)
train = optimizer.minimize(loss)

correct_pred = tf.equal(tf.argmax(layer_out, 1), tf.argmax(y, 1))
accuracy = tf.reduce_mean(tf.cast(correct_pred, tf.float32))

data = pd.read_csv("./text.csv", names=labels)
nor_obs = data.loc[data.anomalie == 0]
ano_obs = data.loc[data.anomalie == 1]

data_x_in = nor_obs.drop('anomalie',1).values

training_num = int(len(data_x_in)*0.7)
data_x = []
test_data_x = []
train_data_x = []
output_test = []
output_train = []


for one_input in range(0, len(data_x_in) - timesteps):
    print("Converting {0} of {1}".format(one_input, len(data_x_in)-timesteps))
    one_point = []
    for one_row in range(0, timesteps):
        if one_row == 0:
            one_point = data_x_in[one_input+one_row]
        else:
            one_point = np.concatenate([one_point, data_x_in[one_input+one_row]])
        np.reshape(one_point, [1, -1])
    if (one_input == 0):
        data_x = one_point
    else:
        data_x = np.concatenate([np.reshape(data_x, [-1, 50*timesteps]), np.reshape(one_point, [1, -1])])


train_data_x = data_x[:training_num - timesteps]
test_data_x = data_x[training_num:]
output_train = data_x[timesteps:training_num]
output_test = data_x[training_num+timesteps:]

train_acc = []
test_acc = []

init = tf.global_variables_initializer()

sess = tf.Session()
sess.run(init)

for epoch in range(epochs):

    for iteration in range(train_data_x.shape[0]):
        sess.run(train, feed_dict={x:np.reshape(train_data_x[iteration], [1,-1])})

    train_loss = loss.eval(session=sess, feed_dict={x:train_data_x})
    train_acc.append(sess.run(accuracy, feed_dict={x:train_data_x, y:train_data_x}))
    test_acc.append(sess.run(accuracy, feed_dict={x:test_data_x, y:test_data_x}))

    print("epoch {} loss {} train {} test {}".format(epoch, train_loss, train_acc[epoch], test_acc[epoch]))
