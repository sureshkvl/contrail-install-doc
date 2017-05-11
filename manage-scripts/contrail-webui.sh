if [ $1 = "status" ] || [ $1 = "start" ] || [ $1 = "stop" ]
then
    sudo service contrail-webui-webserver $1
    sudo service contrail-webui-jobserver $1
else
   echo "Argument error.  status or start or stop allowed"
fi
