#! /bin/bash -x

echo "welcome to EmpWageComputation Problem"

isFullTime=1
isPartTime=0
empWagePerHr=20
randomCheck=$((RANDOM%3))

if [ $isFullTime -eq $randomCheck ]
then
	empHrs=8

elif [ $isPartTime -eq $randomCheck ]
then
	empHrs=4
else
	empHrs=0
	echo "Employee is Absent...."
fi
empSalary=$(( $empWagePerHr*$empHrs ))
echo "Employee Wage is: " $empSalary
