dataTime <- read.csv("D:/School/2019 - CS - X/data/勞工對工作時數之滿意情形.csv", header=TRUE, stringsAsFactors=FALSE, fileEncoding ="UTF-8-BOM")
dataEntire <- read.csv("D:/School/2019 - CS - X/data/勞工對整體工作之滿意情形.csv", header=TRUE, stringsAsFactors=FALSE, fileEncoding ="UTF-8-BOM")

library(dplyr)
selectedDataTime <- select(dataTime, 2, 4, 5, 6, 7, 8)
names(selectedDataTime) <- c("細項", "很滿意", "滿意", "普通", "不滿意", "很不滿意")

selectedDataEntire <- select(dataEntire, 2, 4, 5, 6, 7, 8)
names(selectedDataEntire) <- c("細項", "很滿意", "滿意", "普通", "不滿意", "很不滿意")
head(selectedDataEntire)

library(ggplot2)
ggplot(data = selectedDataEntire) + geom_histogram(aes(x = 很滿意))