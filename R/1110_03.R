# 문제 1
# trees 데이터셋에서 Grith 열을 활용하여 히스토그램을 작성.
data()
trees
str(trees)



# 히스토그램 그리기
grith  <- trees$Girth
name   <- '체리나무 지름에 대한 히스토그램'
barcol <- c('#003f5c', '#58508d', '#bc5090', '#ff6361', '#ffa600')
xname  <- '지름'
yname  <- '빈도수'
borcol <- 'green'

gr <- hist(grith, main   = name,
                  col    = barcol,
                  xlab   = xname,
                  ylab   = yname,
                  border = borcol)


