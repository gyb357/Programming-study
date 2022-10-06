#    입력            출력
# R에서 데이터 | console 화면
#  프로그램    |     화면
#    화면      | console 화면



# 1. 프로그램 안에서 데이터 입력 후 콘솔로 출력
age <- c(28, 17, 35, 46, 23, 67, 30, 50)
# 화면출력(콘솔 출력)
age
print(age)
cat("나이값: ", age)



# 2. 입력 화면(svDialogs()함수)로 데이터 입력 후 콘솔로 출력
# install.packages("svDialogs")            # 패키지 설치
library("svDialogs")                       # 패키지 확인
user.input <- dlgInput("Input income")$res # res = 문자형
user.input



# 자료형 변환
income <- as.numeric(user.input) # 자료형을 숫자로 변환
income

tax <- income*0.5                # 숫자*숫자 -> 연산 가능
tax
print(tax)
cat("세금:", tax)



# 3. 프로그램 안에서 데이터 입력 후 파일로 출력
count <- c(28, 17, 35, 46, 23, 67, 30, 50)
count
# 작업 폴더 설정
getwd()                                 # 현재 작업 폴더 확인
setwd("C:/Users/USER/Documents/Rworks") # 현재 작업 폴더 설정

sink('result.txt')
count
print(count)
cat("결과: ", count)
sink()



# 4. 입력 화면(svDialogs()함수)로 데이터 입력 후 파일로 출력
sink("result.txt", append = T)             # 뒤에 내용을 추가
user.input <- dlgInput("Input income")$res # res = 문자형
user.input

income <- as.numeric(user.input)           # 자료형을 숫자로 변환
income

tax <- income*0.5                          # 숫자*숫자 -> 연산 가능
tax
print(tax)
cat("세금:", tax)
sink()


