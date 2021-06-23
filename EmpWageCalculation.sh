#! /bin/bash -x

echo "welcome to EmpWageComputation Problem"

isFullTime=1
isPartTime=0
empWagePerHr=20
totalSalary=0
totalWorkingDays=20

for (( day=1;day<=$totalWorkingDays;day++ ))
do
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
	empSalary=$(( $empWagePerHr*$empHrs ))
	totalSalary=$(( $totalSalary+$empSalary))

done
echo "Employee Wage is: " $empSalary
echo "Total salary of employee: "$totalSalary
