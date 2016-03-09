
# exploration 1 - follow demo code

library(coreNLP)
initCoreNLP("stanford-corenlp-full-2015-12-09")

catInHat = c("the sun did not shine.", "it was too wet to play.",
             "so we sat in the house all that cold, cold, wet day.")
output = annotateString(catInHat)

getToken(output)[,c(1:3,6:7)]

getDependency(output)

getSentiment(output)