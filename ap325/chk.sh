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
