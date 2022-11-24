# 1. 하나의 선그래프 작성하기
month <- 1:12                                   # month 데이터 입력 (1 ~ 12 순서지정)
month
late <- c(5, 8, 7, 9, 4, 6, 12, 13, 8, 6, 6, 4) # late 데이터 입력 (커스텀 지정)
late
plot(month,                # x축 데이터
     late,                 # y축 데이터
     xlab = 'Month',       # x축 레이블
     ylab = 'Late cnt',    # y축 레이블
     main = '지각생 통계', # 이름
     type = 'b',           # 그래프의 종류 (알파벳), (l, o, b, s)
     lty  = 4,             # 선의 종류 (line tpye)
     lwd  = 1,             # 선의 굵기
     col  = 'red',         # 선의 색상
     pch  = '@')           # 점의 모양



# 2. 복수의 선그래프 작성하기
late2 <- c(4, 6, 5, 8, 7, 8, 10, 11, 6, 5, 7, 3)
late3 <- c(4, 7, 9, 4, 6, 12, 13, 8, 6, 6, 4, 5)

# late2 선그래프
lines(month,         # x축 데이터
      late2,         # y축 데이터
      type = 'b',    # 그래프 종류
      col  = 'blue') # 선의 색상

# late3 선그래프
lines(month,           # x축 데이터
      late3,           # y축 데이터
      type = 'b',      # 그래프 종류
      col  = 'orange') # 선의 색상


