for ((c=4;c<=20;c+=8))
do
    echo "$c chunks"
    for i in {1..4}
    do\
        echo "Time: maxSort"
        echo "Thread $i"
        for j in {1..10}
        do
            ./Tfidf +RTS -N$i -RTS -f "../SampleTestFiles/100ktwitter.txt" "airline delay" $c
            wait
        done
    done

    for i in {1..4}
    do
        echo "Time: maxSort"
        echo "Thread $i"
        for j in {1..10}
        do
            ./Tfidf +RTS -N$i -RTS -f "../SampleTestFiles/500ktwitter.txt" "airline delay Maybe Facebook weather" $c
            wait
        done
    done
done


