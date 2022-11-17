# 예제 1
# 막대 그래프
# 사업부문별 매출액 그래프 그리기
# 1. 사업부문별 매출액 데이터셋을 구성
HA <- c(54659, 61028, 53307, 46161, 54180)
HE <- c(31215, 29863, 32098, 39684, 29707)
MC <- c(15107, 16133, 15222, 13208, 9986)
VS <- c(13470, 14231, 13401, 13552, 13193)
BS <- c(16513, 14947, 15112, 14392, 17091)
# 행의 이름으로 행렬 만들기
DS <- rbind(HA, HE, MC, VS, BS)
# 열의 이름 만들기
colnames(DS) <- c('19.1Q', '19.2Q', '19.3Q', '19.4Q', '20.1Q')



# 2. '사업부문별 매출액'이란 제목으로 막대그래프
barplot(DS, main = '사업부문별 매출액')



# 3. 각 사업부문마다 각각의 색을 적용
# 16진수 RGB 색
barplot(DS, 
        main = '사업부문별 매출액',
        col  = c('#003f5c', '#58508d', '#bc5090', '#ff6361', '#ffa600'))
# 웹 브라우저에서 사용하는 색
colors()
barplot(DS,
        main = '사업부문별 매출액',
        col  = c('ivory2', 'khaki', 'lavenderblush', 'lavenderblush3', 'lemonchiffon'))



# 4. 막대그래프를 수평 방향으로 출력돠도록 변경하고 y축의 값도 수평으로 출력
barplot(DS,
        main  = '사업부문별 매출액',
        col   = c('ivory2', 'khaki', 'lavenderblush', 'lavenderblush3', 'lemonchiffon'),
        horiz = T,
        las   = 1)
barplot(DS,
        main   = '사업부문별 매출액',
        col    = c('ivory2', 'khaki', 'lavenderblush', 'lavenderblush3', 'lemonchiffon'),
        horiz  = T,
        las    = 1,
        beside = T,
        xlab   = "억 원")


