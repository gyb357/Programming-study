# 원 pie, pie3D
# 선 plot(), lines()



# 그래프
# barplot()
#  - 내가 만든 데이터
#  - 내부의 데이터 가져오기
#  - R의 있는 데이터 패키지를 설치하고 사용
# table()
# hist()



# 1. 원그래프의 작성
favorite <- c('WINTER', 'SUMMER', 'SPRING', 'SUMMER', 'SUMMER',
              'FALL', 'FALL', 'SUMMER', 'SPRING', 'SPRING')
ds <- table(favorite)     # 도수분포 계산
ds
pie(ds,                   # 원 그래프 작성
    main   = '선호 계절', # 이름
    radius = 1)           # 반지름



# 2. 파이 조각의 색 지정하기
pie(ds,
    main   = '선호 계절',                           # 이름
    radius = 1,                                     # 반지름
    col    = c('red', 'orange', 'yellow', 'green')) # 색상



# 3. 3차원 원그래프 작성하기
# 패키지 설치
install.packages('plotrix')
library(plotrix)

pie3D(ds,
    main     = '선호 계절',                                # 이름
    radius   = 1,                                          # 반지름
    col      = c('skyblue', 'blue', 'darkblue', 'purple'), # 색상
    labels   = names(ds),                                  # 파이별 레이블 지정
    labelcex = 1,                                          # 레이블 폰트 크기
    explode  = 0.2)                                        # 파이 간 간격


