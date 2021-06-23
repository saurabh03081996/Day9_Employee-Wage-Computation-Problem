#! /bin/bash -x

echo "welcome to EmpWageComputation Problem"

isFullTime=1
isPartTime=0
empWagePerHr=20
totalSalary=0
totalWorkingDay=20
totalWorkingHr=100

empWorkingHrs=0
empWorkingDays=0


while [[ $empWorkingHrs -lt $totalWorkingHr && $empWorkingDays -lt $totalWorkingDay ]]
do
	(( empWorkingDays++ ))
	randomCheck=$((RANDOM%3))

	case $randomCheck in 
     		$isFullTime)
   	  		empHrs=8
          		;;
     		$isPartTime)
	  		empHrs=4
	  		;;
     		*)
	  		empHrs=0
	  		;;
	esac
	empWorkingHrs=$(( $empWorkingHrs + $empHrs ))
	

done
totalSalary=$(( $empWorkingHrs*$empWagePerHr ))

echo "Total salary of employee: "$totalSalary
