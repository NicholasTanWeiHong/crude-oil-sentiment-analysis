# Sentiment Analysis in Energy Markets

This project leverages on text data sourced from Twitter in addition to Natural Language Processing packages in R (E.g. qdap and tidytext) to perform basic Sentiment Analysis.

The objective will be to see if applying such methods to Twitter-sourced text data leads to any interesting insights. Future implementations might involve the integration of such findings with an algorithmic trading strategy to take positions based on market sentiment.

<p align="center">
  <img src="https://github.com/NicholasTanWeiHong/crude-oil-sentiment-analysis/blob/master/crude-oil-sentiment-analysis_files/figure-gfm/plot_wordcloud-1.png?raw=true"/>
</p>

## Usage

Due to conflicts between the *twitteR* and *qdap* packages, the code sections to query data and to analyze it are segregated into separate scripts.

First, git clone to a local folder with

`git clone https://github.com/NicholasTanWeiHong/crude-oil-sentiment-analysis.git`

Next, run `twitter_query.r`.

Finally, the code in `crude-oil-sentiment-analysis.R` may be used to generate insights.

Alternatively, open `crude-oil-sentiment-analysis.md` for a report-style GitHub Document.