import tensorflow as tf
import numpy as np
import read_data
from sklearn.metrics import roc_auc_score, accuracy_score
sess = tf.InteractiveSession()

#parameters
initial_learning_rate = 0.001
epochs = 30

#number of features for hidden layer 1
hidden_1 = 225
hidden_2 = 225

n_input = 225
n_labels = 51

n_output_action = 34
n_output_loc = 13
n_output_phone = 4

regulariser_rate = 0.1

# graph inputs
x =  tf.compat.v1.placeholder("float", [None, n_input+n_labels], name="x")
y_action =  tf.compat.v1.placeholder("float", [None, n_output_action], name="y_action")
y_loc =  tf.compat.v1.placeholder("float", [None, n_output_loc], name="y_location")
y_phone =  tf.compat.v1.placeholder("float", [None, n_output_phone], name="y_phone")

# initialize weights for layer 1
weight_1 = tf.Variable(tf.random.normal([n_input+n_labels, hidden_1]))
bias_1 = tf.Variable(tf.random.normal([hidden_1]))

# initialize weights for layer 2
weight_2 = tf.Variable(tf.random.normal([hidden_1, hidden_2]))
bias_2 = tf.Variable(tf.random.normal([hidden_2]))

#initialize output weights for actions
weight_out_action = tf.Variable(tf.random.normal([hidden_2, n_output_action]))
bias_out_action = tf.Variable(tf.random.normal([n_output_action]))

#initialize output weights for location
weight_out_loc = tf.Variable(tf.random.normal([hidden_2, n_output_loc]))
bias_out_loc = tf.Variable(tf.random.normal([n_output_loc]))

#initialize output weights for phone
weight_out_phone = tf.Variable(tf.random.normal([hidden_2, n_output_phone]))
bias_out_phone = tf.Variable(tf.random.normal([n_output_phone]))

# layer 1
layer_1 = tf.nn.relu(tf.add(tf.matmul(x, weight_1), bias_1))
# haven't added any dropout yet

# layer 2
layer_2 = tf.nn.relu(tf.add(tf.matmul(layer_1, weight_2), bias_2))

# output layer
predicted_y_action = tf.sigmoid(tf.add(tf.matmul(layer_2, weight_out_action), bias_out_action))
predicted_y_loc = tf.sigmoid(tf.add(tf.matmul(layer_2, weight_out_loc), bias_out_loc))
predicted_y_phone = tf.sigmoid(tf.add(tf.matmul(layer_2, weight_out_phone),bias_out_phone))

# loss function for changing weights
loss = tf.reduce_mean(tf.nn.softmax_cross_entropy_with_logits_v2(logits=predicted_y_action, labels=y_action)) \
        + tf.reduce_mean(tf.nn.softmax_cross_entropy_with_logits_v2(logits=predicted_y_loc, labels=y_loc)) \
        + tf.reduce_mean(tf.nn.softmax_cross_entropy_with_logits_v2(logits=predicted_y_phone, labels=y_phone)) \
        + regulariser_rate*(tf.reduce_sum(tf.square(bias_1))+ tf.reduce_sum(tf.square(bias_2)))


# define learning rate
learning_rate = tf.compat.v1.train.exponential_decay(initial_learning_rate, 0, 5, 0.85, staircase=False)
# define optimizer
optimizer = tf.compat.v1.train.AdamOptimizer(learning_rate).minimize(loss, var_list=[weight_1, weight_2, weight_out_action, weight_out_loc, weight_out_phone, bias_1, bias_2, bias_out_action, bias_out_loc, bias_out_phone])

# Accuracy metric
correct_pred_action = tf.equal(tf.argmax(y_action, 1), tf.argmax(predicted_y_action,1))
correct_pred_loc = tf.equal(tf.argmax(y_loc, 1), tf.argmax(predicted_y_loc,1))
correct_pred_phone = tf.equal(tf.argmax(y_phone, 1), tf.argmax(predicted_y_phone, 1))
accuracy_action = tf.reduce_mean(tf.cast(correct_pred_action, tf.float32))
accuracy_loc = tf.reduce_mean(tf.cast(correct_pred_loc, tf.float32))
accuracy_phone = tf.reduce_mean(tf.cast(correct_pred_phone, tf.float32))

accuracy_overall = (accuracy_action + accuracy_loc + accuracy_phone)/3

####
# Training
#batch_size = 
training_accuracy_action = []
training_accuracy_loc = []
training_accuracy_phone = []
training_accuracy_overall = []
training_loss = []
testing_accuracy_overall = []
testing_accuracy_action = []
testing_accuracy_loc = []
testing_accuracy_phone = []

(data_in, data_out, missing_data, timestamps, featureNames, labelNames) = read_data.read_user_data('00EABED2-271D-49D8-B599-1D4A09240601.features_labels.csv')

all_data = np.concatenate([data_in, missing_data], axis=1)
(action_labels,action_out) = read_data.seperate_output_actions(labelNames, data_out)
(loc_labels,loc_out) = read_data.seperate_output_loc(labelNames, data_out)
(phone_labels,phone_out) = read_data.seperate_output_phone(labelNames, data_out)

training_num = int(len(data_in)*0.3)

input_train = all_data[:training_num]
output_train_action = action_out[:training_num]
output_train_loc = loc_out[:training_num]
output_train_phone = phone_out[:training_num]
input_test = all_data[training_num:]
output_test_action = action_out[training_num:]
output_test_loc = loc_out[training_num:]
output_test_phone = phone_out[training_num:]

sess.run(tf.global_variables_initializer())
print("Start training")
for epoch in range(epochs):
    # double check this. I think this is shuffling the training data
    arr = np.arange(input_train.shape[0])
    np.random.shuffle(arr)
    #for index in range(0, input_train.shape[0], batchsize)
    for index in range(0, input_train.shape[0]):
        # arr[index:index+batchsize]
        sess.run(optimizer, {x: np.reshape(input_train[arr[index]], [1,-1]), 
                             y_action: np.reshape(output_train_action[arr[index]], [1,-1]),
                             y_loc: np.reshape(output_train_loc[arr[index]], [1,-1]),
                             y_phone: np.reshape(output_train_phone[arr[index]], [1,-1])})   
        # sess.run(optimizer, {x: np.reshape(input_train[arr[index]], [1,-1]), 
        #                      y_loc: np.reshape(output_train_loc[arr[index]], [1,-1])})
        # sess.run(optimizer, {x: np.reshape(input_train[arr[index]], [1,-1]), 
        #                      y_phone: np.reshape(output_train_phone[arr[index]], [1,-1])})

    training_accuracy_action.append(sess.run(accuracy_action, feed_dict={x:input_train, 
                                                           y_action:output_train_action}))
    training_accuracy_loc.append(sess.run(accuracy_loc, feed_dict={x:input_train, 
                                                           y_loc:output_train_loc}))
    training_accuracy_phone.append(sess.run(accuracy_phone, feed_dict={x:input_train, 
                                                           y_phone:output_train_phone}))
    training_accuracy_overall.append(sess.run(accuracy_overall, feed_dict={x:input_train,
                                                           y_phone:output_train_phone,
                                                           y_loc:output_train_loc,
                                                           y_action:output_train_action}))

    training_loss.append(sess.run(loss, feed_dict={x: input_train,
                                         y_action: output_train_action,
                                         y_loc: output_train_loc,
                                         y_phone: output_train_phone}))

    testing_accuracy_action.append(accuracy_score(output_test_action.argmax(1),
                                            sess.run(predicted_y_action, {x: input_test}).argmax(1)))
    testing_accuracy_loc.append(accuracy_score(output_test_loc.argmax(1),
                                            sess.run(predicted_y_loc, {x: input_test}).argmax(1)))
    testing_accuracy_phone.append(accuracy_score(output_test_phone.argmax(1),
                                            sess.run(predicted_y_phone, {x: input_test}).argmax(1)))

    testing_accuracy_overall.append((testing_accuracy_action[epoch]+testing_accuracy_loc[epoch]+testing_accuracy_phone[epoch])/3)
                                        
    print("Epoch:{0}, Train loss: {1:.2f} Train acc: {2:.3f} Test acc: {3:.3f}".format(epoch,
                                                                                        training_loss[epoch],
                                                                                        training_accuracy_overall[epoch],
                                                                                        testing_accuracy_overall[epoch]))
    print("          for action           Train acc: {0:.3f} Test acc: {1:.3f}".format( training_accuracy_action[epoch],
                                                                                        testing_accuracy_action[epoch]))
    print("          for location         Train acc: {0:.3f} Test acc: {1:.3f}".format(training_accuracy_loc[epoch],
                                                                                        testing_accuracy_loc[epoch]))
    print("          for phone            Train acc: {0:.3f} Test acc: {1:.3f}".format(training_accuracy_phone[epoch],
                                                                                        testing_accuracy_phone[epoch]))

print("Training complete")

