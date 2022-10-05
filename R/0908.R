# R언어 시작

# 단축키
# shift + enter:   해당 줄 실행
# shift + alt + r: 전체 줄 실행
# alt + '-':       <- 자동 생성



3+(4*5)
result <- 3+(4*5)

result
print(result)        # print에 텍스트를 첨가할 수 없다
cat('합계=', result) # cat을 통해 첨가할 수 있다

b <- 10
print(b)
c <-  20



# 산술 연산자
3 + 4
this.a <- 3+4      # 덧샘
this.b <- 4-3      # 뺄샘
this.c <- 2*4      # 곱샘
this.d <- 4/2      # 나눗샘
this.dd <- 4%%2    # 나머지
this.e <- 2^5      # 제곱

this.all <- 50:100 # 50~100까지 정수형(int) 배열 (인덱스는 1부터 51까지)
this.all



# 산술연산 함수 사용법
log(10)             # 로그
sqrt(2)             # 루트
max(12, 36, 26, 45) # 제일 큰 값
min(12, 36, 26, 45) # 제일 작은 값



# 패키지
install.packages("ggplot2") # 패키지 설치
library(ggplot2)            # 패키지 로드

install.packages("cowsay")  # 패키지 설치
library(cowsay)             # 패키지 로드



# 패키지 사용
ggplot(data = iris, aes(x = Pedal.Length, y = Pedal.Width)) + geom_point() # ggplot
say("hello world", by = "cat")                                             # cowsay
say("좋은 아침", by = "snowman")                                           # cowsay



# 도움말 사용
# 콘솔창에 '?함수이름' or 'help(함수이름)
# ex) ?sort, help(sort)