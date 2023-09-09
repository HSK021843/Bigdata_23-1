# 5.2
# 만들어진 행렬(쌍대비교표)를 matrix로 입력하여 AHP 분석을 실행해보세요. 어느 배우가 최종 선택 되었나요?
# 결과를 종합적으로 분석해서 정리해 보세요

library(AHPWR)
mapeamento = c(2, 2)
nomes_alternativas = c("이도현", "위하준", "박서준")

m1 = matrix(c(1, 3, 1/3, 1), ncol = 2, byrow = TRUE)

m2 = matrix(c(1, 4, 1/4, 1), nrow = 2, byrow = TRUE)
m3 = matrix(c(1, 1/5, 5, 1), nrow = 2, byrow = TRUE)

m4 = matrix(c(1, 1/4, 1/4, 4, 1, 1/3, 5, 3, 1), nrow = 3, byrow = TRUE)
m5 = matrix(c(1, 1/6, 1/7, 6, 1, 1/3, 7, 3, 1), nrow = 3, byrow = TRUE)
m6 = matrix(c(1, 1/3, 1/5, 3, 1, 1/2, 5, 2, 1), nrow = 3, byrow = TRUE)
m7 = matrix(c(1, 1, 1/5, 1, 1, 1/4, 5, 4, 1), nrow = 3, byrow = TRUE)

base = list(m1, m2, m3, m4, m5, m6, m7)

ahp_geral(base, mapeamento, nomes_alternativas)