#! /bin/bash -x

echo "welcome to EmpWageComputation Problem"

isFullTime=1
isPartTime=0
empWagePerHr=20
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
echo "Employee Wage is: " $empSalary
