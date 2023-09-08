# 2.1
# 첨부한 retailRFM.csv파일은 https://www.kaggle.com/datasets/blaiseyonga/project-retail-rfm 에서 다운 받은 파일을 RFM 분석에 적합하도록 정리한 파일입니다. 아래의 코드를 사용하여 R로 읽어보세요. 

library(didrooRFM)
retailRFM <- read.csv(file.choose(), encoding = "UTF-8-BOM", header = T)

retailRFM [, 3] <- as.Date(as.character(retailRFM[, 3]), "%Y-%m-%d")
str(retailRFM)

head(retailRFM)
tail(retailRFM)