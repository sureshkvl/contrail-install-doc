if [ $1 = "status" ] || [ $1 = "start" ] || [ $1 = "stop" ]
then
    sudo service contrail-collector $1
    sudo service contrail-query-engine $1
    sudo service contrail-analytics-api $1
    sudo service contrail-snmp-collector $1
    sudo service contrail-topology $1
    sudo service contrail-alarm-gen $1
else
   echo "Argument error.  status or start or stop allowed"
fi
