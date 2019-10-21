echo "Enter the Directory name to create"
read dir
if [ -d "$dir" ]
then 
echo "file already exists"
else
mkdir $dir
fi