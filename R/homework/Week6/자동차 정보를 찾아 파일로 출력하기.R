# 20192718 고영보
# 1. carprice.csv파일을 불러와서 carprice.new에 저장합니다.
library(svDialogs)
setwd("C:/Users/USER/Documents/Rworks")
carprice.new <- read.csv('carprice.csv', header = T)
carprice.new
View(carprice.new)
str(carprice.new)



# 2. 자동차의 타입(Type), 시내 주행 평균 연비(MPG.city)를 팝업창을 통해 입력받아
#    자동차 타입이 일치하고
#    입력한 시내 주행 평균 연비 이상에 해당하는 결과를 carprice.new에서 검색 후 결과를 파일로 출력
# (1) 각 조건 값을 화면에서 입력받아 변수에 저장합니다.
input.type <- dlgInput("Input type")$res
input.mpg <- dlgInput("Input MPG.city")$res

# (2) input.city는 대소 비교를 위해 숫자형으로 변환합니다.





