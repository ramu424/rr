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
