#include<stdio.h>
#include<string.h>
int main(){
	int i=0;
	char a[50];
	scanf("%s",a);
	if(a[0]<58) {
		printf("FALL");
		return 0;
	}
	while(1){
		i++;
		if(i==strlen(a)) {
			printf("True");
			return 0;
		}
		if((a[i]>64 && a[i]<91)||(a[i]<58&&a[i]>47)||(a[i]<123&&a[i]>96)||a[i]==95)
		continue;
		printf("FALL");
		return 0;
		
	}
}
