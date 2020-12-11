#! /bin/bash
# cars.sh
# Hayden Fargo
N=1
while [ "$N" -lt "3" ]
do
   echo "1. type the number 1 to enter a new car"
   echo "2. type the number 2 to display the list of cars"
   echo "3. type the number 3 to quit and exit the program"
   read -r N
   case "$N" in
     "1")  echo "Year"
           read -r Y
	   echo "Make"
	   read -r M
	   echo "Model"
	   read -r O
	   FIN="$Y:$M:$O"
           echo "$FIN" >> My_old_cars;;
     "2")  sort My_old_cars;;
     "3")  echo "Goodbye";;
   esac
done
