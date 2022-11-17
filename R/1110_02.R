# 히스토그램
data()
cars
str(cars)



# cars 1열
cars[, 1]
cars[, "speed"]
cars$speed
sp <- cars$speed



# cars 2열
cars[, 2]
cars[, "dist"]
cars$dist
ds <- cars$dist



# 히스토그램 만들기
# 변수로 두면 상태값을 계산함
st <- hist(ds,
           main   = '',
           col    = c('#003f5c', '#58508d', '#bc5090', '#ff6361', '#ffa600'),
           breaks = 5,            # 막대 개수
           xlab   = '제동거리',     # x축 이름
           ylab   = '빈도수',       # y축 이름
           border = 'palegreen1', # 막대 테두리 색
           las    = 2)               # x축 글씨 방향(0 ~ 3)
st
# breaks:  각 구간 x축의 값
# count:   각 막대의 y값
# density: 밀도
# mid:     각 구간 x축의 중간값
# xname:   히스토그램 데이터 변수 이름



# count
ff <- st$counts
ff
# 1을 빼서 x축 이름이 20부터 시작하도록 함
names(ff) <- st$breaks[-1]
ff


