import tensorflow as tf
import numpy as np
from sklearn.metrics import roc_auc_score, accuracy_score
sess = tf.InteractiveSession()

#parameters
initial_learning_rate = 0.001
epochs = 20

#number of features for hidden layer 1
hidden_1 = 225

hidden_2 = 225

n_input = 225
n_labels = 51
n_output = 51

regulariser_rate = 0.1

# graph inputs
x = tf.placeholder("float", [None, n_input], name="x")
y = tf.placeholder("float", [None, n_labels], name="y")

# initialize weights for layer 1
weight_1 = tf.Variable(tf.random_normal([n_input, hidden_1], mean=0.0, stddev=1.0, dtype=tf.float32, seed=None))
bias_1 = tf.Variable(tf.random_normal([hidden_1], mean=0.0,stddev=1.0, dtype=tf.float32, seed=None))

# initialize weights for layer 2
weight_2 = tf.Variable(tf.random_normal([n_input, hidden_2], mean=0.0, stddev=1.0, dtype=tf.float32, seed=None))
bias_2 = tf.Variable(tf.random_normal([hidden_2], mean=0.0,stddev=1.0, dtype=tf.float32, seed=None))

# initialize output weights
weight_out = tf.Variable(tf.random_normal([n_input, n_output], mean=0.0, stddev=1.0, dtype=tf.float32, seed=None))
bias_out = tf.Variable(tf.random_normal([n_output], mean=0.0,stddev=1.0, dtype=tf.float32, seed=None))

# layer 1
layer_1 = tf.nn.relu(tf.add(tf.matmul(x, weight_1), bias_1))
# haven't added any dropout yet

# layer 2
layer_2 = tf.nn.relu(tf.add(tf.matmul(layer_1, weight_2), bias_2))

# output layer
predicted_y = tf.sigmoid(tf.add(tf.matmul(layer_2, weight_out), bias_out))

# loss function for changing weights
loss = tf.reduce_mean(tf.nn.softmax_cross_entropy_with_logits_v2(logits=predicted_y, labels=input_y)) + regulariser_rate*(tf.reduce_sum(tf.square(bias_1))+ tf.reduce_sum(tf.square(bias_2)))

# define learning rate
learning_rate = tf.train.exponential_decay(initial_learning_rate, 0, 5, 0.85, staircase=False)
# define optimizer
optimizer = tf.train.AdamOptimizer(learning_rate).minimize(loss, var_list=[weight_1, weight_2, weight_out, bias_1, bias_2, bias_out])

# Accuracy metric
correct_pred = tf.equal(tf.argmax(y, 1), tf.argmax(predicted_y,1))
accuracy = tf.reduce_mean(tf.cast(correct_pred, tf.float32))

####
# Training
#batch_size = 
training_accuracy = []
training_loss = []
testing_accuracy = []

# Load in actual data (use one_hot encoding)
# input_train = 
# output_train = 
# input_test = 
# output_test =

sess.run(tf.global_variables_initializer())
for epoch in range(epochs):
    # double check this. I think this is shuffling the training data
    arr = np.arange(input_train.shape[0])
    np.random_shuffle(arr)
    #for index in range(0, input_train.shape[0], batchsize)
    for index in range(0, input_train.shape[0]):
        sess.run(optimizer, {x: input_train[arr[index]],
                             y: output_train[arr[index]]})   # arr[index:index+batchsize]

    training_accuracy.append(sess.run(accuracy, feed_dict={x:input_train, 
                                                           y:output_train}))
    training_loss.append(sess.run(loss, {x: input_train
                                         y: output_train}))

    testing_accuracy.append(accuracy_score(output.argmax(1),
                                            sess.run(predicted_y, {x: input_test}).argmax(1)))
                                        
    print("Epoch:{0}, Train loss: {1:.2f} Train acc: {2:.3f} Test acc: {3:.3f}".format(epoch,
                                                                                        training_loss[epoch],
                                                                                        training_accuracy[epoch],
                                                                                        testing_accuracy[epoch]))

print("Training complete")

