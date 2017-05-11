# This has to be executed in  Devstack/compute machine where contrail-vrouter, vrouter agent installed.
if [ $1 = "status" ] || [ $1 = "start" ] || [ $1 = "stop" ]
then
    sudo service contrail-vrouter-agent  $1
else
   echo "Argument error.  status or start or stop allowed"
fi
echo "checking the vrouter kernel modules "
lsmod | grep vrouter
#Load the module if not loaded "modprobe vrouter" or insmod vrouter.ko