printf "\033c\033[43;37m\n"
f=file.txt
a=$(./filename $f)
b=$(./args 0 $a)
c=$(./args 1 $a)
printf "file:%s\nextencion:%s\n" $b $c
