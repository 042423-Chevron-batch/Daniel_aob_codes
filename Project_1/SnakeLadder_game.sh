#!/bin/bash



starting_number=0
current_number=$starting_number
echo "You are playing Snake Ladder Flight Chess"
counter=0

while [ $counter -le 6 ]; do
    echo "press any key to select a number randomly between 1 and 6"
    read -n 1 -s
    echo "Rolling the die..."
    random_number=$(shuf -i 1-6 -n 1)
    echo "The die shows $random_number"

    current_number=$(($random_number + $starting_number))
    cummulative_num=$current_number

    if [ $current_number -eq 2 ] 
    then
        cummulative_num=7
        echo "Congratulations, You got a ladder to reach $cummulative_num"
    elif [ $current_number -eq 14 ]
    then
        cummulative_num=42
        echo "Congratulations, You got a ladder to reach $cummulative_num"

    elif [ $current_number -eq 31 ] 
    then
        cummulative_num=40
        echo "Congratulations, You got a ladder to reach $cummulative_num"

    elif [ $current_number -eq 20 ]
    then
        cummulative_num=29
        echo "Congratulations, You got a ladder to reach $cummulative_num"
    elif [ $current_number -eq 10 ]
    then
        cummulative_num=19
        echo "Congratulations, You got a ladder to reach $cummulative_num"

    elif [ $current_number -eq 35 ] 
    then
        cummulative_num=45
        echo "Congratulations, You got a ladder to reach $cummulative_num"

        
    elif [ $current_number -eq 4 ]
    then
        cummulative_num=15
        echo "Congratulations, You got a ladder to reach $cummulative_num"

    elif [ $current_number -eq 8 ] 
    then
        cummulative_num=3
        echo "You aint lucky this time, You got bitten by a snake, down to $cummulative_num"

    elif [ $current_number -eq 31 ]
    then 
        cummulative_num=9
        echo "You aint lucky this time, You got bitten by a snake, down to $cummulative_num"

    elif [ $current_number -eq 43 ]
    then 
        cummulative_num=12
        echo "You aint lucky this time, You got bitten by a snake, down to $cummulative_num"
    elif [ $current_number -eq 32 ]
    then 
        cummulative_num=30
        echo "You aint lucky this time, You got bitten by a snake, down to $cummulative_num"
    elif [ $current_number -eq 49 ]
    then 
        cummulative_num=39
        echo "You aint lucky this time, You got bitten by a snake, down to $cummulative_num"
    elif [ $current_number -eq 46 ]
    then 
        cummulative_num=36
        echo "You aint lucky this time, You got bitten by a snake, down to $cummulative_num"
    elif [ $current_number -eq 47 ]
    then 
        cummulative_num=37
        echo "You aint lucky this time, You got bitten by a snake, down to $cummulative_num"
    elif [ $current_number -eq 27 ]
    then 
        cummulative_num=17
        echo "You aint lucky this time, You got bitten by a snake, down to $cummulative_num"
    
    elif [ $cummulative_num -eq 50 ]
    then 
        echo "You have won!"
        break
    elif [ $cummulative_num -gt 50 ]
    then 
        echo "you have exceeded the limit, try again next time"
        break

    else
        echo "You neither got a ladder nor got bitten by the snake, you made a stride now at $cummulative_num!"
    
    fi
    starting_number=$cummulative_num
    counter=$(($counter + 1))
    if [ $counter -gt 6 ]
    then 
        echo "You have exhausted your number trials: $counter without reaching 50"
        break
    fi


done
