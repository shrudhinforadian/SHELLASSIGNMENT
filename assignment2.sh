echo "Enter the Directory name to create"
read dir
if [ -z "$dir" ]
then
       echo "Directory name cannot be null"
else
	if [ -d "$dir" ]
	then 
		echo "file already exists"
	else
		mkdir $dir
		echo "file created successfully"
	fi
fi
