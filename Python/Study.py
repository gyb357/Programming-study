# 1
a = 3
b = 4
print(a + b)
print(a * b)
print(a / b)
print(a ** b)
print(a % b)
print(a // b)
print(7 % 3)


# 2
print("hello world")
print("phython is fun")
print("""life is too short,
you need phython""")
print('''life" is'
too short,
you need phython''')


# 3
food = "phython's favorite food is perl"
print(food)
food = 'phython\'s favorite food is perl'
print(food)
say = '"phython is very easy." he says'
print(say)
say = "\"phython is very easy.\" he says"
print(say)


# 4
multiline = '''life is too shot
you need phython'''
print(multiline)
multiline = "life is too shor\nyou need phython"
print(multiline)


# 5
head = "phython "
tail = "is fun"
print(head + tail)


# 6
a = "phython"
print(a * 2)


# 7
a = "hello world"
print (a[0])
print (a[-11])
print (a[10])
print (a[-1])
print(a[0:5])
print(a[6:])
print(a[:])
print(a[-11:-6])
print(a[-5:-2])
print(a[-5:9])


# 8
A = Life is too short, you need phython
print(A[2])
print(A[12])
print(A[23])


# 9
a = "20010331Raniy"
year = a[0:4] # 또는 a[:4]
month = a[4:6]
day = a[6:8]
weather = a[8 : 13] # 또는 a[8:]
print(year + "년" + month + "월" + day + "일" + weather + "입니다")


# 10
s = "I eat %d apples." % 3
print(s)
s = "I ate % d apples, so I was sick for %s days" % (10, "three")
print(s)


# 11
s = "%10s" % "HI"
print("[" + s + "]")
s = "% - 10sjane." % "HI"
print("[" + s +"]")
s = "%0.4f" % 3.142134234
print(s)
s = "%10.4f" % 3.42134234
print(s)


# 12
a = "hobby"
print(a.count("b"))
a = "Phython is best choice"
print(a.find("b"))
print(a.find("k"))
print(a.index("b"))
print(a.index("k"))


# 13
odd = [1, 3, 5, 7, 9]
print (odd)
a = []
print (a)
b = [1, 2, 3]
print (b)


# 14
a = [1, 2, 3, 4, 5]
print (a[0:2])
b = a[:2]
c = a[2:]
print (b)
print (c)


# 15
a = [345, 666, 777, 233, 4423, 222, 15]
print (a[2:5])
print (a[:4])
print (a[3:])
print (a[-6:-3])
print (a[-6:5])


# 16
a = [1, 2, 3]
b = [4, 5, 6]
print(a + b)


# 17
a = [1, 2, 3]
print (a * 3)


# 18
a = [1, 2, 3]
a[2] = 4
print (a)


# 19
a = [345, 666, 777, 233, 4423, 222, 15]
print (a[2:5])
a[2:5] = ["X", "Q", "RRR", 4345, 334]
print (a)
a[-6:4] = ["GOOD"]
print (a)
a[-7:] = []
print (a)


# 20
a = [1, "A", "B", "C", 4]
print (a[1:3])
a[1:3] = []
print(a)
del a[1:]
print (a)


# 21
a = [233,23, 2354, 75, 886, 80]
a.append(40)
print (a)
a.sort()
print (a)
a.sort(reverse = True)
print (a)

