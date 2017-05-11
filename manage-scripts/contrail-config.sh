if [ $1 = "status" ] || [ $1 = "start" ] || [ $1 = "stop" ]
then
    sudo service contrail-discovery $1
    sudo service contrail-api $1
    sudo service contrail-schema $1
    sudo service contrail-svc-monitor $1
    sudo service contrail-device-manager $1
else
   echo "Argument error.  status or start or stop allowed"
fi
