# 2.2
# 해당 산업의 경우 RFM 중요도가 카테고리 별로 어떻게 되어야 한다고 생각합니까? 왜 그런지 간단히 설명하세요. 
# (예를 들어 RFM 이 각각 10, 4, 1 의 중요도를 지닌다고 생각하면 왜 그런지 설명하세요. 캐글 사이트에 데이터에 대한 자세한 설명이 없으므로 자료의 모습을 보고 상상력을 발휘하여 자유롭게 간단히 설명하면 됩니다.)

library(didrooRFM)
retailRFM <- read.csv(file.choose(), encoding = "UTF-8-BOM", header = T)

retailRFM [, 3] <- as.Date(as.character(retailRFM[, 3]), "%Y-%m-%d")
str(retailRFM)

result <- findRFM(retailRFM, 2, 8, 10)
head(result)
tail(result)

table(result$RecencyScore)
table(result$FrequencyScore)
table(result$MonetoryScore)
table(result$FinalScore)
table(result$FinalWeightedScore)
table(result$FinalCustomerClass)
gradeMerge = paste(result$MonetoryScore, result$FrequencyScore, result$RecencyScore, sep = "")
table(gradeMerge)

barplot(table(result$FinalCustomerClass), col = rainbow(5), xlab = '클래스', ylab = '빈도', main = 'RFM 등급별 빈도')
hist(result$FinalWeightedScore, xlab = 'RFM 점수(가중평균)', ylab = '빈도', main = 'RFM 점수 분포', col = rainbow(8))
barplot(table(gradeMerge), xlab = "RFM 등급", ylab = "빈도", main = "RFM 등급별 빈도", col = rainbow(5))