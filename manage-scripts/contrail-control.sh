if [ $1 = "status" ] || [ $1 = "start" ] || [ $1 = "stop" ]
then
    sudo service contrail-control $1
    sudo service contrail-dns $1
    sudo service contrail-named $1
else
   echo "Argument error.  status or start or stop allowed"
fi
