# Hello World
# A.N.H
# Created by Ahmed Nassif
#! /bin/bash

reset(){
clear
  printf "\e[1;0m\e[7;32m===================================================================\e[0m\n"
  printf "\e[7;32m#\e[0m \e[1;33mCreated by Ahmed Nassif \e[7;32m#\e[0m\e[7;31m                                       \e[7;32m#\n"
  printf "\e[7;32m#\e[0m \e[1;33mVersion 2.7             \e[7;32m#\e[0m\e[7;31m                                       \e[7;32m#\n"
  printf "\e[7;32m#\e[0m \e[1;33m2020.10.27              \e[7;32m#\e[0m\e[7;37m            \e[1;32m.★.\e[7;37m            \e[1;32m.★.\e[7;37m         \e[7;32m#\n"
  printf "\e[7;32m#\e[0m \e[1;33mTic Tac Toe game in bash\e[7;32m#\e[0m\e[7;30m                                       \e[7;32m#\n"
  printf '\e[7;32m#\e[0m\e[1;32m Whatsapp\e[1;33m +963940868494  \e[7;32m#\e[0m\e[7;30m                                       \e[7;32m#\n'
  printf '\e[7;32m#\e[0m\e[1;34m facebook \e[1;33mhttps://www.facebook.com/profile.php?id=100049582051187\e[7;32m#\n'
  printf '\e[7;32m#\e[0m\e[1;31m youtube \e[1;33m https://m.youtube.com/channel/UCrTYmf8uw2FdR8Q8i9yz-_Q \e[7;32m#\n'
  printf '\e[7;32m#\e[0m\e[1;35m My Website \e[1;36mhttps://anhhacker.blogspot.com                       \e[7;32m#\n'
  Arr=(1 2 3 4 5 6 7 8 9)
  player=1
  gamestatus=1
  printf  "\e[7;32m===================================================================\e[0m\n"
  printf "\e[34mGame started"
}
logo (){
clear
  printf "\e[1;0m\e[7;32m===========================\e[0m\n"
  printf "\e[7;32m#\e[0m \e[1;33mCreated by Ahmed Nassif \e[7;32m#\n"
  printf "\e[7;32m#\e[0m \e[1;33m2020.10.27              \e[7;32m#\n"
  printf "\e[7;32m#\e[0m \e[1;33mTicTacToe game in bash  \e[7;32m#\n"
printf  "\e[7;32m===========================\e[0m\n"
}
set(){
  idx=$(( $1 * 3 + $2 ))
  if [[ ${Arr[$idx]} == "1" || "2" || 3 || 4 || 5 || 6 || 7 || 8 || 9 ]]; then 
    Arr[$idx]=$3
    player=$((player%2+1))
  else
    printf "\e[31mYou can't place there!\n"
  fi
}

print(){
  printf "   \e[1;31mX\e[1;33m   vs  \e[1;34mO\e[1;33m \n"
  printf '\e[1;32m +------------+\n'
  printf " \e[1;32m|\e[0m ${Arr[0]} \e[1;33m| \e[0m${Arr[1]} \e[1;33m|\e[0m ${Arr[2]}\e[1;32m  |\n"
  printf ' \e[1;32m| \e[1;33m----------\e[1;32m |\n'
  printf " \e[1;32m|\e[0m ${Arr[3]} \e[1;33m|\e[0m ${Arr[4]} \e[1;33m|\e[0m ${Arr[5]}\e[1;32m  |\n"
  printf ' \e[1;32m| \e[1;33m----------\e[1;32m |\n'
  printf " \e[1;32m|\e[0m ${Arr[6]} \e[1;33m|\e[0m ${Arr[7]} \e[1;33m|\e[0m ${Arr[8]}\e[1;32m  |\e[1;33m\n"
  printf '\e[1;32m +------------+\n'
}
help (){
printf '\n\e[1;33m    Help\n\n'
printf ' Enter number\n'
printf '  1 | 2 | 3 \n'
printf '  ----------\n'
printf '  4 | 5 | 6\n'
printf '  ----------\n'
printf '  7 | 8 | 9\n'
}
checkmatch(){
  if [ ${Arr[$1]} != "." ] && [ ${Arr[$1]} == ${Arr[$2]} ] && [ ${Arr[$2]} == ${Arr[$3]} ]; then
    gamestatus=0
  fi
}

checkgame(){
  checkmatch 0 1 2
  checkmatch 3 4 5
  checkmatch 6 7 8
  checkmatch 0 3 6
  checkmatch 1 4 7
  checkmatch 2 5 8
  checkmatch 0 4 8
  checkmatch 2 4 6
}


reset
 # Loop
while [ 1 == 1 ]; do
  echo ""
  if [ $player == 1 ]; then sym='\e[1;31mX\e[1;33m'
  else sym='\e[1;34mO\e[1;33m'; fi
  printf  "\e[1;35mPlayer $player's turn:\e[1;33m ($sym)\n"
  print
  printf '\n\e[1;32m[H] help\n'
  printf '\e[1;32m[R] restart\n'
  printf '\e[1;32m[C] clear\n'
  printf '\e[1;32m[X] \e[31mExit\n'
  while [ 1 == 1 ]; do
    read -p $'\e[1;32m[#]\e[1;33m Enter:  ' cmd
 # IF
    if [[ $cmd == 1 ]];then
    set 0 0 $sym
    break
    elif [[ $cmd == 2 ]];then
    set 0 1 $sym
    break
    elif [[ $cmd == 3 ]];then
    set 0 2 $sym
    break
    elif [[ $cmd == 4 ]];then
    set 1 0 $sym
    break
    elif [[ $cmd == 5 ]];then
    set 1 1 $sym
    break
    elif [[ $cmd == 6 ]];then
    set 1 2 $sym
    break
    elif [[ $cmd == 7 ]];then
    set 2 0 $sym
    break
    elif [[ $cmd == 8 ]];then
    set 2 1 $sym
    break
    elif [[ $cmd == 9 ]];then
    set 2 2 $sym
    break
    elif [[ $cmd == h || $cmd == H ]];then
    logo
    help
    break
    elif [[ $cmd == "r" || $cmd == R ]]; then
	reset
	break
	elif [[ $cmd == c || $cmd == C ]];then
	logo
	break
	elif [[ $cmd == x || $cmd == X ]];then
    clear
    printf '\e[1;33m Bye Bye (^_-)\e[0m\n'
    exit
    break
    else
    printf '\e[1;36m For help enter h\n'
    fi
  done
  checkgame
  if [ $gamestatus != 1 ]; then
    printf "\e[31mGameover\n"
    player=$((player%2+1))
    printf "\e[33mPlayer $player ($sym) \e[1;33mwin!!\n"
    sleep 0.1
    echo printf "'\e[33mPlayer $player ($sym) \e[1;33mwin!!\n'" >> log.sh
    while [ 1 == 1 ]; do
    printf '\e[31m[x] \e[32mexit\n'
    read -p $'\e[1;34mPrese enter for restart' a
    if [[ $a == x || $a == X ]];then
    clear
    printf '\e[1;33m Bye Bye (^_-)\e[0m\n'
    exit
    break
    fi
	  reset
	  break
    done
  fi
done


