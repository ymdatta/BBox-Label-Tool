declare -i VAR=001
for F in /home/mohanadatta/Desktop/MPL_Lab/20171213/*.mp4
do
    printf -v j "%03d" $VAR
    echo $j
    mv "$F" "$j/"
    VAR=$((VAR + 1))
done


