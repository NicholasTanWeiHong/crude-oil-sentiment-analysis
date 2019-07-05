library(readr)
library(twitteR)

# Store the required API keys for connection to Twitter
api_key <- ""
api_secret <- ""
access_token <- ""
access_token_secret <- ""

# Authenticate against the Twitter API
setup_twitter_oauth(api_key, api_secret, access_token, access_token_secret)

# Query tweets related to "#crudeoil"
crude_tweets <- searchTwitter(searchString = "#crudeoil", n = 1000, lang = "en")

# Convert the raw queried data into a data.frame object
crude_df <- twListToDF(crude_tweets)

## Save the data.frame object to a CSV file
write_csv(crude_df, "tweets.csv")
