# 벡터 만들기
height <- c(168.4, 169.5, 172.1, 185.2, 173.7, 175.2)
height

weight <- c(62.4, 65.3, 59.8, 46.5, 49.8, 58.7)
weight

age <- c(29, 27, 26, 25, 26, 28)
age

gender <- c('F', 'F', 'M', 'M', 'F', 'M')
gender


# 데이터프레임 만들기
df <- data.frame(height, weight, age, gender)
df


# 매트릭스 만들기
# matrix(데이터셋, 행수, 열수)
mat1 = matrix(c(168.4, 169.5, 172.1, 185.2, 173.7, 175.2,
         62.4, 65.3, 59.8, 46.5, 49.8, 58.7,
         29, 27, 26, 25, 26, 28), nrow = 6, ncol = 3)
mat1


# 매트릭스 이름 붙이기
rownames(mat1) <- c('kim', 'kang', 'hong', 'choi', 'song', 'yun')
colnames(mat1) <- c('height', 'weight', 'age')
mat1


# 원소값 알아내기, 원소값 추출하기
mat1[1, 1]
mat1[6, 3]
mat1[3,] # 3행 전체
mat1[,1] # 1열 전체


# 이름으로 원소값 내용 추출, 보기
mat1['kim', 'height'] # = mat1[1, 1]
mat1['yun', 'age']    # = mat1[6, 3]
mat1['hong',]         # = mat1[3,]
mat1[,'height']       # = mat1[,1]


# 교재에 있는 매트릭스 만들기
matrix(1:20, nrow = 4, ncol = 5)            # 열 우선 행렬
matrix(1:20, nrow = 4, ncol = 5, byrow = T) # 행 우선 행렬


# 예제1
# 햄버거 영양 성분 정보 제공하기
burger <- matrix(c(514, 917, 11,
                   533, 853, 13,
                   566, 888, 19), nrow = 3, ncol = 3, byrow = T)
# burger <- matrix(c(514, 533, 566, 917, 853, 888, 11, 13, 19), nrow = 3, ncol = 3)
rownames(burger) <- c('M', 'L', 'B')
colnames(burger) <- c('열량', '나트륨', '포화지방')
burger

burger['M', '나트륨']
burger['M',]
burger[,'열량']

burger[1, 2]
burger[1,]
burger[,1]


# 예제 2
# 햄버거 영양 성분 정보 추가하기
menu <- c('새우', '불고기', '치킨')
burger <- data.frame(burger, menu)
burger


# 매트릭스와 데이터프레임 다루기
str(burger) # 데이터셋의 구조 확인


# 데이터셋의 변수 내용 확인
burger$열량
burger$나트륨
burger$menu


# 데이터셋의 기본정 확인 함수들
dim(burger)
nrow(burger)
ncol(burger)
colnames(burger)
ls(burger)
head(burger)


data() # R에서 제공하는 데이터 셋 확인
iris
view(iris)
str(iris)
levels(iris[,5])         # 원소의 위치로 범주의 내용 확인
levels(iris$Species)     # 변수의 이름으로 범주의 내용 확인
levels(iris[,"Species"]) # 변수명으로 범주의 내용 확인

head(iris)
iris[1:5,]
tail(iris)
iris(145:150)

table(iris[,5])          # 범주의 개수 (= 빈도) table()


# 데이터프레임에 함수 적용
culSums(iris[,-5])
colMeans(iris[,-5])
rowSums(iris[,-5])
rowMeans(iris[,-5])

