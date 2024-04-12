#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(argc,argv)
int argc;
char *argv[];
{
	int nn;
	int n;
	if(argc>1){
		for (n=1;n<argc;n++){
			printf("%s ",argv[n]);
		}
		printf("\n");
	}else{
		return 1;
	}
	return 0;
}
