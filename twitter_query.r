library(readr)
library(twitteR)

# Store the required API keys for connection to Twitter
api_key <- "hBgUhFxipyNt2JT87QEGuV1Ok"
api_secret <- "kEkWlcKIC1nHamXMHOrYzZzsevGtnZ26j1XggoannDcvESRx9J"
access_token <- "898901988754153472-boY81BSVy95r26As36rYxzNX63C6ibl"
access_token_secret <- "obKPRXeSx6UiLUCQoirN95G2zt66TWepMbKQ032mzZFzL"

# Authenticate against the Twitter API
setup_twitter_oauth(api_key, api_secret, access_token, access_token_secret)

# Query tweets related to "#crudeoil"
crude_tweets <- searchTwitter(searchString = "#crudeoil", n = 1000, lang = "en")

# Convert the raw queried data into a data.frame object
crude_df <- twListToDF(crude_tweets)

## Save the data.frame object to a CSV file
write_csv(crude_df, "tweets.csv")
