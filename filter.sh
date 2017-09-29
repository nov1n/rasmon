cat $1 \
    | grep -v 'UNKNOWN\|eduroam' \
    | awk -F "~" '$5 > -60' \
    | sort -t "~" -u -k2,2 \
    | column -t -s "~" \
    | vim -
