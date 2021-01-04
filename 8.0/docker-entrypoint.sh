#!/bin/bash

#
# set localtime

ln -sf /usr/share/zoneinfo/$LOCALTIME /etc/localtime

function set_conf {
    echo "$4">$2; IFSO=$IFS; IFS=$(echo -en "\n\b")
    for c in `printenv|grep $1`; do echo "`echo $c|cut -d "=" -f1|awk -F"$1" '{print $2}'`$3`echo $c|cut -d "=" -f2`" >> $2; done
    IFS=$IFSO
}
set_conf "MYSQLD__" "/etc/mysql/conf.d/40-my.cnf" " = " "[mysqld]"

#
# Run

/entrypoint.sh ${*}
