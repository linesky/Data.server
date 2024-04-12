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
	        printf("%s",token);
		   
		for (n=1;n<argc-1;n++){
		        
		        
		        
		        token=strtok(0,"%");
		        if(token==NULL)break;
		        if(n+1>argc)break;
			printf("%s",argv[n+1]);
			token=token+1;
			printf("%s",token);
		}
		
	}else{
		return 1;
	}
	return 0;
}
