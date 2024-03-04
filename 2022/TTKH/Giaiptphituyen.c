//Giai phuong trinh phi tuyen
#define A -2
#define C -1
#define K 10						//so lan lap
#define RF return x*x*x-5*x*x+12; 	// ham so
#define XO  -1.372281323			//nghiem dung


//newton
#define BD 1 						//diem bat dau
#define RDF return x*x*x-x-1;	//dao ham







#include<stdio.h>
#include<math.h>
#include<stdlib.h>
#include<string.h>
#define xx system("cls");

double f(double x){
	RF// ghi ham so
}
double df(double x){
	RDF
}
void chiadoi(double a,double c,int k){
	int i;
	double b;
	printf("%110s\n","_______________________________________________________________________________________________________________________");
	printf("|%5s|%15s|%15s|%15s|%15s|%15s|%15s|%15s|\n","Lan","a","b","c","f(a)","f(b)","f(c)","saiso");
	printf("%110s\n","_______________________________________________________________________________________________________________________");
	for(i=0;i<k;i++){
		b=(a+c)/2;
		printf("|%5d|%15lf|%15lf|%15lf|%15lf|%15lf|%15lf|%15lf|\n",i+1,a,b,c,f(a),f(b),f(c),b-XO);
		printf("%110s\n","_______________________________________________________________________________________________________________________");
		if(f(a)*f(b)<0){
			c=b;
		}
		else a=b; 
		
	}
}
void daycung(double a,double c,int k){
		int i;
	double b;
	printf("%110s\n","_______________________________________________________________________________________________________________________");
	printf("|%5s|%15s|%15s|%15s|%15s|%15s|%15s|%15s|\n","Lan","a","b","c","f(a)","f(b)","f(c)","saiso");
	printf("%110s\n","_______________________________________________________________________________________________________________________");
	for(i=0;i<k;i++){
		b=(a*f(c)-c*f(a))/(f(c)-f(a));
		printf("|%5d|%15lf|%15lf|%15lf|%15lf|%15lf|%15lf|%15lf|\n",i+1,a,b,c,f(a),f(b),f(c),b-XO);
		printf("%110s\n","_______________________________________________________________________________________________________________________");
		if(f(a)*f(b)<0){
			c=b;
		}
		else a=b; 
		
	}
}
void newton(double x, int k){
	int i;
	printf("khoi tao Xo= ",XO);
	printf("\n|%5s|%15s|%15s|\n","lan","x","saiso");
	for(i=0;i<k;i++){
		printf("|%5d|%15lf|%15lf|\n",i+1,x,x-XO);
		x=(df(x)*x-f(x))/df(x);
	}	
	return;
}
int main(){
	double a=A ; 
	double c=C ;
	int k=K;
	int key;
	int i=0;
	while(1){
		printf("MENu\n");
		printf("0. Chia doi\n");
		printf("1. Day cung\n");
		printf("2. Newton\n");
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
				daycung(a,c,k);
				getc(stdin);
				xx
				break;
			}
			case 50:{
				xx
				newton(BD,k);
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
