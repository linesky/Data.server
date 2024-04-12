#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <unistd.h>

void msgbox();

int main(int argc, char *argv[]){
		int n=0;
		int a;
		int i;
		int n1=atoi(argv[1]);
		int n2=atoi(argv[2]);
		char c[150];
		char cc[1500];
		msgbox();
		if (argc<4) exit(0);
		for (i=n1;i<n2;i++){
			strcpy(c,argv[3]);
			for (a=4;a<argc;a++){
				strcat(c," ");
				strcat(c,argv[a]);
			}
			sprintf(cc,"%s %d",c,i);
			system(cc);
		}
		
return 0;
}

void msgbox(){
	printf ("\e[0;37;43m");
}









