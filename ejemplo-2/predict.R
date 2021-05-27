library(randomForest)

# Reading of input arguments
args <- commandArgs(T)

input <- data.frame(
  Sepal.Length = args[1], 
  Sepal.Width = args[2], 
  Petal.Length = args[3], 
  Petal.Width = args[4]
)

# Train the model if it does not exist previously
if (!file.exists("model/iris_clf_rf.rds")){
  message('Training model...')
  
  clf_rf <- randomForest(Species ~ ., data = iris)
  
  if (!dir.exists("model")) {
    dir.create("model")
  }

  saveRDS(clf_rf, 'model/iris_clf_rf.rds')

# Load the trained model
} else {
  message('Reading model...')
  clf_rf <- readRDS('model/iris_clf_rf.rds')
}

# Predict
predict(clf_rf, input)