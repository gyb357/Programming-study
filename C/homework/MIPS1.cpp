#include <stdio.h>
#define FIRST 1
#define LAST 20


int main() {
	// 1부터 20까지의 수 중 4의 배수간의 곱을 출력하는 프로그램
	// 4*8*12*16*20 = 122880


	int mul = 1;						   // 변수 mul에 1 할당
	int i = FIRST;						   // 변수 i에 1 할당
	int div;							   // div 변수 선언

	for (i = FIRST; i < LAST + 1; i++) {   // i가 1부터 20이 될때까지 반복
		div = i % 4;					   // i를 4로 나눈 나머지
		if (div == 0) {				       // i가 만약 4로 나누어 떨어진다면 (4의 배수라면)
			mul = mul * i;				   // mul에 i를 곱함 (mul *= i)
			printf("4배수 = %d\n", i);	   // i 출력
		}
	}
	printf("4의 배수간의 곱 = %d\n", mul); // 최종 계산된 mul을 출력


	return 0;
}
