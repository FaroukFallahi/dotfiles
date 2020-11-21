r=999

toggle() {
    	r=$((r + 1))
}

toggle_R() {
	r=$((r - 1))
}

trap "toggle" USR1
trap "toggle_R" USR2

while true; do
	if [[ $(($r %3 )) -eq 0 ]]; then
        	date '+%I:%M :: %A'
    	elif [[ $(($r %3 )) -eq 1 ]]; then
        	jdate '+%Y/%m/%d :: %I:%M'
    	else
        	date '+%I:%M :: %d/%m/%Y'
    	fi
    	sleep 1 &
    	wait
done
