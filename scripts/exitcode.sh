package=htop
sudo apt install $package
if [ $? -eq 0 ] ; then 
	echo "the package install was succefull "
	echo " the $package is avaiable"
	which $package
else
	echo "failed to install the package"
	echo "this is the exitcode $?"
fi
