data() # R애 내장된 데이터셋 목록 확인

Orange
class(Orange) # 데이터의 class
str(Orange)   # 데이터의 구조
dim(Orange)   # 데이터의 행렬 개수
ncol(Orange)  # 데이터의 열 개수
nrow(Orange)  # 데이터의 행 개수



# 예제
iris
class(iris) # data.frame
str(iris)   # 150 obs, 5 variable
dim(iris)   # 150, 5
ncol(iris)  # 5
nrow(iris)  # 150
View(iris)



# apply
# apply(데이터 셋, 1: 행 (or 2: 열), 적용함수)
# 행과 열의 반복되는 계산을 수행하는 함수
apply(iris[, -5], 2, sum)
apply(iris[, 1:4], 1, sum)

apply(iris[, -5], 2, mean)
apply(iris[, 1:4], 1, mean)

iris[2, 5]
iris[10,]
iris[, 5]
iris[1:5,]
iris[, 3:4]
iris[, -5]



# 예제 1
airquality
View(airquality) # 데이터 셋을 표 형태로 확인
str(airquality)  # 관측값과 변수의 갯수 확인
dim(airquality)  # 153 obs, 6 variables
# 관측값의 수: 153 obs
# 변수의 수:   6 variables



# 예제 2
USJudgeRatings
class(USJudgeRatings) # 데이터 구조
str(USJudgeRatings)   # 어떤 변수가 있는지 확인
dim(USJudgeRatings)   # 43 obs, 12 variables
# 관측값의 수: 43 obs
# 변수의 수:   12 variables

apply(USJudgeRatings, 1, mean) # 각 판사의 평균: 행
apply(USJudgeRatings, 2, mean) # 각 변수의 평균: 열



# witch
#index:    1   2   3   4   5   6   7   8   9   10
score <- c(76, 45, 32, 98, 45, 16, 95, 74, 13, 54)

# 인덱스로 값 참조
score[4] # score의 4번째 값
# 값으로 인덱스 참조
which(score == 98) # score에서 98이 있는 인덱스

min(score)         # 최소값
which.min(score)   # 최소값의 인덱스
max(score)         # 최대값
which.max(score)   # 최대값의 인덱스
which(score >= 85) # 85보다 더 큰 값들의 인덱스



# 예제 1
# Petal.Length 변수에서 값이 5.0 이상인 값의 인덱스
which(iris[, 3] >= 5.0)
which(iris$Petal.Length >= 5.0)
which(iris["Petal.Length"] >= 5.0)
which(iris[, "Petal.Length"] >= 5.0)

# Species 변수에서 "setosa"와 같은 값의 인덱스
which(iris[, 5] == "setosa")
which(iris$Species == "setosa")
which(iris["Species"] == "setosa")
which(iris[, "Species"] == "setosa")



# 예제 2
score <- c(50, 40, 30, 20)
names(score) <- c('Jhon', 'Jane', 'Tom', 'David')

# 변수에 which 값 지정
idx <- which.max(score)
idx

# which 값으로 변수 참조
names(score)[1]


