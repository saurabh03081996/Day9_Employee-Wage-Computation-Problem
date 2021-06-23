#! /bin/bash -x

echo "welcome to EmpWageComputation Problem"
isPresent=1
isAbsent=0
empWagePerHr=20
empFullDayHr=8
randomCheck=$((RANDOM%2))

if [ $isPresent -eq $randomCheck ]
then
	echo "Employee is Present"
	empDailyWage=$(($empWagePerHr*$empFullDayHr))
	echo "Daily Wage Of Employee is: " $empDailyWage
else
	echo "Employee is Absent"
fi
