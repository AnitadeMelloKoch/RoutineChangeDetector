import tensorflow as tf
import numpy as np
import time

from tensorflow.examples.tutorials.mnist import input_data
data = input_data.read_data_sets('data/MNIST/', one_hot=True)

print("Size of:")
print("- Training-set:\t\t{}".format(len(data.train.labels)))
print("- Test-set:\t\t{}".format(len(data.test.labels)))
print("- Validation-set:\t{}".format(len(data.validation.labels)))

# Placeholder variables
x = tf.placeholder(tf.float32, shape=[None, 28*28], name='X')
# Reshape into [num_images, img_height, img_width, num_channels]
x_image = tf.reshape(x, [-1, 28, 28, 1])

y_true = tf.placeholder(tf.float32, shape=[None, 10], name='y_true')
y_true_cls = tf.argmax(y_true, axis=1)

# function for new convolutional layer
def new_conv_layer(input, num_input_channels, filter_size, num_filters, name):

    with tf.variable_scope(name) as scope:
        shape = [filter_size, filter_size, num_input_channels, num_filters]
        weights = tf.Variable(tf.truncated_normal(shape, stddev=0.05))
        biases = tf.Variable(tf.constant(0.05, shape=[num_filters]))
        layer = tf.nn.conv2d(input=input, filter=weights, strides=[1,1,1,1], padding='SAME')

        layer += biases

        return layer, weights

# new pooling layer function
def new_pool_layer(input, name):

    with tf.variable_scope(name) as scope:
        layer = tf.nn.max_pool(value=input, ksize=[1, 2, 2, 1], strides=[1, 2, 2, 1], padding='SAME')

        return layer

# new relu layer function
def new_relu_layer(input, name):

    with tf.variable_scope(name) as scope:
        layer = tf.nn.relu(input)

        return layer

# new fully connected layer function
def new_fc_layer(input, num_inputs, num_outputs, name):

    with tf.variable_scope(name) as scope:

        weights = tf.Variable(tf.truncated_normal([num_inputs, num_outputs], stddev=0.05))
        biases = tf.Variable(tf.constant(0.05, shape=[num_outputs]))

        layer = tf.matmul(input, weights) + biases

        return layer

# first set of layers
layer_conv1, weights_conv1 = new_conv_layer(input=x_image, num_input_channels=1, filter_size=5, num_filters=6, name="conv1")
layer_pool1 = new_pool_layer(layer_conv1, name="pool1")
layer_relu1 = new_relu_layer(layer_pool1, name="relu1")

# second set of layers
layer_conv2, weights_conv2 = new_conv_layer(input=layer_relu1, num_input_channels=6, filter_size=5, num_filters=16, name="conv2")
layer_pool2 = new_pool_layer(layer_conv2, name="pool2")
layer_relu2 = new_relu_layer(layer_pool2, name="relu2")

# Flatten layer
num_features = layer_relu2.get_shape()[1:4].num_elements()
layer_flat = tf.reshape(layer_relu2, [-1, num_features])

# first fully connected layer
layer_fc1 = new_fc_layer(layer_flat, num_inputs=num_features, num_outputs=128, name="fc1")

layer_relu3 = new_relu_layer(layer_fc1, name="relu3")

layer_fc2 = new_fc_layer(input=layer_relu3, num_inputs=128, num_outputs=10, name="fc2")

with tf.variable_scope("Softmax"):
    y_pred = tf.nn.softmax(layer_fc2)
    y_pred_cls = tf.argmax(y_pred, axis=1)

loss = tf.reduce_mean(tf.nn.softmax_cross_entropy_with_logits(logits=y_pred, labels=y_true))

with tf.name_scope("optimizer"):
    optimizer = tf.train.AdamOptimizer(learning_rate=1e-4).minimize(cost)

with tf.name_scope("accuracy"):
    correct_prediction = tf.equal(y_pred_cls, y_true_cls)
    accuracy = tf.reduce_mean(tf.cast(correct_prediction, tf.float32))

epochs = 100
batch_size = 100

with tf.Session() as sess:
    sess.run(tf.global_variables_initializer())
    print("starting training")
    for epoch in range(epochs):
        train_accuracy = 0
        for batch in range(0, int(len(data.train.labels)/batch_size)):
            x_batch, y_true_batch = data.train.next_batch(batch_size)
            print(x_batch[1])
            print(y_true_batch.shape)
            feed_dict_train = {x: x_batch, y_true: y_true_batch}

            sess.run(optimizer, feed_dict=feed_dict_train)
            train_accuracy += sess.run(accuracy, feed_dict=feed_dict_train)
        train_accuracy /= int(len(data.train.labels)/batch_size)
        vali_accuracy = sess.run(accuracy, feed_dict={x: data.validation.images, y_true: data.validation.labels})

        print("Epoch "+str(epoch+1)+" completed ")
        print("\tAccuracy:")
        print ("\t- Training Accuracy:\t{}".format(train_accuracy))
        print ("\t- Validation Accuracy:\t{}".format(vali_accuracy))
