# Load necessary libraries
library(tm)
library(SnowballC)
library(wordcloud)
library(e1071)
library(ggplot2)

# Read the data
data <- read.csv("D:/R-MICRO_PROJECT/Sentiment.csv", stringsAsFactors = FALSE)

# Keeping only the necessary columns
data <- data[, c("text", "sentiment")]

# Handling missing or empty data
data <- data[!is.na(data$text) & data$text != "", ]

# Splitting the dataset into train and test sets
set.seed(123)  # Setting seed for reproducibility
train_indices <- sample(1:nrow(data), size = 0.9 * nrow(data))  # 90% training data
train <- data[train_indices, ]
test <- data[-train_indices, ]

# Removing neutral sentiments
train <- subset(train, sentiment != "Neutral")

# Separating positive and negative tweets
train_pos <- subset(train, sentiment == "Positive")$text
train_neg <- subset(train, sentiment == "Negative")$text

# Function to generate wordcloud
wordcloud_draw <- function(data, color = "black") {
  cleaned_data <- tolower(data)
  cleaned_data <- iconv(cleaned_data, "UTF-8", "ASCII", sub = "")  # Remove non-ASCII characters
  cleaned_data <- gsub("http[^[:space:]]*", "", cleaned_data)  # Remove URLs
  cleaned_data <- gsub("@\\w+", "", cleaned_data)  # Remove @mentions
  cleaned_data <- gsub("#\\w+", "", cleaned_data)  # Remove hashtags
  cleaned_data <- gsub("RT", "", cleaned_data)  # Remove RT
  cleaned_data <- gsub("[^[:alpha:][:space:]]", "", cleaned_data)  # Remove special characters
  wordcloud(cleaned_data, scale = c(3, 0.5), max.words = 200, 
            colors = c(color), random.order = FALSE)
}

# Draw wordcloud for positive and negative sentiments
cat("Positive words\n")
wordcloud_draw(train_pos, "white")

cat("Negative words\n")
wordcloud_draw(train_neg, "black")

# Preprocessing function
preprocess_text <- function(text) {
  if (is.na(text) || text == "") return("")  # Handle empty or NA text
  cleaned_text <- tolower(text)
  cleaned_text <- removePunctuation(cleaned_text)
  cleaned_text <- removeNumbers(cleaned_text)
  cleaned_text <- removeWords(cleaned_text, stopwords("english"))
  cleaned_text <- stripWhitespace(cleaned_text)
  return(cleaned_text)
}

# Apply preprocessing
train$text_clean <- sapply(train$text, preprocess_text)
train_sentiment <- train$sentiment

# Create a document-term matrix for training
corpus <- Corpus(VectorSource(train$text_clean))
dtm <- DocumentTermMatrix(corpus)

# Convert document-term matrix to a data frame for compatibility
dtm_df <- as.data.frame(as.matrix(dtm))
dtm_df$sentiment <- train_sentiment

# Train Naive Bayes classifier
nb_classifier <- naiveBayes(sentiment ~ ., data = dtm_df)

# Prepare test data for prediction
test$text_clean <- sapply(test$text, preprocess_text)
test_corpus <- Corpus(VectorSource(test$text_clean))
test_dtm <- DocumentTermMatrix(test_corpus, control = list(dictionary = Terms(dtm)))

# Convert test DTM to data frame for prediction
test_dtm_df <- as.data.frame(as.matrix(test_dtm))
test_dtm_df$sentiment <- test$sentiment

# Predict sentiments
pred <- predict(nb_classifier, test_dtm_df)

# Calculate accuracy
accuracy <- sum(pred == test$sentiment) / nrow(test_dtm_df)

cat(sprintf("Overall Accuracy: %.2f%%\n", accuracy * 100))
