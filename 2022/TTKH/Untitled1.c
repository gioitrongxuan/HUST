#include<stdio.h>
#include<string.h>
int main(){
	char x[255];
	int i;
	scanf("%s",x);
	for(i=0;i<strlen(x)/2;i++){
		if(x[i]!=x[strlen(x)-i-1])
	{
		printf("NO");
		return 0;
	}
	}
	printf("YES");
	return 1;
}
