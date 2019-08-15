import tensorflow as tf
import numpy as np
import pandas as pd

import get_data as get

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

timesteps = 100

# Placeholder variables
x = tf.compat.v1.placeholder(tf.float32, shape=[None, 51*timesteps], name='X')
# Reshape into [num_images, img_height, img_width, num_channels]
#x_image = tf.reshape(x, [-1, timesteps, 51, 1])

y_true = tf.compat.v1.placeholder(tf.float32, shape=[None, 51], name='y_true')
#y_true_cls = tf.argmax(y_true, axis=1)

# function for new convolutional layer
def new_conv_layer(input, num_input_channels, filter_size, num_filters, name):

    with tf.compat.v1.variable_scope(name) as scope:
        shape = [filter_size, filter_size, num_input_channels, num_filters]
        weights = tf.Variable(tf.random.truncated_normal(shape, stddev=0.05))
        biases = tf.Variable(tf.constant(0.05, shape=[num_filters]))
        layer = tf.nn.conv2d(input=input, filter=weights, strides=[1,1,1,1], padding='SAME')

        layer += biases

        return layer, weights

# new pooling layer function
def new_pool_layer(input, name):

    with tf.compat.v1.variable_scope(name) as scope:
        layer = tf.nn.max_pool(value=input, ksize=[1, 2, 2, 1], strides=[1, 2, 2, 1], padding='SAME')

        return layer

# new relu layer function
def new_relu_layer(input, name):

    with tf.compat.v1.variable_scope(name) as scope:
        layer = tf.nn.sigmoid(input)

        return layer

# new fully connected layer function
def new_fc_layer(input, num_inputs, num_outputs, name):

    with tf.compat.v1.variable_scope(name) as scope:

        weights = tf.Variable(tf.random.truncated_normal([num_inputs, num_outputs], stddev=0.05))
        biases = tf.Variable(tf.constant(0.05, shape=[num_outputs]))

        layer = tf.sigmoid(tf.matmul(input, weights) + biases)

        return layer

# first set of layers
# layer_conv1, weights_conv1 = new_conv_layer(input=x_image, num_input_channels=1, filter_size=5, num_filters=6, name="conv1")
# layer_pool1 = new_pool_layer(layer_conv1, name="pool1")
# layer_relu1 = new_relu_layer(layer_pool1, name="relu1")

# second set of layers
# layer_conv2, weights_conv2 = new_conv_layer(input=layer_relu1, num_input_channels=6, filter_size=5, num_filters=16, name="conv2")
# layer_pool2 = new_pool_layer(layer_conv2, name="pool2")
# layer_relu2 = new_relu_layer(layer_pool2, name="relu2")

# Flatten layer
# num_features = layer_relu2.get_shape()[1:4].num_elements()
# layer_flat = tf.reshape(layer_relu2, [-1, num_features])

# print(num_features)

# first fully connected layer
layer_fc1 = new_fc_layer(x, num_inputs=51*timesteps, num_outputs=4100, name="fc1")

layer_fc2 = new_fc_layer(layer_fc1, num_inputs=4100, num_outputs=4200, name="fc2")

layer_fc3 = new_fc_layer(layer_fc2, num_inputs=4200, num_outputs=3800, name="fc3")

layer_fc4 = new_fc_layer(layer_fc3, num_inputs=3800, num_outputs=2200, name="fc4")

layer_fc5 = new_fc_layer(layer_fc4, num_inputs=2200, num_outputs=1800, name="fc5")

layer_fc6 = new_fc_layer(layer_fc5, num_inputs=1800, num_outputs=1600, name="fc6")

layer_fc7 = new_fc_layer(layer_fc6, num_inputs=1600, num_outputs=1000, name="fc7")

layer_fc8 = new_fc_layer(layer_fc7, num_inputs=1000, num_outputs=800, name="fc8")

layer_fc9 = new_fc_layer(layer_fc8, num_inputs=800, num_outputs=365, name="fc9")

out = new_fc_layer(input=layer_fc9, num_inputs=365, num_outputs=51, name="out")

with tf.compat.v1.variable_scope("Softmax"):
    y_pred = tf.nn.softmax(out)
    #y_pred_cls = tf.argmax(y_pred, axis=1)

cost = tf.reduce_mean(tf.nn.softmax_cross_entropy_with_logits(logits=out, labels=y_true))


with tf.name_scope("optimizer"):
    initial_learning_rate = 0.001
    learning_rate = tf.compat.v1.train.exponential_decay(initial_learning_rate, 0, 5, 0.85, staircase=True)
    optimizer = tf.compat.v1.train.AdamOptimizer(learning_rate).minimize(cost)

with tf.name_scope("accuracy"):
    correct_prediction = tf.equal(tf.argmax(y_pred, axis=1), tf.argmax(y_true, axis=1))
    accuracy = tf.reduce_mean(tf.cast(correct_prediction, tf.float32))

epochs = 100
batch_size = 100

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

with tf.compat.v1.Session() as sess:
    sess.run(tf.compat.v1.global_variables_initializer())
    print("starting training")
    for epoch in range(epochs):
        arr = np.arange(train_data_x.shape[0])
        np.random.shuffle(arr)
        for batch in range(0, int(len(train_data_x))):
            feed_dict_train = {x: np.reshape(train_data_x[arr[batch]], [1, -1]), y_true: np.reshape(output_train[arr[batch]], [1, -1])}
            sess.run(optimizer, feed_dict=feed_dict_train)
        train_accuracy = sess.run(accuracy, feed_dict={x: train_data_x, y_true: output_train})
        vali_accuracy = sess.run(accuracy, feed_dict={x: test_data_x, y_true: output_test})
        train_cost = sess.run(cost, feed_dict={x: train_data_x, y_true: output_train})

        print("Epoch "+str(epoch+1)+" completed ")
        print("\tAccuracy:")
        print ("\t- Training Accuracy:\t{}".format(train_accuracy))
        print ("\t- Validation Accuracy:\t{}".format(vali_accuracy))
        print("\t- Cost: \t\t{}".format(train_cost))
