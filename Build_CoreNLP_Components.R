# build coreNLP
# source script

# this requires that libxml2-devel is installed on red hat first
require(XML)
devtools::install_github("statsmaths/coreNLP")

#download.file("http://nlp.stanford.edu/software/stanford-corenlp-full-2015-12-09.zip")
unzip("stanford-corenlp-full-2015-12-09.zip")

