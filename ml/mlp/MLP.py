import tensorflow as tf
import numpy as np
import get_data as get
import os
from sklearn.metrics import roc_auc_score, accuracy_score, mean_squared_error, multilabel_confusion_matrix
from sklearn.utils import shuffle
import argparse
import matplotlib.pyplot as plt
from sklearn.utils.multiclass import unique_labels

def main(training_dir, checkpointdir, training_files, train_percent, initial_learning_rate, epochs, batch_size, weighting_action_1, weighting_action_2, weighting_loc, weighting_phone, hidden_1, hidden_2, hidden_3, hidden_4, hidden_5,  hidden_6, hidden_7, hidden_8, hidden_9, hidden_10, hidden_11, hidden_12, action_2_layer_1, loc_layer_1, n_input, n_labels, n_output_action_1, n_output_action_2, n_output_loc, n_output_phone, regulariser_rate):

        f = open("output.log", "w+")

        sess = tf.compat.v1.InteractiveSession()
        
        # graph inputs
        x =  tf.compat.v1.placeholder("float", [None, n_input], name="x")
        y_action_1 =  tf.compat.v1.placeholder("float", [None, n_output_action_1], name="y_action_1")
        y_action_2 = tf.compat.v1.placeholder("float", [None, n_output_action_2], name="y_action_2")
        y_loc =  tf.compat.v1.placeholder("float", [None, n_output_loc], name="y_location")
        y_phone =  tf.compat.v1.placeholder("float", [None, n_output_phone], name="y_phone")

        # initialize weights for layer 1
        weight_1 = tf.Variable(tf.random.normal([n_input, hidden_1]), name="weight_1")
        bias_1 = tf.Variable(tf.random.normal([hidden_1]), name="weight_1_bias")

        # initialize weights for layer 2
        weight_2 = tf.Variable(tf.random.normal([hidden_1, hidden_2]), name="weight_2")
        bias_2 = tf.Variable(tf.random.normal([hidden_2]), name="weight_2_bias")

        #initialize weights for layer 3
        weight_3 = tf.Variable(tf.random.normal([hidden_2, hidden_3]), name="weight_3")
        bias_3 = tf.Variable(tf.random.normal([hidden_3]), name="weight_3_bias")

        #initialize weights for layer 4
        weight_4 = tf.Variable(tf.random.normal([hidden_3, hidden_4]), name="weight_4")
        bias_4 = tf.Variable(tf.random.normal([hidden_4]), name="weight_4_bias")

        #initialize weights for layer 5
        weight_5 = tf.Variable(tf.random.normal([hidden_4, hidden_5]), name="weight_5")
        bias_5 = tf.Variable(tf.random.normal([hidden_5]), name="weight_5_bias")

        # initialize weights for layer 6
        weight_6 = tf.Variable(tf.random.normal([hidden_5, hidden_6]), name="weight_6")
        bias_6 = tf.Variable(tf.random.normal([hidden_6]), name="weight_6_bias")

        # initialize weights for layer 7
        weight_7 = tf.Variable(tf.random.normal([hidden_6, hidden_7]), name="weight_7")
        bias_7 = tf.Variable(tf.random.normal([hidden_7]), name="weight_7_bias")

        #initialize weights for layer 8
        weight_8 = tf.Variable(tf.random.normal([hidden_7, hidden_8]), name="weight_8")
        bias_8 = tf.Variable(tf.random.normal([hidden_8]), name="weight_8_bias")

        #initialize weights for layer 9
        weight_9 = tf.Variable(tf.random.normal([hidden_8, hidden_9]), name="weight_9")
        bias_9 = tf.Variable(tf.random.normal([hidden_9]), name="weight_9_bias")

        #initialize weights for layer 10
        weight_10 = tf.Variable(tf.random.normal([hidden_9, hidden_10]), name="weight_10")
        bias_10 = tf.Variable(tf.random.normal([hidden_10]), name="weight_10_bias")

        #initialize weights for layer 11
        weight_11 = tf.Variable(tf.random.normal([hidden_10, hidden_11]), name="weight_11")
        bias_11 = tf.Variable(tf.random.normal([hidden_11]), name="weight_11_bias")

        #initialize weights for layer 12
        weight_12 = tf.Variable(tf.random.normal([hidden_11, hidden_12]), name="weight_12")
        bias_12 = tf.Variable(tf.random.normal([hidden_12]), name="weight_12_bias")

        #initialize weights for action 2 layer 1
        weight_action_2_layer_1 = tf.Variable(tf.random.normal([hidden_12, action_2_layer_1]), name="weight_action_2_layer_1")
        bias_action_2_layer_1 = tf.Variable(tf.random.normal([action_2_layer_1]), name="weight_action_2_layer_1_bias")

        #initialize weights for location layer 1
        weight_loc_layer_1 = tf.Variable(tf.random.normal([hidden_12, loc_layer_1]), name="loc_layer_1")
        bias_loc_layer_1 = tf.Variable(tf.random.normal([loc_layer_1]), name="loc_layer_1_bias")

        #initialize output weights for actions
        weight_out_action_1 = tf.Variable(tf.random.normal([hidden_12, n_output_action_1]), name="weight_out_action_1")
        bias_out_action_1 = tf.Variable(tf.random.normal([n_output_action_1]), name="weight_out_action_1_bias")

        weight_out_action_2 = tf.Variable(tf.random.normal([action_2_layer_1, n_output_action_2]), name="weight_out_action_2")
        bias_out_action_2 = tf.Variable(tf.random.normal([n_output_action_2]), name="weight_out_action_2_bias")

        #initialize output weights for location
        weight_out_loc = tf.Variable(tf.random.normal([loc_layer_1, n_output_loc]), name="weight_out_loc")
        bias_out_loc = tf.Variable(tf.random.normal([n_output_loc]), name="weight_out_loc_bias")

        #initialize output weights for phone
        weight_out_phone = tf.Variable(tf.random.normal([hidden_12, n_output_phone]), name="weight_out_phone")
        bias_out_phone = tf.Variable(tf.random.normal([n_output_phone]), name="weight_out_phone_bias")

        # layer 1
        layer_1 = tf.nn.sigmoid(tf.add(tf.matmul(x, weight_1), bias_1))
        # haven't added any dropout yet

        # layer 2
        layer_2 = tf.nn.sigmoid(tf.add(tf.matmul(layer_1, weight_2), bias_2))

        # layer 3
        layer_3 = tf.nn.sigmoid(tf.add(tf.matmul(layer_2, weight_3), bias_3))

        # layer 4
        layer_4 = tf.nn.sigmoid(tf.add(tf.matmul(layer_3, weight_4), bias_4))

        # layer 5
        layer_5 = tf.nn.sigmoid(tf.add(tf.matmul(layer_4, weight_5), bias_5))

        # layer 6
        layer_6 = tf.nn.sigmoid(tf.add(tf.matmul(layer_5, weight_6), bias_6))
        # haven't added any dropout yet

        # layer 7
        layer_7 = tf.nn.sigmoid(tf.add(tf.matmul(layer_6, weight_7), bias_7))

        # layer 8
        layer_8 = tf.nn.sigmoid(tf.add(tf.matmul(layer_7, weight_8), bias_8))

        # layer 9
        layer_9 = tf.nn.sigmoid(tf.add(tf.matmul(layer_8, weight_9), bias_9))

        # layer 10
        layer_10 = tf.nn.sigmoid(tf.add(tf.matmul(layer_9, weight_10), bias_10))

        # layer 11
        layer_11 = tf.nn.sigmoid(tf.add(tf.matmul(layer_10, weight_11), bias_11))

        # layer 12
        layer_12 = tf.nn.sigmoid(tf.add(tf.matmul(layer_11, weight_12), bias_12))

        # action 1 layer 1
        layer_action_2_layer_1 = tf.nn.sigmoid(tf.add(tf.matmul(layer_12, weight_action_2_layer_1), bias_action_2_layer_1))

        # location layer 1
        layer_location_layer_1 = tf.nn.sigmoid(tf.add(tf.matmul(layer_12, weight_loc_layer_1), bias_loc_layer_1))

        # output layer
        predicted_y_action_1 = tf.sigmoid(tf.add(tf.matmul(layer_12, weight_out_action_1), bias_out_action_1), name="predict_action_1")
        predicted_y_action_2 = tf.sigmoid(tf.add(tf.matmul(layer_action_2_layer_1, weight_out_action_2), bias_out_action_2), name="predict_action_2")
        predicted_y_loc = tf.sigmoid(tf.add(tf.matmul(layer_location_layer_1, weight_out_loc), bias_out_loc), name="predict_loc")
        predicted_y_phone = tf.sigmoid(tf.add(tf.matmul(layer_12, weight_out_phone),bias_out_phone), name="predict_phone")

        # loss function for changing weights
        loss = weighting_action_1*(tf.reduce_mean(tf.nn.softmax_cross_entropy_with_logits_v2(logits=predicted_y_action_1, labels=y_action_1))) \
                + weighting_action_2*(tf.reduce_mean(tf.nn.softmax_cross_entropy_with_logits_v2(logits=predicted_y_action_2, labels=y_action_2))) \
                + weighting_loc*(tf.reduce_mean(tf.nn.softmax_cross_entropy_with_logits_v2(logits=predicted_y_loc, labels=y_loc))) \
                + weighting_phone*(tf.reduce_mean(tf.nn.softmax_cross_entropy_with_logits_v2(logits=predicted_y_phone, labels=y_phone))) \
                + regulariser_rate*(tf.reduce_sum(tf.square(bias_1)) + tf.reduce_sum(tf.square(bias_2)) + tf.reduce_sum(tf.square(bias_3))
                + tf.reduce_sum(tf.square(bias_4)) + tf.reduce_sum(tf.square(bias_5)))


        # define learning rate
        learning_rate = tf.compat.v1.train.exponential_decay(initial_learning_rate, 0, 5, 0.85, staircase=True)
        # learning_rate = 1
        # define optimizer
        optimizer = tf.compat.v1.train.AdamOptimizer(learning_rate).minimize(loss, var_list=[weight_1, 
                                                                                weight_2, 
                                                                                weight_3,
                                                                                weight_4,
                                                                                weight_5,
                                                                                weight_6, 
                                                                                weight_7, 
                                                                                weight_8,
                                                                                weight_9,
                                                                                weight_10,
                                                                                weight_11,
                                                                                weight_12,
                                                                                weight_action_2_layer_1,
                                                                                weight_loc_layer_1,
                                                                                weight_out_action_1,
                                                                                weight_out_action_2, 
                                                                                weight_out_loc, 
                                                                                weight_out_phone, 
                                                                                bias_1, 
                                                                                bias_2, 
                                                                                bias_3,
                                                                                bias_4,
                                                                                bias_5,
                                                                                bias_6, 
                                                                                bias_7, 
                                                                                bias_8,
                                                                                bias_9,
                                                                                bias_10,
                                                                                bias_11,
                                                                                bias_12,
                                                                                bias_action_2_layer_1,
                                                                                bias_loc_layer_1,
                                                                                bias_out_action_1, 
                                                                                bias_out_action_2,
                                                                                bias_out_loc, 
                                                                                bias_out_phone])

        # Accuracy metric
        correct_pred_action_1 = tf.equal(tf.argmax(y_action_1, 1), tf.argmax(predicted_y_action_1,1))
        correct_pred_action_2 = tf.equal(tf.argmax(y_action_2, 1), tf.argmax(predicted_y_action_2,1))
        correct_pred_loc = tf.equal(tf.argmax(y_loc, 1), tf.argmax(predicted_y_loc,1))
        correct_pred_phone = tf.equal(tf.argmax(y_phone, 1), tf.argmax(predicted_y_phone, 1))
        accuracy_action_1 = tf.reduce_mean(tf.cast(correct_pred_action_1, tf.float32))
        accuracy_action_2 = tf.reduce_mean(tf.cast(correct_pred_action_2, tf.float32))
        accuracy_loc = tf.reduce_mean(tf.cast(correct_pred_loc, tf.float32))
        accuracy_phone = tf.reduce_mean(tf.cast(correct_pred_phone, tf.float32))

        accuracy_overall = (accuracy_action_1 + accuracy_action_2 + accuracy_loc + accuracy_phone)/4

        ####
        # Training
        training_accuracy_action_1 = []
        training_accuracy_action_2 = []
        training_accuracy_loc = []
        training_accuracy_phone = []
        training_accuracy_overall = []
        training_loss = []
        testing_accuracy_overall = []
        testing_accuracy_action_1 = []
        testing_accuracy_action_2 = []
        testing_accuracy_loc = []
        testing_accuracy_phone = []
        rmse_action_1_train = []
        rmse_action_2_train = []
        rmse_loc_train = []
        rmse_phone_train = []
        rmse_action_1_test = []
        rmse_action_2_test = []
        rmse_loc_test = []
        rmse_phone_test = []
        saver = tf.compat.v1.train.Saver(max_to_keep=10)

        (data_in, action_data_1, action_data_2, loc_data, phone_data) = get.get_formatted_data(training_dir, training_files)
        # action_data[0] etc gives labels for the set

        action_out_1 = action_data_1[1]
        action_out_2 = action_data_2[1]
        loc_out = loc_data[1]
        phone_out = phone_data[1]

        ### TRY SHUFFLE DATA BEFORE TRAINING SPLIT
        data_in, action_out_1, action_out_2, loc_out, phone_out = shuffle(np.array(data_in), np.array(action_out_1), np.array(action_out_2), np.array(loc_out), np.array(phone_out))     

        training_num = int(len(data_in)*train_percent)

        input_train = data_in[:training_num]
        output_train_action_1 = action_out_1[:training_num]
        output_train_action_2 = action_out_2[:training_num]
        output_train_loc = loc_out[:training_num]
        output_train_phone = phone_out[:training_num]
        input_test = data_in[training_num:]
        output_test_action_1 = action_out_1[training_num:]
        output_test_action_2 = action_out_2[training_num:]
        output_test_loc = loc_out[training_num:]
        output_test_phone = phone_out[training_num:]

        sess.run(tf.compat.v1.global_variables_initializer())
        f.write("Starting training\n \n")
        print("Start training")
        for epoch in range(epochs):
                arr = np.arange(input_train.shape[0])
                np.random.shuffle(arr)
                for index in range(0, input_train.shape[0], batch_size):
                        sess.run(optimizer, {   x: input_train[arr[index:index+batch_size]], 
                                                y_action_1: output_train_action_1[arr[index:index+batch_size]],
                                                y_action_2: output_train_action_2[arr[index:index+batch_size]],
                                                y_loc: output_train_loc[arr[index:index+batch_size]],
                                                y_phone: output_train_phone[arr[index:index+batch_size]]})   

                saver.save(sess, (checkpointdir), global_step=2000)

                training_accuracy_action_1.append(sess.run(accuracy_action_1, feed_dict={x:input_train, 
                                                                                     y_action_1:output_train_action_1}))
                training_accuracy_action_2.append(sess.run(accuracy_action_2, feed_dict={x:input_train,
                                                                                        y_action_2:output_train_action_2}))
                training_accuracy_loc.append(sess.run(accuracy_loc, feed_dict={x:input_train, 
                                                                               y_loc:output_train_loc}))
                training_accuracy_phone.append(sess.run(accuracy_phone, feed_dict={x:input_train, 
                                                                                   y_phone:output_train_phone}))
                training_accuracy_overall.append(sess.run(accuracy_overall, feed_dict={x:input_train,
                                                                                       y_phone:output_train_phone,
                                                                                       y_loc:output_train_loc,
                                                                                       y_action_1:output_train_action_1,
                                                                                       y_action_2:output_train_action_2}))

                rmse_action_1_train.append(mean_squared_error(output_train_action_1,sess.run(predicted_y_action_1, feed_dict={x:input_train})))
                rmse_action_2_train.append(mean_squared_error(output_train_action_2,sess.run(predicted_y_action_2, feed_dict={x:input_train})))
                rmse_loc_train.append(mean_squared_error(output_train_loc,sess.run(predicted_y_loc, feed_dict={x:input_train})))
                rmse_phone_train.append(mean_squared_error(output_train_phone,sess.run(predicted_y_phone, feed_dict={x:input_train})))

                rmse_action_1_test.append(mean_squared_error(output_test_action_1,sess.run(predicted_y_action_1, feed_dict={x:input_test})))
                rmse_action_2_test.append(mean_squared_error(output_test_action_2,sess.run(predicted_y_action_2, feed_dict={x:input_test})))
                rmse_loc_test.append(mean_squared_error(output_test_loc,sess.run(predicted_y_loc, feed_dict={x:input_test})))
                rmse_phone_test.append(mean_squared_error(output_test_phone,sess.run(predicted_y_phone, feed_dict={x:input_test})))

                training_loss.append(sess.run(loss, feed_dict={x: input_train,
                                                               y_action_1: output_train_action_1,
                                                               y_action_2: output_train_action_2,
                                                               y_loc: output_train_loc,
                                                               y_phone: output_train_phone}))

                testing_accuracy_action_1.append(accuracy_score(output_test_action_1.argmax(1),
                                                    sess.run(predicted_y_action_1, {x: input_test}).argmax(1)))
                testing_accuracy_action_2.append(accuracy_score(output_test_action_2.argmax(1),
                                                    sess.run(predicted_y_action_2, {x: input_test}).argmax(1)))
                testing_accuracy_loc.append(accuracy_score(output_test_loc.argmax(1),
                                                    sess.run(predicted_y_loc, {x: input_test}).argmax(1)))
                testing_accuracy_phone.append(accuracy_score(output_test_phone.argmax(1),
                                                    sess.run(predicted_y_phone, {x: input_test}).argmax(1)))
                testing_accuracy_overall.append((testing_accuracy_action_1[epoch]+testing_accuracy_action_2[epoch]+testing_accuracy_loc[epoch]+testing_accuracy_phone[epoch])/4)
                                        
                print("Epoch:{0}, Train loss: {1:.2f} Train acc: {2:.3f} Test acc: {3:.3f}".format(epoch,
                                                                                                   training_loss[epoch],
                                                                                                   training_accuracy_overall[epoch],
                                                                                                   testing_accuracy_overall[epoch]))
                print("          for action 1         Train acc: {0:.3f} Test acc: {1:.3f} Train RMSE {2:.3f} Test RMSE {3:.3f}".format( training_accuracy_action_1[epoch],
                                                                                                    testing_accuracy_action_1[epoch],
                                                                                                    rmse_action_1_train[epoch],
                                                                                                    rmse_action_1_test[epoch]))
                print("          for action 2         Train acc: {0:.3f} Test acc: {1:.3f} Train RMSE {2:.3f} Test RMSE {3:.3f}".format( training_accuracy_action_2[epoch],
                                                                                                    testing_accuracy_action_2[epoch],
                                                                                                    rmse_action_2_train[epoch],
                                                                                                    rmse_action_2_test[epoch]))
                print("          for location         Train acc: {0:.3f} Test acc: {1:.3f} Train RMSE {2:.3f} Test RMSE {3:.3f}".format(training_accuracy_loc[epoch],
                                                                                                   testing_accuracy_loc[epoch],
                                                                                                   rmse_loc_train[epoch],
                                                                                                   rmse_loc_test[epoch]))
                print("          for phone            Train acc: {0:.3f} Test acc: {1:.3f} Train RMSE {2:.3f} Test RMSE {3:.3f}".format(training_accuracy_phone[epoch],
                                                                                                   testing_accuracy_phone[epoch],
                                                                                                   rmse_phone_train[epoch],
                                                                                                   rmse_phone_test[epoch]))
                
                f.write("Epoch:{0}, Train loss: {1:.2f} Train acc: {2:.3f} Test acc: {3:.3f}\n".format(epoch,
                                                                                                   training_loss[epoch],
                                                                                                   training_accuracy_overall[epoch],
                                                                                                   testing_accuracy_overall[epoch]))
                f.write("          for action 1         Train acc: {0:.3f} Test acc: {1:.3f} Train RMSE {2:.3f} Test RMSE {3:.3f}\n".format( training_accuracy_action_1[epoch],
                                                                                                    testing_accuracy_action_1[epoch],
                                                                                                    rmse_action_1_train[epoch],
                                                                                                    rmse_action_1_test[epoch]))
                f.write("          for action 2         Train acc: {0:.3f} Test acc: {1:.3f} Train RMSE {2:.3f} Test RMSE {3:.3f}\n".format( training_accuracy_action_2[epoch],
                                                                                                    testing_accuracy_action_2[epoch],
                                                                                                    rmse_action_2_train[epoch],
                                                                                                    rmse_action_2_test[epoch]))
                f.write("          for location         Train acc: {0:.3f} Test acc: {1:.3f} Train RMSE {2:.3f} Test RMSE {3:.3f}\n".format(training_accuracy_loc[epoch],
                                                                                                   testing_accuracy_loc[epoch],
                                                                                                   rmse_loc_train[epoch],
                                                                                                   rmse_loc_test[epoch]))
                f.write("          for phone            Train acc: {0:.3f} Test acc: {1:.3f} Train RMSE {2:.3f} Test RMSE {3:.3f}\n".format(training_accuracy_phone[epoch],
                                                                                                   testing_accuracy_phone[epoch],
                                                                                                   rmse_phone_train[epoch],
                                                                                                   rmse_phone_test[epoch]))

        tf.io.write_graph(tf.compat.v1.get_default_graph(), checkpointdir, 'model.pb', as_text=False)
        
        iterations = list(range(epochs))
        plt.figure()
        plt.plot(iterations, training_accuracy_overall, label='Overall_train')
        plt.plot(iterations, testing_accuracy_overall, label='Overall_test')
        plt.ylabel('Accuracy')
        plt.xlabel('iterations')
        plt.legend()
        plt.savefig('graph/overall_accuracy.png')

        plt.figure()
        plt.plot(iterations, training_accuracy_action_1, label='action_train_1')
        plt.plot(iterations, testing_accuracy_action_1, label='action_test_1')
        plt.ylabel('Accuracy')
        plt.xlabel('iterations')
        plt.legend()
        plt.savefig('graph/action_1_accuracy.png')

        plt.figure()
        plt.plot(iterations, training_accuracy_action_2, label='action_train_2')
        plt.plot(iterations, testing_accuracy_action_2, label='action_test_2')
        plt.ylabel('Accuracy')
        plt.xlabel('iterations')
        plt.legend()
        plt.savefig('graph/action_2_accuracy.png')

        plt.figure()
        plt.plot(iterations, training_accuracy_loc, label='loc_train')
        plt.plot(iterations, testing_accuracy_loc, label='loc_test')
        plt.ylabel('Accuracy')
        plt.xlabel('iterations')
        plt.legend()
        plt.savefig('graph/loc_accuracy.png')

        plt.figure()
        plt.plot(iterations, training_accuracy_phone, label='phone_train')
        plt.plot(iterations, testing_accuracy_phone, label='phone_test')
        plt.ylabel('Accuracy')
        plt.xlabel('iterations')
        plt.legend()
        plt.savefig('graph/phone_accuracy.png')

        plt.figure()
        plt.plot(iterations, rmse_action_1_train, label='action_train_1')
        plt.plot(iterations, rmse_action_1_test, label='action_test_1')
        plt.ylabel('RMSE')
        plt.xlabel('iterations')
        plt.legend()
        plt.savefig('graph/action_1_rmse.png')

        plt.figure()
        plt.plot(iterations, rmse_action_2_train, label='action_train_2')
        plt.plot(iterations, rmse_action_2_test, label='action_test_2')
        plt.ylabel('RMSE')
        plt.xlabel('iterations')
        plt.legend()
        plt.savefig('graph/action_2_rmse.png')

        plt.figure()
        plt.plot(iterations, rmse_loc_train, label='loc_train')
        plt.plot(iterations, rmse_loc_test, label='loc_test')
        plt.ylabel('RMSE')
        plt.xlabel('iterations')
        plt.legend()
        plt.savefig('graph/loc_rmse.png')

        plt.figure()
        plt.plot(iterations, rmse_phone_train, label='phone_train')
        plt.plot(iterations, rmse_phone_test, label='phone_test')
        plt.ylabel('RMSE')
        plt.xlabel('iterations')
        plt.legend()
        plt.savefig('graph/phone_rmse.png')

        y_predict = sess.run(predicted_y_action_1, {x: input_test})
        y_predict = np.where(y_predict > 0.5, 1, 0)

        cm = multilabel_confusion_matrix(y_predict, output_test_action_1)
        np.savetxt("confucion_action_1.txt", np.reshape(cm,[-1,4]))

        y_predict = sess.run(predicted_y_action_2, {x: input_test})
        y_predict = np.where(y_predict > 0.5, 1, 0)

        cm = multilabel_confusion_matrix(y_predict, output_test_action_2)
        np.savetxt("confucion_action_2.txt", np.reshape(cm,[-1,4]))

        y_predict = sess.run(predicted_y_loc, {x: input_test})
        y_predict = np.where(y_predict > 0.5, 1, 0)

        cm = multilabel_confusion_matrix(y_predict, output_test_loc)
        np.savetxt("confucion_loc.txt", np.reshape(cm,[-1,4]))

        y_predict = sess.run(predicted_y_phone, {x: input_test})
        y_predict = np.where(y_predict > 0.5, 1, 0)

        cm = multilabel_confusion_matrix(y_predict, output_test_phone)
        np.savetxt("confucion_phone.txt", np.reshape(cm,[-1,4]))

        # print(plot_confusion_matrix( output_test_action_1, y_predict, action_data_1[0], title="Action 1 Test set"))

        print("Training complete")
        print("=============================================================")
        print("Final training loss:                     {0:.2f}".format(training_loss[-1]))
        print("Final overall training accuracy:         {0:.3f}".format(training_accuracy_overall[-1]))
        print("Final overall test accuracy:             {0:.3f}".format(testing_accuracy_overall[-1]))
        print("Action 1 training accuracy:              {0:.3f}".format(training_accuracy_action_1[-1]))
        print("Action 1 testing accuracy:               {0:.3f}".format(testing_accuracy_action_1[-1]))
        print("Action 2 training accuracy:              {0:.3f}".format(training_accuracy_action_2[-1]))
        print("Action 2 testing accuracy:               {0:.3f}".format(testing_accuracy_action_2[-1]))
        print("Location training accuracy:              {0:.3f}".format(training_accuracy_loc[-1]))
        print("Location testing accuracy:               {0:.3f}".format(testing_accuracy_loc[-1]))
        print("Phone training accuracy:                 {0:.3f}".format(training_accuracy_phone[-1]))
        print("Phone testing accuracy:                  {0:.3f}".format(testing_accuracy_phone[-1]))

        f.write("Training complete\n")
        f.write("=============================================================\n")
        f.write("Final training loss:                     {0:.2f}\n".format(training_loss[-1]))
        f.write("Final overall training accuracy:         {0:.3f}\n".format(training_accuracy_overall[-1]))
        f.write("Final overall test accuracy:             {0:.3f}\n".format(testing_accuracy_overall[-1]))
        f.write("Action 1 training accuracy:              {0:.3f}\n".format(training_accuracy_action_1[-1]))
        f.write("Action 1 testing accuracy:               {0:.3f}\n".format(testing_accuracy_action_1[-1]))
        f.write("Action 2 training accuracy:              {0:.3f}\n".format(training_accuracy_action_2[-1]))
        f.write("Action 2 testing accuracy:               {0:.3f}\n".format(testing_accuracy_action_2[-1]))
        f.write("Location training accuracy:              {0:.3f}\n".format(training_accuracy_loc[-1]))
        f.write("Location testing accuracy:               {0:.3f}\n".format(testing_accuracy_loc[-1]))
        f.write("Phone training accuracy:                 {0:.3f}\n".format(training_accuracy_phone[-1]))
        f.write("Phone testing accuracy:                  {0:.3f}\n".format(testing_accuracy_phone[-1]))

        f.close()

if __name__ == '__main__':
        AP = argparse.ArgumentParser()
        AP.add_argument("--training_directory", type=str, help="Directory that contains all files for training")
        AP.add_argument("--checkpoint_directory", type=str, help="Directory to output checkpoints into")
        AP.add_argument("--file_number", type=int, default=-1, help="Number of files to be used in training. Pass -1 to train on all files in the directory")
        AP.add_argument("--train_percent", type=float, default=0.7, help="Percentage of data to be used for training")
        AP.add_argument("--initial_learning", type=float, default=0.001, help="Define the initial learning rate for the optimizer")
        AP.add_argument("--epochs", type=int, default=20, help="Number of epochs to train")
        AP.add_argument("--batchsize", type=int, default=200, help="Batch size of training step")
        AP.add_argument("--action_weighting_1", type=float, default=1, help="Weighting of action 1 in loss function")
        AP.add_argument("--action_weighting_2", type=float, default=1, help="Weighting of action 2 in loss function")
        AP.add_argument("--loc_weighting", type=float, default=1, help="Weighting of location in loss function")
        AP.add_argument("--phone_weighting", type=float, default=1, help="Weighting of phone placement in loss function")
        AP.add_argument("--hidden_1", type=int, default=225, help="Number of features extracted by first hidden layer")
        AP.add_argument("--hidden_2", type=int, default=225, help="Number of features extracted by second hidden layer")
        AP.add_argument("--hidden_3", type=int, default=225, help="Number of features extracted by third hidden layer")
        AP.add_argument("--hidden_4", type=int, default=225, help="Number of features extracted by fourth hidden layer")
        AP.add_argument("--hidden_5", type=int, default=225, help="Number of features extracted by fifth hidden layer")
        AP.add_argument("--hidden_6", type=int, default=225, help="Number of features extracted by first hidden layer")
        AP.add_argument("--hidden_7", type=int, default=225, help="Number of features extracted by second hidden layer")
        AP.add_argument("--hidden_8", type=int, default=225, help="Number of features extracted by third hidden layer")
        AP.add_argument("--hidden_9", type=int, default=225, help="Number of features extracted by fourth hidden layer")
        AP.add_argument("--hidden_10", type=int, default=225, help="Number of features extracted by fifth hidden layer")
        AP.add_argument("--hidden_11", type=int, default=225, help="Number of features extracted by fourth hidden layer")
        AP.add_argument("--hidden_12", type=int, default=225, help="Number of features extracted by fifth hidden layer")
        AP.add_argument("--action_2_layer_1", type=int, default=20, help="Number of features extracted by action 2 layer 1")
        AP.add_argument("--loc_layer_1", type=int, default=20, help="Number of features extracted by location layer 1")
        AP.add_argument("--input", type=int, default=225, help="Number of inputs into network")
        AP.add_argument("--add_input", type=int, default=51, help="Number of additional inputs fed into the network")
        AP.add_argument("--actions_1",type=int, default=14, help="Number of action labels in output")
        AP.add_argument("--actions_2",type=int, default=20, help="Number of action labels in output")
        AP.add_argument("--locations",type=int, default=13, help="Number of location labels in output")
        AP.add_argument("--phone_placement",type=int, default=4, help="Number of phone placement labels in output")
        AP.add_argument("--regulariser_rate",type=float, default=0.1, help="Regulariser rate for loss function")

        parsed = AP.parse_args()

        main(training_dir=parsed.training_directory,
                checkpointdir=parsed.checkpoint_directory,
                training_files=parsed.file_number,
                train_percent=parsed.train_percent,
                initial_learning_rate=parsed.initial_learning, 
                epochs=parsed.epochs,
                batch_size=parsed.batchsize, 
                weighting_action_1=parsed.action_weighting_1,
                weighting_action_2=parsed.action_weighting_2, 
                weighting_loc=parsed.loc_weighting, 
                weighting_phone=parsed.phone_weighting,
                hidden_1=parsed.hidden_1, 
                hidden_2=parsed.hidden_2, 
                hidden_3=parsed.hidden_3,
                hidden_4=parsed.hidden_4,
                hidden_5=parsed.hidden_5,
                hidden_6=parsed.hidden_6, 
                hidden_7=parsed.hidden_7, 
                hidden_8=parsed.hidden_8,
                hidden_9=parsed.hidden_9,
                hidden_10=parsed.hidden_10,
                hidden_11=parsed.hidden_11,
                hidden_12=parsed.hidden_12,
                action_2_layer_1=parsed.action_2_layer_1,
                loc_layer_1=parsed.loc_layer_1,
                n_input=parsed.input, 
                n_labels=parsed.add_input, 
                n_output_action_1=parsed.actions_1,
                n_output_action_2=parsed.actions_2, 
                n_output_loc=parsed.locations, 
                n_output_phone=parsed.phone_placement, 
                regulariser_rate=parsed.regulariser_rate)

        

