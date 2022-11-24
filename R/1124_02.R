# 예제 1
# 라면 선호도 원 그래프 작성



# 데이터 셋
favorite <- c('A', 'C', 'A', 'D', 'B',
              'D', 'C', 'A', 'D', 'A',
              'C', 'C', 'A', 'B', 'A')
# 도수분포 계산
ds <- table(ds)
ds



# 패키지 설치
# install.packages('plotrix')
# library(plotrix)



# 3차원 원그래프 작성하기
pie3D(ds,
      main     = '라면 선호도',                           # 이름
      radius   = 1,                                       # 반지름
      col      = c('red', 'yellow', 'skyblue', 'purple'), # 색상
      labels   = names(ds),                               # 파이별 레이블 지정
      labelcex = 1,                                       # 레이블 폰트 크기
      explode  = 0.2)                                     # 파이 간 간격


