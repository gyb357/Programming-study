# 20192718 고영보
# 1. 매출액을 분석하기 위해 자료를 sales에 저장합니다.
# 월별 매출액
#           1    2    3    4    5    6    7    8    9    10   11   12
sales <- c(750, 740, 760, 680, 700, 710, 850, 890, 700, 720, 690, 730)
# 상반기 월별 매출액
sales.first_half <- c(sales[1], sales[2], sales[3], sales[4], sales[5], sales[6])


# 2. 7월의 매출액을 알아봅니다.
# 7월 매출액
sales.july <- sales[7]
cat("7월 매출액: ", sales.july)


# 3. 1월과 2월의 매출액 합계를 알아봅니다.
# 1, 2월 매출 합계
sales.sum <- sales[1] + sales[2]
cat("1, 2월 매출 합계", sales.sum)


# 4. sort() 함수를 이용해서 매출액이 가장 많은 달을 알아봅니다.
# 매출액 오름차순 정렬
# 매출액이 가장 많은 달: 8월, 890
sales.sort = sort(sales)


# 5. sum() 함수를 이용해서 상반기 매출액의 합계를 알아봅니다.
# 상반기(1월 ~ 6월) 매출액 합계
sum(sales.first_half)

