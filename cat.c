#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>

#define bufsize 2048

void msgbox();
char linec[bufsize];
char *c=linec;
int f1;
int f2;
size_t t;
int n;

int main(int argc, char *argv[]){
		printf ("\e[0;37;43m");
		if(argc<2)exit(0);
		
		f2=1;
		
		
		

			f1=open(argv[1],  O_RDONLY);
		
		
				do{
					t=read(f1,c,bufsize);
					write(f2,c,t);
			
			
				}while(t==bufsize);
				close(f1);
		
		close(f2);
		
	return 0;
}





