#!/bin/sh


# Check For Root

# Part of The FireStick Loader

# esc0rtd3w 2017



checkRootStatus(){

	userPriv="none"
	
	#isRoot=$(id | grep root)
	
	if [ -f /system/xbin/su ];
	then
		isRoot="1"
	else
		isRoot="0"
	fi

	case "$isRoot" in

		"0")
		userPriv="none"
		echo "0">/sdcard/rootAccess.txt
		;;

		"1")
		userPriv="root"
		echo "1">/sdcard/rootAccess.txt
		;;

	esac
	
}
	
checkRootStatus

