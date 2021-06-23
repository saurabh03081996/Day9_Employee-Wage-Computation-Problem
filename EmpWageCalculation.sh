#! /bin/bash -x 

isPartTime=1;
isFullTime=2;
maxHrsInMonth=100;
empRatePerHr=20;
numWorkingDays=20;

totalEmpHr=0;
totalWorkingDays=0;

declare -A dailyEmpWage
function getWorkingHours() {
	case $1 in
                $isFullTime)
                        workHrs=8
                        ;;
                $isPartTime)
                        workHrs=4
                        ;;
                *)
                        workHrs=0
                        ;;
        esac
}
function getEmpWage(){
	local empHrs=$1
	echo $(( $empHrs * $empRatePerHr ))
}

while [[ $totalWorkingHours -lt $maxHrsInMonth && $totalWorkingDays -lt $numWorkingDays ]]
do
	 ((totalWorkingDays++))
         getWorkingHours $((RANDOM%3));
	totalWorkingHours=$(($totalWorkingHour+$workHrs));
	dailyEmpWage[totalWorkingDays]="$( getEmpWage $workHrs )"
done
totalSalary=$(($totalWorkingHours*$empRatePerHr));
echo ${dailyEmpWage[@]}
echo ${!dailyEmpWage[@]}
echo $totalSalary
