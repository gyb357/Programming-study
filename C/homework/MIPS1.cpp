#include <stdio.h>
#define FIRST 1
#define LAST 20


int main() {
	// 1���� 20������ �� �� 4�� ������� ���� ����ϴ� ���α׷�
	// 4*8*12*16*20 = 122880


	int mul = 1;						   // ���� mul�� 1 �Ҵ�
	int i = FIRST;						   // ���� i�� 1 �Ҵ�
	int div;							   // div ���� ����

	for (i = FIRST; i < LAST + 1; i++) {   // i�� 1���� 20�� �ɶ����� �ݺ�
		div = i % 4;					   // i�� 4�� ���� ������
		if (div == 0) {				       // i�� ���� 4�� ������ �������ٸ� (4�� ������)
			mul = mul * i;				   // mul�� i�� ���� (mul *= i)
			printf("4��� = %d\n", i);	   // i ���
		}
	}
	printf("4�� ������� �� = %d\n", mul); // ���� ���� mul�� ���


	return 0;
}
