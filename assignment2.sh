
echo "Enter the Directory name to create"
read dir
#checking the input is null or not
if [ -z "$dir" ]
then
       echo "Directory name cannot be null"
else
	#Checking if the directory exist s or not
	if [ -d "$dir" ]
	then 
		echo "file already exists"
	else
		mkdir $dir
		echo "file created successfully"
	fi
fi
