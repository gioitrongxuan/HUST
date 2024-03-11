








#include<stdio.h>
#include<math.h>
#include<stdlib.h>
#include<string.h>
#define xx system("cls");
//Giai phuong trinh phi tuyen
#define A -2
#define C 1
#define N 5
#define K 10						//so lan lap
#define rt return log(2.7*x+5.6); 	// ham so
#define xo  -1.703703704 					//nghiem dung
double f(double x){
	return log(2.7*x+5.6) ;// ghi ham so
}

void chiadoi(double a,double c,int k){
	int i;
	double b;
	printf("%5s%10s%10s%10s%10s%10s%10s%10s\n","Lan","a","b","c","f(a)","f(b)","f(c)","saiso");
	for(i=0;i<k;i++){
		b=(a+c)/2;
		printf("%5d%10lf%10lf%10lf%10lf%10lf%10lf%10lf\n",i,a,b,c,f(a),f(b),f(c),f(b)-f(xo));
		if(f(a)*f(b)<0){
			c=b;
		}
		else a=b; 
		
	}
}
int main(){
	double a=A ; 
	double c=C ;
	double n=N;
	int k=K;
	int key;
	int i=0;
	while(1){
		printf("MENu\n");
		printf("0. Chia doi\n");
		
		printf("1. Tinh simpson3/8\n");
		printf("2. Hinh thang mo rong  \n");
		printf("3. thoat\n");
		key=getch();
		switch(key){
			case 48:{
				xx
				chiadoi(a,c,k);
				getc(stdin);
				xx
				break;
			}
			case 49:{
				xx

				getc(stdin);
				xx
				break;
			}
			case 50:{
				xx
				getc(stdin);
				xx
				break;
			}
			case 51:{
				return 0;
				break;
			}
		}
	}
	
	return 0;
}
