
# exploration with new york times set

# start coreNLP
require(coreNLP)
initCoreNLP("stanford-corenlp-full-2015-12-09")

# test two with hillary emails
require(readr)
news <- read_csv("../NYTimes_Data/NYTimesBlogTrain.csv")

# Test
output = annotateString(news$Abstract[1])
# read in and then write out the parses
i = 0
for (row in news$Abstract) {
  output = annotateString(row)
  saveRDS(output, paste0('./parse/', i, '_parse.rds') )
  i= i + 1
}

