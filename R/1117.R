# 종업원의 팁 정보 그래프 작성하기
# 1. reshape2 패키지 안에 들어있는 tips 데이터셋을 불러와 구조를 살펴봅니다.
install.packages('reshape2')
library(reshape2)
str(tips)
tips

tips$sex                 # $ 참조
tips$day
tips$time
tips$size

ds1 <- table(tips$sex)   # table
table(tips$sex)
table(tips$day)
table(tips$time)
table(tips$size)

barplot(table(tips$sex)) # barplot
barblot(ds1)

par(mfcol = c(2, 2))     # par



# 2. 성별(sex), 요일(day), 식사 시간대(time), 일행의 규모(size)에 따라 받은 팁의 빈도
를 그래프로 작성합니다.
par(mfrow = c(2, 2))
barplot(table(tips$sex),  main = 'gender')
barplot(table(tips$day),  main = 'day of week')
barplot(table(tips$time), main = 'time')
barplot(table(tips$size), main = 'size')
par(mfrow = c(1, 1)) # 화면 분활을 취소하기



# 3. 각 그래프마다 빈도가 많은 막대에 색을 넣어 강조하여 표현합니다.
mycol <- rep('red', 2)
mycol
mycol <- rep('orange', 6)
mycol
mycol[2] <- 'yellow'

par(mfrow = c(2, 2))
barplot(table(tips$sex),  main = 'gender',      col = c('red', 'orange'))
barplot(table(tips$day),  main = 'day of week', col = mycol)
barplot(table(tips$time), main = 'time',        col = c('orange', 'red'))
barplot(table(tips$size), main = 'size',        col = mycol)
par(mfrow = c(1, 1))



# 4. 1인당 주문 금액과 팁을 주는 것과 관련이 있는지 살펴보기 위해 perHead라는
# 새로운 열을 만들어 주문 금액을 일행의 수로 나눈 결과를 저장합니다.
tips$perHead <- tips$total_bill/tips$size
tips$percent <- tips$tip/tips$total_bill*100
tips



# 5. 1인당 주문 금액을 다시 전체, 런치, 디너 타임별로 비교할 수 있도록 데이터를
# 추출하여 그래프를 작성하고, 한 화면에 출력해 차이가 나는지 비교해봅니다.
par(mfrow = c(1, 3))
hist(tips$perHead,
     main   = '1인당 주문 금액',
     breaks = 5,
     xlab   = '단위: 달러')

# tips$time
# tips[2, 8]
# tips[2, 'time']
# tips[1:4, 'perhead']
#                     행        열
# tips[tips$time == 'Lunch', 'perHead']

hist(tips[tips$time == 'Lunch', 'perHead'],
     main   = '1인당 주문 금액(점심)',
     breaks = 4,
     xlab   = '단위: 달러')
hist(tips[tips$time == 'Dinner', 'perHead'],
     main   = '1인당 주문 금액(저녁)',
     breaks = 4,
     xlab   = '단위: 달러')
par(mfrow = c(1, 1))



# 6. 앞에서 작업한 것과 같이 빈도가 많은 막대에 강조하는 색을 넣어 다시 출력합니다.
par(mfrow = c(1, 2))
hist(tips[tips$time == 'Lunch', 'perHead'],
     main   = '1인당 주문 금액(점심)',
     breaks = 5,
     xlab   = '단위: 달러',
     col    = mycol)
hist(tips[tips$time == 'Dinner', 'perHead'],
     main   = '1인당 주문 금액(저녁)',
     breaks = 10,
     xlab   = '단위: 달러',
     col    = mycol)
par(mfrow = c(1, 1))



# 7. 이번에는 주문 금액 대비 받은 팁의 비율이 차이가 나는지 살펴봅니다.
par(mfrow = c(1, 2))
res.lunch <- hist(tips[tips$time == 'Lunch', 'perHead'],
     main   = '주문 금액 대비 팁의 비율(점심)',
     breaks = 5,
     xlab   = '퍼센트(%)',
     col    = mycol)
res.dinner <- hist(tips[tips$time == 'Dinner', 'perHead'],
     main   = '주문 금액 대비 팁의 비율(저녁)',
     breaks = 10,
     xlab   = '퍼센트(%)',
     col    = mycol)
par(mfrow = c(1, 1))



# 8. 지금부터는 앞서 저장한 두 개의 hist 객체에서 5~30 구간의 빈도값만 추출하고
# 병합할 것입니다.
res.lunch
res.dinner

# rbind
x <- 1:3
y <- 4:6
rbind(x, y)

res <- rbind(lunch  = res.lunch$counts, dinner = res.dinner$counts[1:5])
colnames(res) <- res.dinner$breaks[2:6]



# 9. res 데이터셋을 이용하면 제한된 범위 내에서 각각의 빈도를 한 그래프에서
# 확인할 수 있습니다.
par(mfcol = c(1, 1))
barplot(res,
        main        = '식사에 따른 팁 분포',
        col         = c('#1d3557', 'a8dadc'),
        legent.text = c('Lunch', 'Dinner'))


