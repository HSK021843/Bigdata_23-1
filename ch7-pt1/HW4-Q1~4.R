# Q.1
# 댓글을 read.csv 함수를 사용하여 R로 읽어보세요. test1 으로 저장한 후 잘 읽어졌는지 확인해 보세요. 
# Q.2
# 해당 데이터는 데이터프레임 이기 때문에 unlist 함수를 사용하여 벡터로 만들어주어야 합니다. 다음 코드를 사용하여 벡터로 만들어 주세요.
# Q.3
# 댓글을 보면서 내가 댓글을 통해 검증하고 싶은 감성 한가지를 골라 ‘감성사전’을 만들어보세요. (사전이름은 kam.words)
# Q.4
# 만들어진 감성 사전으로 for함수를 사용하여 16개 리뷰의 극성을 평가해 보세요.
# (반대되는 두개의 감성의 차이를 비교하는 것이 아니라 한 가지 감성만 측정하는 것이기 때문에 for 문만 필요하고 if 문은 사용할 필요가 없습니다.)
# 결과를 보고 해석해 보세요. 특히 아래의 코드에서 kamv와 kamsum 이 의미하는 것을 구분하여 자세히 설명하세요.

library(stringr)

reply <- read.csv(file.choose(), encoding = "UTF-8-BOM", header = F)
reply <- unlist(reply)

kam.words <- c("합리화", "추악", "사탄", "야만족") #분노에 대한 단어사전
kamv1 <- NULL
kamsum <- 0

for(i in 1:length(reply)){
  kam <- str_count(reply[i], kam.words)
  kamv = sum(kam)
  kamv1 <- c(kamv1, kamv)
  kamsum <- kamsum + kam
  
}

kamv1