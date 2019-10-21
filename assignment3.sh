echo "enter the path"
read dir
echo "enter the extension"
read ext
echo "enter the destination"
read dest
echo "enter the file name"
read file
d=`date`
tar -czvf  $dest$file.tar $dir*.$ext
echo $d"  Source Path:"$dir"  Extension:"$ext"  Destination Path:"$dest"  Compressed file:"$file".tar">>log.txt

