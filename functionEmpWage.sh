#! /bin/bash -x

isPartTime=1;
isFullTime=2;
maxHrsInMonth=10;
empRatePerHr=20;
numWorkingDays=20;

totalEmpHr=0;
totalWorkingDays=0;

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

while [[ $totalWorkingHours -lt $maxHrsInMonth && $totalWorkingDays -lt $numWorkingDays ]]
do
	 ((totalWorkingDays++))
         getWorkingHours $((RANDOM%3));
	totalWorkingHours=$(($totalWorkingHour+$workHrs));
done
totalSalary=$(($totalWorkingHours*$empRatePerHr));
