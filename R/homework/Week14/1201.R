# 20192718 고영보
# 선그래프 plot, 산정도 plot



# LakeHuron 호수 관련 데이터
LakeHuron
# 년도: 1875 ~ 1972
year <- 1875:1972
year



# 데이터 프레임 (year와 LakeHuron을 묶음)
ds <- data.frame(year, LakeHuron)
ds



par(mfrow = c(2, 2))
# 선 그래프 그리기 (선 그래프)
plot(ds$year, ds$LakeHuron,
     main = "휴론호수의 수위변화 (선 그래프)",
     xlab = "년도",     # x축 레이블
     ylab = "수위변화", # y축 레이블
     type = 'o',        # 그래프의 종류 (알파벳), (l, o, b, s)
     lty  = 1,          # 선의 종류 (line tpye)
     lwd  = 1,          # 선의 굵기
     pch  = 20)         # 점의 모양



# 선 그래프 그리기 (산정도)
plot(ds$year, ds$LakeHuron,
     main = "휴론호수의 수위변화 (산정도)",
     xlab = "년도",      # x축 레이블
     ylab = "수위변화",  # y축 레이블
     pch  = 18,          # 점의 모양
     ylim = c(575, 585)) # y축 시작값, 끝값



# 상자 그림 boxplot()
cars
str(cars)



# cars의 dist 참조하는 방법
cars$dist
cars[, 2]
cars[, 'dist']



# 박스 그래프 그리기1
boxplot(cars$dist,
        main = "자동차 제동거리")



po <- state.x77[, 1]
po



# 박스 그래프 그리기2
boxplot(po,
        main = "주별 인구 분포",
        col  = 'orange')


