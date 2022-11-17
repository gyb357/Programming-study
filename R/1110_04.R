# 과제
# 정책 지지도 그래프 그리기
# 1. carData 패키지 안에 있는 Chile데이터셋을 불러와 변수 ds에 저장합니다.
install.packages('carData')
library(carData)



# 데이터 확인
ds <- Chile
ds
str(ds)



# 2. 화면을 2행 3열의 레이아웃으로 분할합니다.
par(mfcol = c(2, 3))
color <- rainbow(20)
color



# 3. 첫 번째 행에 지역별,성별,교육수준별 분포에 대한 3개의 막대그래프를 작성합니다.
# 4. 두 번째 행에 연령,수입,정책 지지도에 대한 3개의 히스토그램을 작성합니다
barplot(table(ds$region),
        main = '지역별 분포',
        col  = color[1:5])
hist(ds$age,
     breaks = 6,
     main   = '연령',
     xlab   = 'age',
     col    = color[5:10])


barplot(table(ds$sex),
        main = '성별 분포',
        col  = rainbow(5))
hist(ds$income,
     breaks = 4,
     main   = '수입',
     xlab   = 'income',
     col    = color[10:15])


barplot(table(ds$education),
        main = '교육수준별 분포',
        col  = color[5:10])
hist(ds$statusquo,
     breaks = 9,
     main   = '정책 지지도',
     xlab   = 'support',
     col    = color[15:20])


