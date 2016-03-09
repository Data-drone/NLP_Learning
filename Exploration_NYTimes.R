
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
output_dir = './parse/'
i = 0
for (row in news$Abstract) {
  output = annotateString(row)
  saveRDS(output, paste0(output_dir, i, '_parse.rds') )
  i= i + 1
}

# load first
J1 <- readRDS(paste0(output_dir, '0_parse.rds'))
J1000 <- readRDS(paste0(output_dir, '1000_parse.rds'))

# lets access J! and get the nouns
require(dplyr)
J1$token %>% filter(POS %in% c('NN', 'NNP') )