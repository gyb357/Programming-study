# 1차원 데이터
# 변수 variable
weight.1 <- 168.4
weight.2 <- 169.5
weight.3 <- 172.1
weight.4 <- 185.2
weight.5 <- 173.7
weight.6 <- 175.2



# 벡터 vector
height <- c(168.4, 169.5, 172.1, 185.2, 173.7, 175.2)
weight <- c(65.4, 65.3, 59.8, 46.5, 49.8, 58.7)
age <- c(29, 27, 26, 25, 26, 28)
gender <- c('M', 'F', 'F', 'M', 'M', 'F')



# 팩터 factor
gender <- factor(gender) # 범주형 데이터: 변수의 종류
gender
levels(gender)           # 범주 내용 확인: M = 1, F = 2 (순서)



# 2차원 데이터
# 데이터 프레임
Info.f <- data.frame(height, weight, age, gender)
Info.f



# 벡터: 하나의 변수에 여러개의 값 저장, 기억
absent <- c(8, 2, 0, 4, 1)
absent
names(absent) <- c('Mon', 'Tue', 'Wed', 'Thu', 'Fri')

# 벡터의 원소 값 확인
absent
absent[3]          # 3번째 원소
absent[1:3]        # 1 ~ 3번째 원소
absent[c(1, 3, 5)] # 1, 3, 5번째 원소
absent[c(2, 4)]    # 2, 4번째 원소

# 벡터에 원소 값 추가
absent[6] <- 2



# 예제1
sales <- c(640, 720, 680, 540)
sales
names(sales) <- c('M1', 'M2', 'M3', 'M4')
sales[3]             # 3번째 원소
sales['M3']          # M3인 이름의 원소
sales[1:3]           # 1 ~ 3번째 원소
sales[c(1, 3)]       # 1, 3번째 원소
sales[c('M2', 'M4')] # M2, M2인 이름의 원소

# 예제2
day <- c('Mon', 'Tue', 'Wed', 'Thr', 'Fri', 'Sat', 'Sun')
Espresso <- c(4, 5, 3, 6, 5, 4, 7)
Americano <- c(63, 68, 64, 68, 72, 89, 94)
Cafe_latte <- c(61, 70, 59, 71, 71, 92, 88)
names(Espresso) <- day
names(Americano) <- day
names(Cafe_latte) <- day



# 팩터 factor: 범주형 자료 생성
bt <- c('A', 'B', 'B', 'O', 'AB', 'A', 'B')

bt
bt.n <- factor(bt)
bt.n[8] <- 'B' # C가 들어가면 str(bt.n)에서 결측값 NA가 나옴 (범주에 포함 안됨)
               # A, B, O, AB 4가지중 한개만 삽입 가능
levels(bt.n)
str(bt.n)      # ()변수 데이터 구조 확인
class(bt.n)    # () 데이터 타입 확인



# 리스트 list
h.list <- c('balling', 'tennis', 'ski') # 취미의 종류
person <- list(name = "고영보", age = 20, student = T, hobby = h.list)

# 리스트 값 확인, 원소위치, 매개변수 작성
person
person[1]
person[1:4]
person[c(1, 3)]

person$name
person$student

person[3]
person$student


