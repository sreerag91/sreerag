read num
result=$(echo "${num}" | bc -l)
printf "%.3f" $result
