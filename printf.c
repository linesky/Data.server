#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(argc,argv)
int argc;
char *argv[];
{
	int nn;
	int n;
	int idx=0;
	if(argc>1){
	        char *token=strtok(argv[1],"%");
		for (n=1;n<argc;n++){
		        
		        token=strtok(0,"%");
		        if(token==NULL)break;
			printf("%s",argv[n]);
			token=token+1;
			printf("%s",token);
		}
		
	}else{
		return 1;
	}
	return 0;
}
