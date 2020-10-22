while [ true ]
do
biteSize0=`ls -alF|grep $1|awk '{print $5}'`
sleep 1 
biteSize1=`ls -alF|grep $1|awk '{print $5}'`
MbSize=`awk 'BEGIN{printf "\r%.2f\n",'$biteSize1'/1000000}'`
MbSpeed=`awk 'BEGIN{printf "%.2f\n",('$biteSize1-$biteSize0')/1000000}'`
echo -n "${MbSize}Mb  Speed ${MbSpeed}Mb/s"
done
