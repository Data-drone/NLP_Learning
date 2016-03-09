
# start coreNLP
require(coreNLP)
initCoreNLP("stanford-corenlp-full-2015-12-09")

# test two with hillary emails
require(readr)

emails <- read_csv("../Hillary_Data/Emails.csv")

text <- emails$ExtractedBodyText

output = annotateString(text)

