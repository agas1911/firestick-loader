#!/bin/sh


# Check For Root

# Part of The FireStick Loader

# esc0rtd3w 2017



checkRootStatus(){

	userPriv="none"

	isRoot=$(id | grep root)

	case "$isRoot" in

		"")
		userPriv="none"
		echo "0">/sdcard/rootAccess.txt
		;;

		"root")
		userPriv="root"
		echo "1">/sdcard/rootAccess.txt
		;;

	esac
	
}
	
checkRootStatus

