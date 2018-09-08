#!/bin/bash

###############################################
##     Colorize and add text parameters      ##
###############################################
#
blk=$(tput setaf 0) # black
red=$(tput setaf 1) # red
grn=$(tput setaf 2) # green
ylw=$(tput setaf 3) # yellow
blu=$(tput setaf 4) # blue
mga=$(tput setaf 5) # magenta
cya=$(tput setaf 6) # cyan
wht=$(tput setaf 7) # white
#
txtbld=$(tput bold) # Bold
bldblk=${txtbld}$(tput setaf 0) # black
bldred=${txtbld}$(tput setaf 1) # red
bldgrn=${txtbld}$(tput setaf 2) # green
bldylw=${txtbld}$(tput setaf 3) # yellow
bldblu=${txtbld}$(tput setaf 4) # blue
bldmga=${txtbld}$(tput setaf 5) # magenta
bldcya=${txtbld}$(tput setaf 6) # cyan
bldwht=${txtbld}$(tput setaf 7) # white
txtrst=$(tput sgr0) # Reset
#
###########################################################
##  Start schript                                        ##
###########################################################

###########################################################
##                                                       ##
## set directory                                         ##
##ß                                                      ##
targetdir="/mnt/SSD2/OpenWRT/openwrt/target/linux/ramips"
filedir="files"
##                                                       ##
###########################################################

echo
echo "${bldred} ......................................................... ${txtrst}"
echo
echo "${bldwht} targetdir = $targetdir ${txtrst}"
echo
echo "${bldred} ///////////////////////////////////////////////////////// ${txtrst}"
echo
sleep 2

echo
echo " ${bldred} removing old files!... ${txtrst}"
rm -r $targetdir/base-files/etc/board.d/02_network
rm -r $targetdir/base-files/etc/diag.sh
rm -r $targetdir/base-files/lib/upgrade/platform.sh
rm -r $targetdir/base-files/lib/ramips.sh
rm -r $targetdir/image/mt76x8.mk
echo "${bldgrn}...done! ${txtrst}"
echo
sleep 2 

echo "${bldwht} ...copying new files to their directory... ${txtrst}"
sleep 2
echo
echo "${bldwht} copying ${bldred} 02_network ${txtrst} ${bldwht} to: ${bldred} base-files/etc/board.d/ ${txtrst}"
echo
cp -r $filedir/02_network		$targetdir/base-files/etc/board.d/02_network
echo
sleep 1
#
echo "${bldwht} copying ${bldred} diag.sh ${txtrst} ${bldwht} to: ${bldred} base-files/etc/ ${txtrst}"
echo
cp -r $filedir/diag.sh			$targetdir/base-files/etc/diag.sh
echo
sleep 1
#
echo "${bldwht} copying ${bldred} platform.sh ${txtrst} ${bldwht} to: ${bldred} base-files/lib/upgrade/ ${txtrst}"
echo
cp -r $filedir/platform.sh		$targetdir/base-files/lib/upgrade/platform.sh
echo
sleep 1
#
echo "${bldwht} copying ${bldred} ramips.sh ${txtrst} ${bldwht} to: ${bldred} base-files/lib/ ${txtrst}"
echo
cp -r $filedir/ramips.sh 		$targetdir/base-files/lib/ramips.sh
echo
sleep 1
#
echo "${bldwht} copying ${bldred} Q500-MT7628AN.dts ${txtrst} ${bldwht} to: ${bldred} dts/ ${txtrst}"
echo
cp -r $filedir/Q500-MT7628AN.dts $targetdir/dts/Q500-MT7628AN.dts
echo
sleep 1
#
echo "${bldwht} copying ${bldred} mt76x8.mk ${txtrst} ${bldwht} to: ${bldred} image/ ${txtrst}"
echo
cp -r $filedir/mt76x8.mk			$targetdir/image/mt76x8.mk
echo
sleep 1
#
echo
echo "${bldred} ......................................................... ${txtrst}"
echo
echo "${bldgrn} ...All done ${txtrst}"
echo
echo "${bldred} ///////////////////////////////////////////////////////// ${txtrst}"
echo
sleep 2

exit
