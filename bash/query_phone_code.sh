#!bin/sh
#
# 查询staging的下行短信
#

phone=$1

if [ ! $phone ]
then
     echo "cmd like: $0 138xxxxxxxx"
     exit 0
fi

query="select content, from_unixtime(sendtime/1000) from
downlink_message where address='${phone}' order by id desc limit 1"

mysql -uroot -p3487e498770b9740086144fc03140876 -h 10.237.12.2 sms_data
-e "$query" | head -n2 |tail -n1
