#!/usr/bin/env bash

function guessingGame(){
    actual_ans=$(ls -l |grep "^-"|wc -l)
    while true;
    do
        echo "Please enter(guess) your number"
        read  number
        if [ $number -lt $actual_ans ]
        then
            echo "The number you guessed is Less than the actual number"
        elif [ $number -gt $actual_ans ]
        then
            echo "The number you guessed is greater than the actual number"
        else
            echo " congratulation,you guessed the correct number !!!"
        break;
        fi
    done
}
echo "guess the count of files in the current directory!"
guessingGame
