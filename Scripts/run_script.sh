for d in [0-9][0-9][0-9]
do
    #change file name in python script of each folder
    entry=$d/vid.py
    for entry2 in $d/*.mp4
        do
            entry=${entry//$d\//}
            entry2=${entry2//$d\//}
            sed -i -e "s/\"w.avi\"/\"$entry2\"/g" $d/vid.py
        done

    #Runs python script in each folder.
    for d in [0-9][0-9][0-9]
        do 
            (cd $d && python vid.py)
        done
done
        

