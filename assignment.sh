if ! [ -z $1 ]
then
if [ $1 = "fedora" ]
then
echo "CentOS"
elif [ $1 = "redhat" ]
then 
echo "RHEL"
else
echo "Need one argument{redhat | fedora }"
fi
else
echo "Need one argument{redhat | fedora }"
fi
