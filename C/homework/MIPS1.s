# 프로그램에서 사용할 데이터 영역
	.data
msg: .asciiz "Calculation result: " # 출력할 메세지
number: .word 20                    # 연산에 사용할 수


# 추가 상수 선언
divisor: .word 4         # 상수 divisor = 4
one: .word 1             # 상수 one     = 1


# 프로그램의 코드영역
	.text
	.globl main
main:
	lw $s0, number       # s0 레지스터에 20을 가지고 온다.


	# 작성하세요.
	# 상수
	lw $s1, divisor      # 상수 s1 = 4 (= addi $s1, $0, 4)
	addi $s0, $s0, 1     # 상수 s0 = 21
						 # for (i = 1; i < 21; i++)
						 # i가 1에서 시작하기 때문에 20번 반복하기 위해 s0에 1을 추가함


	# 변수
	lw $t4 one           # int mul = 1; (= addi $t4, $0, 1)
	lw $t0 one           # int i   = 1; (= addi $t0, $0. 1)


loop:
	# 작성하세요.
	# for (i = 1; i < 21; i++)
	beq $t0, $s0, exit   # if (i == 21) -> exit로 점프


	# i를 4로 나누고 나머지를 얻은 후 t2에 저장
	div $t0, $s1         # i / 4
	mfhi $t1             # i % 4


	# 나머지가 0 (i가 4의 배수)일때, 혹은 아닐때 수행 코드
	bne $t1, $0, do      # if (i % 4 != 0) -> do로 점프
	mul $t4, $t4, $t0    # mul = mul * i
	do:
		addi $t0, $t0, 1 # i = i + 1
		j loop           # loop로 점프


exit:
	# 결과를 출력하는 부분
	# msg로 레이블된 메세지를 출력
	li $v0, 4
	la $a0, msg
	syscall


	# 계산 값을 출력하는 부분
	# 최종 결과는 $t4 레지스터에 저장되어 있다고 가정하고 출력
	li $v0, 1
	addi $a0, $t4, 0
	syscall


	# 프로그램 종료
	li $v0, 10           # exit
	syscall