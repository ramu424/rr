#PASS_MAX_DAYS_SHADOW
echo "1.1.1.2,Password Requirements System Value/Parameter: PASS_MAX_DAYS Checking" >> $SCR_DIR_PATH/$HC_LOG
PASS_MAX_SHADOW=`cat /etc/shadow | awk -F: '{if (($2 != "*" && $2 !="!!")  && $5 > 5 &&  $5 !="" ) { print $1":"$5} }'`
for SHADOW_USERS in `echo "$PASS_MAX_SHADOW" | awk -F: '{print $1}'`
do	
SHADOW_USERS_MAX_VALUE=`echo "$PASS_MAX_SHADOW" | grep -w $SHADOW_USERS | awk -F: '{print $2}'`
if [ $SHADOW_USERS_MAX_VALUE -eq 90 ]
then
   if [ "$PASS_MAX_DAYS_SHADOW_STATUS" != "FAIL" ]
   then
      PASS_MAX_DAYS_SHADOW_STATUS="PASS"
   else
        PASS_MAX_DAYS_SHADOW_STATUS="FAIL"
     if [ $SHADOW_USERS_MAX_VALUE -ne 90 ];then
        echo "$SHADOW_USERS has $SHADOW_USERS_MAX_VALUE  as Password maximum age in /etc/shadow" >> $SCR_DIR_PATH/$HC_LOG
     fi
   fi
else
      PASS_MAX_DAYS_SHADOW_STATUS="FAIL"
      echo "$SHADOW_USERS has $SHADOW_USERS_MAX_VALUE  as Password maximum age in /etc/shadow" >> $SCR_DIR_PATH/$HC_LOG
fi
done
echo "1.1.1.2,Password Requirements System Value/Parameter: PASS_MAX_DAYS,90,$SHADOW_USERS_MAX_VALUE,$PASS_MAX_DAYS_SHADOW_STATUS" >> $SCR_DIR_PATH/$HC_LOG
echo "1.1.1.2,Password Requirements System Value/Parameter: PASS_MAX_DAYS,90,$SHADOW_USERS_MAX_VALUE,$PASS_MAX_DAYS_SHADOW_STATUS" >> $SCR_DIR_PATH/$FILENAME
echo "1.1.1.2,Password Requirements System Value/Parameter: PASS_MAX_DAYS,90,$SHADOW_USERS_MAX_VALUE,$PASS_MAX_DAYS_SHADOW_STATUS"
