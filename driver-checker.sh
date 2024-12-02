#!/bin/bash
case $1 in 
new)
        echo "Please Insert Your Name :"
        read name
        echo "Please Insert Your Age :"
        read age
        echo "Please Insert Your Vision Rate 1-6 :"
        read vision_rate
                if [ $age -ge 18 ] && [ $vision_rate -ge 4 ]
                then
                        status="eligible"
                        echo "You are Eligible for a driver's license"
                else
                        status="not eligible"
                        echo "You are not Eligible for a driver's license"
                fi
        echo "$name:$age:$vision_rate:$status" >> log.txt
;;
get)
        echo "Please Select the name of the user that you want to see its result :"
        awk 'BEGIN { FS = ":" } ; { print $1 }' log.txt
        read getname
	awk -v name="$getname" -F: '$1 == name {print $1 ":" $4 }' log.txt
;;
list)
        awk -F: '{print $1 ":" $4}' log.txt
;;
*)
echo "Invalide argument. Please use one of these arguments:- new, get,or list"
;;
esac
