#include<stdio.h>
int x[100],m,n;
void solution(){
	int i;
	for(i=1;i<=m;i++){
		printf("%d",x[i]);
	}
	printf("\n");
}
void try(int i){
	int v;
	for(v=x[i-1]+1;v<=n-m+i;v++){
		x[i]=v;
		if(i==m) solution();
		else try(i+1);
	}
}
int main(){
	scanf("%d %d",&m,&n);
	x[0]=0;
//	try(1);
	return 0;
}
