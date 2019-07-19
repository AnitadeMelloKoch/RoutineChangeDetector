import tensorflow as tf
import numpy as np
#import get_data as get
import os

from tensorflow.examples.tutorials.mnist import input_data
mnist=input_data.read_data_sets("/tmp/MNIST_data/",one_hot=True)

# Parameters
num_x = 784
num_hidden_1 = 392
num_hidden_2 = 196
num_hidden_3 = 392
num_y = 784
epochs = 5
batch_size = 150

num_test_images = 10

initial_learning_rate = 0.01

x = tf.placeholder("float", [None, num_x])

weight_1 = tf.Variable(tf.random.normal([num_x, num_hidden_1]), name="weight_1")
bias_1 = tf.Variable(tf.random.normal([num_hidden_1]), name="bias_1")

weight_2 = tf.Variable(tf.random.normal([num_hidden_1, num_hidden_2]), name="weight_2")
bias_2 = tf.Variable(tf.random.normal([num_hidden_2]), name="bias_2")

weight_3 = tf.Variable(tf.random.normal([num_hidden_2, num_hidden_3]), name="weight_3")
bias_3 = tf.Variable(tf.random.normal([num_hidden_3]), name="bias_3")

weight_out = tf.Variable(tf.random.normal([num_hidden_3, num_y]), name="weight_4")
bias_out = tf.Variable(tf.random.normal([num_y]), name="bias_out")

layer_1 = tf.nn.relu(tf.add(tf.matmul(x, weight_1), bias_1))

layer_2 = tf.nn.relu(tf.add(tf.matmul(layer_1, weight_2), bias_2))

layer_3 = tf.nn.relu(tf.add(tf.matmul(layer_2, weight_3), bias_3))

layer_out = tf.nn.sigmoid(tf.add(tf.matmul(layer_3, weight_out), bias_out))

loss = tf.reduce_mean(tf.square(layer_out - x))

optimizer = tf.train.AdamOptimizer(initial_learning_rate)
train = optimizer.minimize(loss)

init = tf.global_variables_initializer()

sess = tf.Session()
sess.run(init)

for epoch in range(epochs):

    num_batches=mnist.train.num_examples//batch_size
    for iteration in range(num_batches):
        x_batch, y_batch = mnist.train.next_batch(batch_size)
        sess.run(train, feed_dict={x:x_batch})

    train_loss = loss.eval(session=sess, feed_dict={x:x_batch})
    print("epoch {} loss {}".format(epoch, train_loss))
