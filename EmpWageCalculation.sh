#! /bin/bash -x

echo "welcome to EmpWageComputation Problem"
isPresent=1
isAbsent=0
randomCheck=$((RANDOM%2))

if [ $isPresent -eq $randomCheck ]
then
	echo "Employee is Present"
else
	echo "Employee is Absent"
fi
