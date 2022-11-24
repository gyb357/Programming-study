# 20192718 고영보
# 1124 과제



# 1. 다음과 같이 과학 과목에 대한 선호도 점수별 비율을 원그래프로 나타냅니다.
# 패키지 설치
install.packages('DAAG')
library(DAAG)

# 원그래프 그리기
ds <- table(science$like)
pie(ds,
    main   = '선호 점수별 비율',  # 이름
    radius = 1,                   # 반지름
    col    = rainbow(length(ds))) # 색상



# 2. 다음과 같이 주(state)별로 조사 대상 학생수 비율을 3차원 원그래프로 나타냅니다.
# 패키지 설치
# install.packages('plitrix')
# library(plotrix)

# 3차원 원그래프 그리기
ds <- table(science$State)
pie3D(ds,
      main     = '주별 학생 비율',    # 이름
      radius   = 1,                   # 반지름
      col      = c('brown', 'green'), # 색상
      labels   = names(ds),           # 파이별 레이블 지정
      labelcex = 1,                   # 레이블 폰트 크기
      explode  = 0.1)                 # 파이 간 간격



# 3. 휴런 호수의 수위 변화를 선그래프로 작성합니다.
year <-  1875:1972                # 데이터 입력 (875 ~ 1972 순서지정)
ds <- data.frame(year, LakeHuron)

# 선그래프 그리기
plot(ds$year,            # x축 데이터
     ds$LakeHuron,       # y축 데이터
     xlab = '연도',      # x축 레이블
     ylab = '수위',      # y축 레이블
     main = '수위 변화', # 이름
     type = 'b',         # 그래프의 종류 (알파벳), (l, o, b, s)
     lty  = 1,           # 선의 종류 (line tpye)
     col  = 'blue',      # 선의 색상
     pch  = '@')         # 점의 모양


