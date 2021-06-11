library(randomForest)

# Reading of input arguments
args <- commandArgs(T)

input <- data.frame(
  Sepal.Length = as.numeric(args[1]), 
  Sepal.Width = as.numeric(args[2]), 
  Petal.Length = as.numeric(args[3]), 
  Petal.Width = as.numeric(args[4])
)

# Train the model if it does not exist previously
if (!file.exists("/tmp/model/iris_clf_rf.rds")){
  message('Training model...')
  
  clf_rf <- randomForest(Species ~ ., data = iris)
  
  # Create model folder if doesn't exist
  if (!dir.exists("/tmp/model")) {
    dir.create("/tmp/model")
  }

  saveRDS(clf_rf, '/tmp/model/iris_clf_rf.rds')

# Load the trained model
} else {
  message('Reading model...')
  clf_rf <- readRDS('/tmp/model/iris_clf_rf.rds')
}

# Predict
predict(clf_rf, input)