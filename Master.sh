SECONDS=0
cd /home/shizzle2889/scripts
sh AICP.sh
cd /home/shizzle2889/scripts
sh AOKP.sh
cd /home/shizzle2889/scripts
sh xenonhd.sh
cd /home/shizzle2889/scripts
sh VOS.sh
cd /home/shizzle2889/scripts
echo 'All appear to be completed. Please verify by checking the cloud.'
if (( $SECONDS > 3600 )) ; then
    let "hours=SECONDS/3600"
    let "minutes=(SECONDS%3600)/60"
    let "seconds=(SECONDS%3600)%60"
    echo "Completed in $hours hour(s), $minutes minute(s) and $seconds second(s)" 
elif (( $SECONDS > 60 )) ; then
    let "minutes=(SECONDS%3600)/60"
    let "seconds=(SECONDS%3600)%60"
    echo "Completed in $minutes minute(s) and $seconds second(s)"
else
    echo "Completed in $SECONDS seconds"
fi