#include<stdio.h>
int x[100],m,n;
void solution(){
	int i;
	for(i=0;i<m;i++){
		printf("%d",x[i]);
	}
	printf("\n");
}
int check(int k, int v){
	int i;
	for(i=0;i<k-1;i++){
		if(x[i]==v) return 0;
	}
	if((v-x[k-2])==1) return 0;
	if((x[k-2]-v)==1) return 0;
	return 1;
}
void try(int k){
	int v;
	for(v=1;v<=n;v++){
		if(check(k,v)){
			x[k-1]=v;
		if(k==m) solution();
		else try(k+1);
		} 
	}
}
int main(){
	int i;
	scanf("%d %d",&m,&n);
	for(i=0;i<n;i++){
		x[i]=0;
	}
	try(1);
	return 0;
} 
