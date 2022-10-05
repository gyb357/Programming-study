# 20192718 고영보
# 1. tips 데이터셋을 불러옵니다.
# install.packages('reshape2) # reshape2 패키지 설치
library(reshape2)             # reshape2 패키지 로드
tips                          # reshape2 패키지의 tips 데이터셋 출력


# 2. tips의 자료구조가 매트릭스인지 확인합니다.
class(tips)         # tips의 클래스 확인           (= "data.frame")
is.matrix(tips)     # tips가 매트릭스인지 확인     (= FALSE: 매트릭스가 아님)
is.data.frame(tips) # tips가 데이터프레임인지 확인 (= TRUE: 데이터프레임이 맞음)


# 3. 처음 개의 관측값을 출력합니다.
head(tips) # 처음 ~ 6개의 관측값 출력
tips[1:6,] # 1 ~ 6


# 4. str() 함수를 사용하여 데이터 구조를 알아봅니다.
# 244개의 관측값과 7개의 열로 구성되있음.
# sex, smoker, day, time은 Factor형으로 구성됨.
str(tips)


# 5. tips 데이터셋에서 요일(days)별 팁을 받는 빈도를 구합니다.
table(tips$day)    # "day" 이름을 가진 tips의 테이블을 출력
table(tips["day"]) # 위와 동일함


# 6. 요일별로 시간대(time)가 'Dinner인 경우와 'Lunch인 경우로 나누어
#    팁에 빈도가 있는지 알아봅니다.
dinner <- subset(tips, time == 'Dinner')
lunch <- subset(tips, time == 'Lunch')
table(dinner$day)
table(lunch$day)


# 7. 결제금액(total_bill), 팁(tip), 일행 수(size)에 대한 평균을 구합니다.
# total_bill, tip, size열(col)의 평균 산출
colMeans(tips[c('total_bill', 'tip', 'size')])


# 8. 손님들은 결제 금액 대비 평균적으로 몇 퍼센트(%)를 팁으로 주었는지 알아봅니다.
tip.rate <- tips$tip/tips$total_bill # 손님별 팁의 비율
mean(tip.rate)                       # 팁 비율의 평균
