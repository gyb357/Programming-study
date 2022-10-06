# 20192718 고영보
# 1. 통계 자료를 accident 벡터에 저장합니다.
days <- c('M1', 'M2', 'M3', 'M4', 'M5', 'M6',
          'M7', 'M8', 'M9', 'M10', 'M11', 'M12')
accident <- c(31, 26, 42, 47, 50, 54, 70, 66, 43, 32, 32, 22)
names(accident) <- days


# 2. 1년간 총 감전사고 건수를 알아봅니다.
accident.year <- sum(accident)
cat("1년간 총 감전사고 건수", accident.year)


# 3. 가장 사고가 많은 달과 가장 적은 달의 건수를 알아봅니다.
# 사고 건수 오름차순 정렬
# 사고 건수가 가장 많은 달: 70 M7  7월달
# 사고 건수가 가장 적은 달: 22 M12 12월달
cat("사고 건수가 가장 많은 달: ", max(accident))
cat("사고 건수가 가장 적은 달: ", min(accident))


# 4. 만일 사고율이 10% 감소한다면 사고 건수가 어떻게 변화하는지 구해봅니다.
accident_9 <- accident*0.9


# 5. 사고 건수가 50건을 넘는 달의 통계만 출략해봅니다.
accident[accident>=50]
accident[accident<=50] # 50건을 넘지 않는 달의 통계


# 6. 사고 건수가 50건을 넘는 달의 이름을 출력해봅니다.
accident[accident>=50]


# 7. 사고 건수가 50 미만인 달은 1년 중 몇 개월인지 구해봅니다.
# length()
length(accident[accident<50])


# 8. 6월보다 사고가 많은 달과 사고 건수를 구해봅니다.
cat("사고 건수가 가장 많은 달: ", accident[accident>accident[6]])


