#!/bin/bash
#
#COOP Health Check script
#Script has been updated by Jeevan Noronha as per COOP Account TECH_SPECS
#

red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`
SERVER_NAME=`uname -n`
SERVER_UPTIME=`uptime | awk -F',' '{print $1}'`
SCR_DIR_PATH="/tmp/`uname -n`"-Healthcheck"`date +%Y-%m-%d-%H.%M`"
OPT_OCR_LOG="opt_ocr.log"
VAR_OCR_LOG="var_ocr.log"
TMP_OCR_LOG="tmp_ocr.log"
USR_LOCAL_OCR_LOG="usr_local_ocr.log"
mkdir $SCR_DIR_PATH
FILENAME=$SERVER_NAME"_Healthcheck.csv"
HC_LOG=$SERVER_NAME"_Healthcheck.log"
echo ",,WG Health Check Sctipt Output for $SERVER_NAME,," > $SCR_DIR_PATH/$FILENAME
echo "Server Name,$SERVER_NAME" >>  $SCR_DIR_PATH/$FILENAME
echo "Server Uptime,$SERVER_UPTIME" >>  $SCR_DIR_PATH/$FILENAME
echo "" >> $SCR_DIR_PATH/$FILENAME
echo "" >> $SCR_DIR_PATH/$FILENAME
echo "S.No,Type,Expected Value,Current Value,Status" >> $SCR_DIR_PATH/$FILENAME
echo "Welcome to COOP Health Check Script (Linux) Date : `date`" > $SCR_DIR_PATH/$HC_LOG
UPTIME=`uptime | awk -F\, '{print $1}' | awk -F'up' '{print $2}'`

#PASS_MAX_DAYS
echo "1.1.1.1,Password Requirements in /etc/login.defs:PASS_MAX_DAYS,90,Checking...." >> $SCR_DIR_PATH/$HC_LOG
PASS_MAX_DAYS_LOGIN_DEFS=`cat /etc/login.defs | grep PASS_MAX_DAYS | grep -v '#' | awk -F" " '{print $2}'`
#echo "$PASS_MAX_DAYS_LOGIN_DEFS"
if [ $PASS_MAX_DAYS_LOGIN_DEFS -eq 90 ]	
then
      PASS_MAX_DAYS_LOGIN_DEFS_STATUS="PASS"
else
      PASS_MAX_DAYS_LOGIN_DEFS_STATUS="FAIL"
      echo "PASS_MAX_DAYS value in /etc/login.defs = $PASS_MAX_DAYS_LOGIN_DEFS" >> $SCR_DIR_PATH/$HC_LOG
fi
