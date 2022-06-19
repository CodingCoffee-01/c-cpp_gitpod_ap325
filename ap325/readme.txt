
source from : https://www.facebook.com/groups/359446638362710/

step1:
	gcc p_1_1_gen.c

step2:
	./a.out

step3:
	gcc p_1_1_chk.c

step4: 
	./a.out < p_1_1_*.in > p_1_1_*.out

step5: 
        gcc your_code.c 

step6:
	./chk.sh  
 


ref:  Shell script  if else example

if [ "$1" = "123" ]
then
    echo "var is 123"
fi


or change chk.sh to :

for i in {1..5}
do
    echo "$1_$i.in and diff content:"
    ./a.out <"$1_$i.in" >tt
    diff "$1_$i.out" tt    > diff_result.txt
    if [ -s "diff_result.txt" ]
        cat diff_result.txt
    then
        echo "$1_$i.out and a.out output no difference"
    fi
done