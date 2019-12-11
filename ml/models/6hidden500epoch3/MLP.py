import tensorflow as tf
import numpy as np
import get_data as get
import os
from sklearn.metrics import roc_auc_score, accuracy_score
import argparse
import matplotlib.pyplot as plt

def main(training_dir, checkpointdir, training_files, train_percent, initial_learning_rate, epochs, batch_size, weighting_action, weighting_loc, weighting_phone, hidden_1, hidden_2, hidden_3, hidden_4, hidden_5, hidden_6, hidden_7, action_layer_1, action_layer_2, n_input, n_labels, n_output_action, n_output_loc, n_output_phone, regulariser_rate):

        f = open("output.log", "w+")

        sess = tf.compat.v1.InteractiveSession()
        
        # graph inputs
        x =  tf.compat.v1.placeholder("float", [None, n_input+n_labels], name="x")
        y_action =  tf.compat.v1.placeholder("float", [None, n_output_action], name="y_action")
        y_loc =  tf.compat.v1.placeholder("float", [None, n_output_loc], name="y_location")
        y_phone =  tf.compat.v1.placeholder("float", [None, n_output_phone], name="y_phone")

        # initialize weights for layer 1
        weight_1 = tf.Variable(tf.random.normal([n_input+n_labels, hidden_1]), name="weight_1")
        bias_1 = tf.Variable(tf.random.normal([hidden_1]), name="weight_1_bias")

        # initialize weights for layer 2
        weight_2 = tf.Variable(tf.random.normal([hidden_1, hidden_2]), name="weight_2")
        bias_2 = tf.Variable(tf.random.normal([hidden_2]))

        #initialize weights for layer 3
        weight_3 = tf.Variable(tf.random.normal([hidden_2, hidden_3]))
        bias_3 = tf.Variable(tf.random.normal([hidden_3]))

        #initialize weights for layer 4
        weight_4 = tf.Variable(tf.random.normal([hidden_3, hidden_4]))
        bias_4 = tf.Variable(tf.random.normal([hidden_4]))

        #initialize weights for layer 5
        weight_5 = tf.Variable(tf.random.normal([hidden_4, hidden_5]))
        bias_5 = tf.Variable(tf.random.normal([hidden_5]))

        #initialize weights for layer 6
        weight_6 = tf.Variable(tf.random.normal([hidden_5, hidden_6]))
        bias_6 = tf.Variable(tf.random.normal([hidden_6]))


        #initialize weights for layer 7
        weight_7 = tf.Variable(tf.random.normal([hidden_6, hidden_7]))
        bias_7 = tf.Variable(tf.random.normal([hidden_7]))

        #initialise weights for first action layer
        weight_action_1 = tf.Variable(tf.random.normal([hidden_7, action_layer_1]))
        bias_action_1 = tf.Variable(tf.random.normal([action_layer_1]))

        #initialise weights for second action layer
        weight_action_2 = tf.Variable(tf.random.normal([action_layer_1, action_layer_2]))
        bias_action_2 = tf.Variable(tf.random.normal([action_layer_2]))

        #initialize output weights for actions
        weight_out_action = tf.Variable(tf.random.normal([action_layer_2, n_output_action]))
        bias_out_action = tf.Variable(tf.random.normal([n_output_action]))

        #initialize output weights for location
        weight_out_loc = tf.Variable(tf.random.normal([hidden_7, n_output_loc]))
        bias_out_loc = tf.Variable(tf.random.normal([n_output_loc]))

        #initialize output weights for phone
        weight_out_phone = tf.Variable(tf.random.normal([hidden_7, n_output_phone]))
        bias_out_phone = tf.Variable(tf.random.normal([n_output_phone]))

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

        # layer 7
        layer_7 = tf.nn.sigmoid(tf.add(tf.matmul(layer_6, weight_7), bias_7))

        # action layer 1
        action_spec_layer_1 = tf.nn.sigmoid(tf.add(tf.matmul(layer_7, weight_action_1), bias_action_1))

        # action layer 2
        action_spec_layer_2 = tf.nn.sigmoid(tf.add(tf.matmul(action_spec_layer_1, weight_action_2), bias_action_2))

        # output layer
        predicted_y_action = tf.sigmoid(tf.add(tf.matmul(action_spec_layer_2, weight_out_action), bias_out_action))
        predicted_y_loc = tf.sigmoid(tf.add(tf.matmul(layer_7, weight_out_loc), bias_out_loc))
        predicted_y_phone = tf.sigmoid(tf.add(tf.matmul(layer_7, weight_out_phone),bias_out_phone))

        # loss function for changing weights
        loss = weighting_action*(tf.reduce_mean(tf.nn.softmax_cross_entropy_with_logits_v2(logits=predicted_y_action, labels=y_action))) \
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
                                                                                weight_action_1,
                                                                                weight_action_2,
                                                                                weight_out_action, 
                                                                                weight_out_loc, 
                                                                                weight_out_phone, 
                                                                                bias_1, 
                                                                                bias_2, 
                                                                                bias_3,
                                                                                bias_4,
                                                                                bias_5,
                                                                                bias_6,
                                                                                bias_7,
                                                                                bias_action_1,
                                                                                bias_action_2,
                                                                                bias_out_action, 
                                                                                bias_out_loc, 
                                                                                bias_out_phone])

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
        training_accuracy_action = []
        training_accuracy_loc = []
        training_accuracy_phone = []
        training_accuracy_overall = []
        training_loss = []
        testing_accuracy_overall = []
        testing_accuracy_action = []
        testing_accuracy_loc = []
        testing_accuracy_phone = []
        saver = tf.compat.v1.train.Saver(max_to_keep=10)

        (data_in, action_data, loc_data, phone_data) = get.get_formatted_data(training_dir, training_files)
        # action_data[0] etc gives labels for the set
        action_out = action_data[1]
        loc_out = loc_data[1]
        phone_out = phone_data[1]

        training_num = int(len(data_in)*train_percent)

        input_train = data_in[:training_num]
        output_train_action = action_out[:training_num]
        output_train_loc = loc_out[:training_num]
        output_train_phone = phone_out[:training_num]
        input_test = data_in[training_num:]
        output_test_action = action_out[training_num:]
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
                                                y_action: output_train_action[arr[index:index+batch_size]],
                                                y_loc: output_train_loc[arr[index:index+batch_size]],
                                                y_phone: output_train_phone[arr[index:index+batch_size]]})   

                saver.save(sess, (checkpointdir), global_step=1000)

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
                
                f.write("Epoch:{0}, Train loss: {1:.2f} Train acc: {2:.3f} Test acc: {3:.3f}\n".format(epoch,
                                                                                                   training_loss[epoch],
                                                                                                   training_accuracy_overall[epoch],
                                                                                                   testing_accuracy_overall[epoch]))
                f.write("          for action           Train acc: {0:.3f} Test acc: {1:.3f}\n".format( training_accuracy_action[epoch],
                                                                                                    testing_accuracy_action[epoch]))
                f.write("          for location         Train acc: {0:.3f} Test acc: {1:.3f}\n".format(training_accuracy_loc[epoch],
                                                                                                   testing_accuracy_loc[epoch]))
                f.write("          for phone            Train acc: {0:.3f} Test acc: {1:.3f}\n".format(training_accuracy_phone[epoch],
                                                                                                   testing_accuracy_phone[epoch]))

        tf.io.write_graph(tf.compat.v1.get_default_graph(), checkpointdir, 'model.pb', as_text=False)
        
        iterations = list(range(epochs))
        plt.figure()
        plt.plot(iterations, training_accuracy_overall, label='Overall_train')
        plt.plot(iterations, testing_accuracy_overall, label='Overall_test')
        plt.ylabel('Accuracy')
        plt.xlabel('iterations')
        plt.legend()
        plt.savefig('overall.png')

        plt.figure()
        plt.plot(iterations, training_accuracy_action, label='action_train')
        plt.plot(iterations, testing_accuracy_action, label='action_test')
        plt.ylabel('Accuracy')
        plt.xlabel('iterations')
        plt.legend()
        plt.savefig('action.png')

        plt.figure()
        plt.plot(iterations, training_accuracy_loc, label='loc_train')
        plt.plot(iterations, testing_accuracy_loc, label='loc_test')
        plt.ylabel('Accuracy')
        plt.xlabel('iterations')
        plt.legend()
        plt.savefig('loc.png')

        plt.figure()
        plt.plot(iterations, training_accuracy_phone, label='phone_train')
        plt.plot(iterations, testing_accuracy_phone, label='phone_test')
        plt.ylabel('Accuracy')
        plt.xlabel('iterations')
        plt.legend()
        plt.savefig('phone.png')

        print("Training complete")
        print("=============================================================")
        print("Final training loss:                     {0:.2f}".format(training_loss[-1]))
        print("Final overall training accuracy:         {0:.3f}".format(training_accuracy_overall[-1]))
        print("Final overall test accuracy:             {0:.3f}".format(testing_accuracy_overall[-1]))
        print("Action training accuracy:                {0:.3f}".format(training_accuracy_action[-1]))
        print("Action testing accuracy:                 {0:.3f}".format(testing_accuracy_action[-1]))
        print("Location training accuracy:              {0:.3f}".format(training_accuracy_loc[-1]))
        print("Location testing accuracy:               {0:.3f}".format(testing_accuracy_loc[-1]))
        print("Phone training accuracy:                 {0:.3f}".format(training_accuracy_phone[-1]))
        print("Phone testing accuracy:                  {0:.3f}".format(testing_accuracy_phone[-1]))

        f.write("Training complete\n")
        f.write("=============================================================\n")
        f.write("Final training loss:                     {0:.2f}\n".format(training_loss[-1]))
        f.write("Final overall training accuracy:         {0:.3f}\n".format(training_accuracy_overall[-1]))
        f.write("Final overall test accuracy:             {0:.3f}\n".format(testing_accuracy_overall[-1]))
        f.write("Action training accuracy:                {0:.3f}\n".format(training_accuracy_action[-1]))
        f.write("Action testing accuracy:                 {0:.3f}\n".format(testing_accuracy_action[-1]))
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
        AP.add_argument("--action_weighting", type=float, default=1, help="Weighting of action in loss function")
        AP.add_argument("--loc_weighting", type=float, default=1, help="Weighting of location in loss function")
        AP.add_argument("--phone_weighting", type=float, default=1, help="Weighting of phone placement in loss function")
        AP.add_argument("--hidden_1", type=int, default=225, help="Number of features extracted by first hidden layer")
        AP.add_argument("--hidden_2", type=int, default=225, help="Number of features extracted by second hidden layer")
        AP.add_argument("--hidden_3", type=int, default=225, help="Number of features extracted by third hidden layer")
        AP.add_argument("--hidden_4", type=int, default=225, help="Number of features extracted by fourth hidden layer")
        AP.add_argument("--hidden_5", type=int, default=225, help="Number of features extracted by fifth hidden layer")
        AP.add_argument("--hidden_6", type=int, default=225, help="Number of features extracted by sixth hidden layer")
        AP.add_argument("--hidden_7", type=int, default=225, help="Number of features extracted by seventh hidden layer")
        AP.add_argument("--action_1", type=int, default=100, help="Number of features extracted by first action specific layer")
        AP.add_argument("--action_2", type=int, default=100, help="Number of features extracted by second action specific layer")
        AP.add_argument("--input", type=int, default=225, help="Number of inputs into network")
        AP.add_argument("--add_input", type=int, default=51, help="Number of additional inputs fed into the network")
        AP.add_argument("--actions",type=int, default=34, help="Number of action labels in output")
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
                weighting_action=parsed.action_weighting, 
                weighting_loc=parsed.loc_weighting, 
                weighting_phone=parsed.phone_weighting,
                hidden_1=parsed.hidden_1, 
                hidden_2=parsed.hidden_2, 
                hidden_3=parsed.hidden_3,
                hidden_4=parsed.hidden_4,
                hidden_5=parsed.hidden_5,
                hidden_6=parsed.hidden_6,
                hidden_7=parsed.hidden_7,
                action_layer_1=parsed.action_1,
                action_layer_2=parsed.action_2,
                n_input=parsed.input, 
                n_labels=parsed.add_input, 
                n_output_action=parsed.actions, 
                n_output_loc=parsed.locations, 
                n_output_phone=parsed.phone_placement, 
                regulariser_rate=parsed.regulariser_rate)

        

