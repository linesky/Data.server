printf "\x1bc\x1b[43;37m"
roots=$(pwd)/roots
tmps=/tmp/lists.txt
tmps2=/tmp/lists2.txt
gcc -o args args.c
gcc -o filename filename.c
gcc -o color color.c
gcc -o char char.c
gcc -o cmd command.c
gcc -o express express.c
gcc -o lefts lefts.c
gcc -o len len.c
gcc -o locate locate.c
gcc -o lower lower.c
gcc -o ltrim ltrim.c
gcc -o mid mid.c
gcc -o mktp mktp.c
gcc -o rand rand.c
gcc -o rigths rigths.c
gcc -o seq seq.c
gcc -o echo echo.c
gcc -o printf printf.c
gcc -o cp cp.c
gcc -o date date.c
gcc -o for for.c
gcc -o grep grep.c
mkdir -p $roots
mkdir -p $roots/usr
mkdir -p $roots/usr/bin
mkdir -p $roots/bin
mkdir -p $roots/tmp
mkdir -p $roots/lib
mkdir -p $roots/dev
mkdir -p $roots/boot
mkdir -p $roots/lib/i386-linux-gnu
cp  /usr/bin/cat  $roots/usr/bin
cp  /usr/bin/cat  $roots/bin
cp  ./seq  $roots/usr/bin
cp  ./seq  $roots/bin
cp  ./rigths  $roots/usr/bin
cp  ./rigths  $roots/bin
cp  ./rand  $roots/usr/bin
cp  ./rand  $roots/bin
cp  ./mktp  $roots/usr/bin
cp  ./mktp  $roots/bin
cp  ./mid  $roots/usr/bin
cp  ./mid  $roots/bin
cp  ./ltrim  $roots/usr/bin
cp  ./ltrim  $roots/bin
cp  ./echo  $roots/usr/bin
cp  ./echo  $roots/bin
cp  ./printf  $roots/usr/bin
cp  ./printf  $roots/bin
cp  ./lower  $roots/usr/bin
cp  ./lower  $roots/bin
cp  ./locate  $roots/usr/bin
cp  ./locate  $roots/bin
cp  ./len  $roots/usr/bin
cp  ./len  $roots/bin
cp  ./lefts  $roots/usr/bin
cp  ./lefts  $roots/bin
cp  ./express $roots/usr/bin
cp  ./express $roots/bin
cp  ./run.shell $roots/usr/bin
cp  ./run.shell $roots/bin
cp  ./cmd $roots/usr/bin
cp  ./cmd $roots/bin
cp  ./char $roots/usr/bin
cp  ./char $roots/bin
cp  ./args $roots/usr/bin
cp  ./args $roots/bin
cp  ./color $roots/usr/bin
cp  ./color $roots/bin
cp  ./filename $roots/usr/bin
cp  ./filename $roots/bin
cp  ./cp $roots/usr/bin
cp  ./cp $roots/bin
cp  ./grep $roots/usr/bin
cp  ./grep $roots/bin
cp  ./for $roots/usr/bin
cp  ./for $roots/bin
cp  ./date $roots/usr/bin
cp  ./date $roots/bin
cp  ./args.sh $roots/usr/bin
cp  ./args.sh $roots/bin
cp  /usr/bin/bash $roots/usr/bin
cp  /usr/bin/bash $roots/bin
cp  /usr/bin/sh $roots/usr/bin
cp  /usr/bin/sh $roots/bin
cp  /usr/bin/ls $roots/usr/bin
cp  /usr/bin/ls $roots/bin

printf "" > $roots/dev/null
printf "" > $roots/dev/stdio
printf "" > $roots/dev/stdout
printf "" > $roots/dev/stdin
chmod 777 $roots/bin/*
chmod 777 $roots/usr/bin/*
printf "" > $tmps
list1=$(ls $roots/usr/bin/*)
for l1 in $list1
do
ldd "$l1" | grep  '/lib/' >> $tmps
done
awk '{for(i=1;i<=NF;i++) if($i ~ /\/lib\//) print $i}' $tmps > $tmps2
while IFS= read -r l1
do

rt="$roots$l1"
#printf "$rt\n"
cp "$l1" "$rt" 
done < "$tmps2"




