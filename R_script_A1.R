##############################################################
# 
# MOD_A1 
# R Training, Ethiopia
# Last: 2017/07/06
# Developed and manteined by Antonello Salis
# antonellosalis@cryptolab.net
# 
##############################################################


#Type CTRL+Enter when you want to send a command from here to the console.
#Type CTRL+1,CTRL+2,CTRL+3,CTRL+4 as shortcut to move around the 4 spaces of RStudio

# Before start remember that this line is a comment, because the # starts a comment line

THIS IS NOT A COMMENT

# A first view on RStudio

# Simple operations
2+3

#2+3 
#You see? If I add # to a line the operation will be ignored

2*3
2-3
2/3
2^3
2%%3
sqrt(2)
log(2)
log10(2)
log1p(2)
2+3; 2*3; log10(2)

# Help!

?log
?sqrt

#Example here the first important command:

rm(list=ls())
# Translation: rm() means remove 
#              list() mean (surprise!) list
#              ls() give us the list of all the objects in our workspace
#              This command will clean the workspace and all the objects!

# Restart the plot device
dev.off()
# Translation: "please RStudio  also clean all the graphics"
# It is recomnmended to clean the plot device and the environment in RStudio before start.
#Do you remember the boxes?
#Let's start with a small box, a variable:

A <- 3

B <- 10

A + B

a + B

# This means R is CaSe SeNsItIve!

A + B + 2

A <- B

# A + B + 2 = ?


C <- A + B + 2

C

#Now, we create a medium box, a vector
Ethiopian_DBH <- c(12.3,7,8.4,13.9,6)
Ethiopian_DBH
# "<-" Means assign
# "c" Means combine

#Let's view this first vector
Ethiopian_DBH
#In a different view
View(Ethiopian_DBH)

# How to view the third data?
Ethiopian_DBH[3]

# A first and simple operation
mean(Ethiopian_DBH)
mean(Ethiopian_DBH[3:4])

# BONUS TIP & TRICKS: Clic on the TAB button to complete the command
# For example me+TAB to complete mean then Eth+TAB to complete Ethiopian_DBH

#  A new list
Ethiopian_Inventory <-c("Juniperus spp.", 30, "12", "SU15")
mean(Ethiopian_Inventory)

# TIPS & TRICKS: Spaces, dots, minus, commas are not allowed in varable names...so if you 
# ned spaces only use underscores
Ethiopian_DBH_mean <- mean(Ethiopian_DBH)
Ethiopian_DBH_mean


typeof(Ethiopian_DBH_mean)

typeof(Ethiopian_DBH)

typeof(Ethiopian_Inventory)

summary(Ethiopian_DBH)

# A simple plot
Ethiopian_DBH
plot(Ethiopian_DBH)

# Particular cases
#  NA

Ethiopian_Heights <- c(12,34.4, 5, 12, NA)
mean(Ethiopian_Heights)
mean(Ethiopian_Heights, na.rm = T)
# What it means?
# We are asking R: please don't consider NA values in this mean.

plot(Ethiopian_DBH,Ethiopian_Heights)

# Logical operations
10>12

1<2

A <- 10>12

B <- 1<2

A

B

##############################################################
# 
#   Exercises
#
##############################################################

#1. Create a new vector called 
#   Ethiopian_Densities containig 5 realistic wood densities;

#2. Crete a new vector called Ethiopian_Species 
#   containg 5 names of Ethiopian tree species;

#3. Calculate the average of Ethiopian_Densities;

#4. Calculate the average of the first three elements 
#   of Ethiopian_densities;

#5. Create a new vector containing the log of 
#   Ethiopian_Densities called Log_Ethiopian_Densities;
 
#6. Simple plot of log_Ethiopian_Densities
