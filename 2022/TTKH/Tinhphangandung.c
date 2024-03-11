#define A 0
#define B 1 
#define N 5
#define rt return 1/(1+x); // ham so











#include<stdio.h>
#include<math.h>
#include<stdlib.h>
#include<string.h>
#define xx system("cls");
double f(double x){
	rt
}
double simpson13plus(double a,double b, double n){
	double h=(b-a)/n;
	double kq,i;
	kq=f(a);
	kq+=f(b);
	for(i=1;i<=n-1;i+=2){
		kq=kq+4*f(a+i*h);
	}
	for(i=2;i<=n-2;i+=2){
		kq=kq+2*f(a+i*h);
	}
	return (b-a)*kq/(3*n);
}
double simpson38(double a,double b){
	double h=(b-a)/5;	
	return h*3*(f(a)+f(b)+3*f(a+h)+3*f(a+2*h))/8;
}
double hinhthangplus(double a,double b, double n){
	double h=(b-a)/n;
	double kq=f(a);
	double i;
	kq+=f(b);
	for(i=1;i<=n-1;i++){
		kq+=2*f(a+i*h);
	}
	return h*kq/2;
}
int main(){
	double a=A ; 
	double b=B ;
	double n=N;
	int key;
	int i=0;
	while(1){
		printf("MENu\n");
		printf("0. Tinh simpson1/8 mo rong\n");
		
		printf("1. Tinh simpson3/8\n");
		printf("2. Hinh thang mo rong  \n");
		printf("3. thoat\n");
		key=getch();
		switch(key){
			case 48:{
				xx
				printf("simpson1/3 plus:[ %lf]",simpson13plus(a,b,n));
				getc(stdin);
				xx
				break;
			}
			case 49:{
				xx
				printf("simpson3/8:[ %lf]",simpson38(a,b));
				getc(stdin);
				xx
				break;
			}
			case 50:{
				xx
				printf("Hinh thang plus:[ %lf]",hinhthangplus(a,b,n));
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
