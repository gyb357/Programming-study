# .csv 파일 읽기(불러오기, 가져오기)
aircsv <- read.csv('airquality.csv', header = T)
aircsv
View(aircsv)
str(aircsv)                # 데이터 구조, 셋 종류



# .txt 파일 읽기(불러오기, 가져오기)
airtxt <- read.table('airquality.txt', header = T)
airtxt
View(airtxt)
str(airtxt)                # 데이터 구조, 셋 종류



# .xlsx 파일 읽기(불러오기, 가져오기)
install.packages('readxl') # .xlsx(엑셀) 파일을 불러오기 위한 추가 패키지 설치
library(readxl)
airxlsx <- read_excel('airquality.xlsx')
airxlsx
View(airxlsx)
str(airxlsx)               # 데이터 구조, 셋 종류



# CO2 데이터 확인
data()
str(CO2)
CO2
# write.csv   (.csv)
# write.table (.txt)
# write.xlsx  (패키지 openxlsx 설치와 로딩 후에 사용)



# .csv 파일에 쓰기
write.csv(CO2, "co2.csv", row.names = F)                # 행의 이름을 쓰지 않는다



# .txt 파일에 쓰기
write.table(CO2, "co2.txt", row.names = F, quote = F)   # 쿼터를 모두 제거



# .xlsx 파일에 쓰기
install.packages("openxlsx")
library(openxlsx)
write.xlsx(CO2, file = "co2.xlsx")


