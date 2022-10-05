

# 변수 내용 확인
total <- 5050
total
print(total)
cat("합계", total)
#
a <- 10
b <- 20
c <- a + b
#
a
b
c
a <- 50
a


# 변수의 데이터타입(자료형)
# 숫자
age_1 <- 27
age_2 <- 17
age <- age_1 + age_2
age_1; age_2; age;   # 세미콜론(;) = 문장이 끝난다는것을 구분


# 문자
name.1 <- "이름1"
name.2 <- "이름2"
name.3 <- "이름3"
name.1; name.2; name.3;

name.4 <- "John"
name.4


# 논리: Boolean 자료 형태로 출력
log.1 <- 5>3
log.2 <- 2>7
log.1; log.2;

log.3 <- T # True를 임의 저장 = 1
log.4 <- F # False를 임의 저장 = 0
log.3; log.4;

log5 <- log.3 + log.4
log5


# 특별값
#NA   결측값
#NULL 정의되지 않은 값

#NAN  수학적으로 정의되지 않은 값
#ex) sqrt(-5): 제곱해서 -가 되는 값은 없음 (허수)

#InF  + 무한대
#ex) 1/0
#-InF - 무한대
#ex) -2/0


# 벡터
weight.1 <- 56
weight.2 <- 67
weight.3 <- 84
weight.4 <- 63
weight.5 <- 65
weight.6 <- 56

weight <- weight.1 + weight.2 + weight.3 + weight.4 + weight.5 + weight.6
avg.weight <- weight/6

# vector
weight_v <- c(56, 67, 84, 65, 49, 53)
sum.weight <- sum(weight_v)
mean.weight <- mean(weight_v)

# 벡터 만들기: c(값, 값, 값, ..., 값)
v <- c(1, 2, 3, 4, 5)
y <- c('a', 'b', 'c')
z <- c(T, T, F)
v; y; z;

# 벡터 값 추출
v[3]
y[1]
z[4]
v[6]

# 벡처 값 추가
v[6] <- 10
y[3] <- 'd'
y[3] <- 3

# 예제
name <- c('kim', 'lee', 'park', 'choi', 'seo')
deposit <- c(500000, 450000, 400000, 550000, 600000)
rate <- c(3.5, 3.0, 4.0, 5.0, 4.5)
period <- c(2, 2, 5, 7, 4)
name; deposit; rate; period;


