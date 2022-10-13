# C:\Users\USER\Documents\Rworks



# 작업 공간 설정
getwd() # 현재 작업 위치 (=폴더, 디렉토리)
setwd("C:/Users/USER/Documents/Rworks")



# 패키지 설치
# install.packages("svDialogs")
library(svDialogs)



# 1. 콘솔로 결과 보기 (출력, 보내기, 쓰기)
#height <- dlgInput("Input Height, cm")$res
#weight <- dlgInput("Input Weight, kg")$res
#height <- as.numeric(height)               # 문자를 숫자로 자료형 변환
#weight <- as.numeric(weight)               # 문자를 숫자로 자료형 변환
#height <- height/100
#bmi <- weight/(height^2)

#cat("입력한 키는 ", height*100, "cm, 몸무게는 ", weight, "kg 입니다.")
#cat("BMI는 ", bmi, "입니다.")



# 2. 파일로 결과 보기 (출력, 보내기, 쓰기)
sink("output.txt")                         # 작업 공간에 output.txt 파일 생성
height <- dlgInput("Input Height, cm")$res
weight <- dlgInput("Input Weight, kg")$res
height <- as.numeric(height)               # 문자를 숫자로 자료형 변환
weight <- as.numeric(weight)               # 문자를 숫자로 자료형 변환
height <- height/100
bmi <- weight/(height^2)

cat("입력한 키는 ", height*100, "cm, 몸무게는 ", weight, "kg 입니다.\n")
cat("BMI는 ", bmi, "입니다.")
sink()                                     # 파일에 내용 저장 (업데이트)


