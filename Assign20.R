# Load the Package
library(randomForest)

#Converting into Factor
Wearable$un<-factor(Wearable$user_name)

# Create the Forest 1
output.forest1<-randomForest(un ~ raw_timestamp_part_2+roll_belt+pitch_belt,data=Wearable)

# View the Forest Results
print(output.forest1)

#Importance of each predictor
print(importance(output.forest1,type=2))

# Plotting the importance of Variable for Forest1
plot(importance(output.forest1))

# Create the Forest 2
output.forest2<-randomForest(un ~ gyros_belt_x+accel_belt_z+magnet_belt_x+magnet_belt_y+magnet_belt_z,data=Wearable)

# View the Forest Results
print(output.forest2)

#Importance of each predictor
print(importance(output.forest2,type=2))

# Plotting the importance of Variable for Forest2
plot(importance(output.forest2))

# Create the Forest 3
output.forest3<-randomForest(un ~ total_accel_arm+gyros_arm_x+accel_arm_x+accel_arm_y+accel_arm_z,data=Wearable)

# View the Forest Results
print(output.forest3)

#Importance of each predictor
print(importance(output.forest3,type=2))

# Plotting the importance of Variable for Forest3
plot(importance(output.forest3))


# Conclusion :
#From the Random Forests shown above, we can conclude that the Forest 2 containing
#Gyros_belt,accel_belt_z are the important factors if the users can wear these or not.
#Also the model did not have any error, means we can predict with 100% Accuracy.
