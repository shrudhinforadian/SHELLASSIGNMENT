#Function For Reading the Extension
readextension()
	{
	echo "enter the extension ('eg:.txt,.sh.....')"
	read ext
	if [ -z "$ext" ]
	then
		end
	else
		  readdestination
	fi
	}
#Function For Reading the Source Path	
readpath(){
	echo "Please Enter the path ('eg:/home/shrudhin/')"
	read dir
	if [ -z "$dir" ]
	then
		end
	else
		readextension
	fi
	}
#Function for treading the destination path	
readdestination(){
	echo "enter the destination ('eg:/home/shrudhin/')"
	read dest
	if [ -z "$dest" ]
	then 
		 end
	else
		 readcompress
	fi
	}
#Function For Reading the File Name to be saved after compression	
readcompress(){
	echo "enter the file name ('eg:test,trial,.....')"
	read file
	if [ -z "$file" ] 
	then 
		 end
	else
		 compress
	fi
	}
#Function for Compression Stage	
compress(){
	user=`whoami`
	d=`date`
	cd $dir
	tar -czf  $dest$file.tar.gz  *.$ext
	cd $dest
	if [ -f  "$file".tar.gz ]
	then
		cd $path
		echo "Compression completed successfully"
		echo $d" User:"$user"  Source Path:"$dir"  Extension:"$ext"  Destination Path:"$dest"  Compressed file:"$file".tar.gz">>log.txt
	else
		cd $path
		echo "Due to Some Compression errors compression not completed succcessfully"
		echo $d" User:"$user"  Compression Failed">>log.txt
	fi	
	}
#Termination Function	
end(){
	echo "process terminated due to insufficient data"
	}
#Start From here	
path=`pwd`	
echo "enter the path ('eg:/home/shrudhin/')"
read dir
if [ -z "$dir" ]
then
	 readpath
else
	 readextension
fi


	

