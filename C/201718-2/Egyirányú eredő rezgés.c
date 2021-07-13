#include <stdio.h>
#include <math.h>
#define M_PI 3.14159265358979323846
float A1, A2, fi1, fi2;
float omega = M_PI*2/7;

void beker(){

	printf("elso rezges amplitudoja:\t");
	scanf("%f", &A1);
	printf("\n");
	
	printf("masodik rezges amplitudoja:\t");
	scanf("%f", &A2);
	printf("\n");
	
	printf("elso rezges faziseltolasa:\t");
	scanf("%f", &fi1);
	printf("\n");
	
	printf("masodik rezges faziseltolasa:\t");
	scanf("%f", &fi2);
	printf("\n");
}

float kiszamolAmpl(float a1, float a2){
	return sqrt(pow(a1,2)+pow(a2,2)+2*a1*a2*cos(fi1-fi2));
}

float kiszamolFazis(float f1, float f2){
	return atan((A1*sin(f1)+A2*sin(f2))/(A1*cos(f1)+A2*cos(f2)));
}

int main(){
		
	beker();
	
	printf("Az eredo rezges amplitudoja: %f\n", kiszamolAmpl(A1,A2));
	
	printf("Az eredo fazisallando: %f\n", kiszamolFazis(fi1,fi2));
	
	printf("Az eredo rezges egyenlete: %fcos(%ft+%f)\n", kiszamolAmpl(A1,A2), omega, kiszamolFazis(fi1,fi2));

	system("PAUSE");
	return 0;
}

