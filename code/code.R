

library(tidyverse)
library(caret)
library(rpart)
library(class)
library(rpart.plot)
library(ggplot2)


banana <- read.csv("../data/banana_quality.csv")

names(banana)[names(banana) == "Quality"] <- "quality"
banana$quality <- as.factor(banana$quality)


#Convert quality into a factor (classification labels: good or bad)

banana$quality <- as.factor(banana$quality)




#Look at the first few rows of the dataset

head(banana)


#Check the structure (shows column types)
str(banana)


#Check for missing values in each column
colSums(is.na(banana))

#Summary statistics (min, max, mean, etc.)
summary(banana)




# Set seed for reproducibility (so we always get the same split)
set.seed(123)


# Split the data: 80% for training, 20% for testing
train_index <- createDataPartition(banana$quality, p = 0.8, list = FALSE)
train_data <- banana[train_index, ]
test_data <- banana[-train_index, ]






# Model 1: Logistic Regression
Train LR Model

# Train the logistic regression model
log_model <- glm(quality ~ ., data = train_data, family = "binomial")



# View model summary to see feature importance
summary(log_model)


# Make predictions on the test data
log_probs <- predict(log_model, test_data, type = "response")

# Convert probabilities to class labels using 0.5 cutoff
log_preds <- factor(ifelse(log_probs > 0.5, "Good", "Bad"), levels = c("Bad", "Good"))

# Evaluate model performance with a confusion matrix
confusionMatrix(log_preds, test_data$quality)


# Remove the 'quality' column before scaling the numeric features
train_x <- train_data[, -which(names(train_data) == "quality")]
test_x <- test_data[, -which(names(test_data) == "quality")]

# Scale the training data
train_x_scaled <- scale(train_x)

# Scale the test data using the same parameters as the training set
test_x_scaled <- scale(
  test_x,
  center = attr(train_x_scaled, "scaled:center"),
  scale = attr(train_x_scaled, "scaled:scale")
)

# Extract the labels (target variable)
train_y <- train_data$quality
test_y <- test_data$quality

# Run KNN with k = 5
knn_preds <- knn(train = train_x_scaled, test = test_x_scaled, cl = train_y, k = 5)



# Evaluate performance using confusion matrix
confusionMatrix(knn_preds, test_y)


#knn_heatmap
cm <- confusionMatrix(knn_preds, test_y)

cm_df <- as.data.frame(cm$table)

ggplot(cm_df, aes(x = Reference, y = Prediction, fill = Freq)) +
  geom_tile() +
  geom_text(aes(label = Freq), color = "white", size = 6) +
  scale_fill_gradient(low = "#FFCB05", high = "#00274C") +
  theme_minimal() +
  labs(title = "KNN Confusion Matrix")



# Train the decision tree model

tree_model <- rpart(quality ~ ., data = train_data, method = "class")

# Make predictions on the test set
tree_preds <- predict(tree_model, test_data, type = "class")



#dt_tree_plot
rpart.plot(
  tree_model,
  type = 2,
  extra = 104,
  fallen.leaves = TRUE,
  tweak = 1.2
)





