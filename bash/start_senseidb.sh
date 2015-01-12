#!/bin/bash

echo "zookeeper home : $ZK_HOME"
echo "rabbitMQ home : $RM_HOME"
echo "senseiDB home : $SD_HOME"

read -p "Would you start up zookeeper(yes or no)?" START_ZK
read -p "Would you start up rabbitMQ(yes or no)?" START_RM
read -p "Would you start up senseiDB(yes or no)?" START_SD

if [ "yes" == "$START_ZK" ];then
	echo -e "+Tring to start zookeeper..."

	echo -e "++Checking zookeeper pid dir existence"
	ZK_CFG=$ZK_HOME/conf/zoo.cfg
	ZK_PID_DIR=`grep dataDir "$ZK_CFG" | sed -e 's/.*=//'`
	if [ ! -d $ZK_PID_DIR ]; then
		echo "+++Try to mkdir ${ZK_PID_DIR}"
		mkdir -p $ZK_PID_DIR
	fi
	
	$ZK_HOME/bin/zkServer.sh start
	if [ $? -ne 0 ]; then
		echo "+Failed to start zookeeper!"
		exit 1;
	fi
fi

if [ "yes" == "$START_RM" ];then
	echo -e "+Trying to start rabbitMQ..."	

	sudo $RM_HOME/sbin/rabbitmq-server start --detached &
	if [ $? -ne 0 ]; then
		echo "+Failded to start rabbitMQ!"
		exit 1;
	fi
fi

if [ "yes" == "$START_SD" ];then
	echo -e "+Trying to start senseiDB..."	
	
	read -p "+Please enter the sensei example name which you wanna to start:" EXAMPLE_NAME
	TAG="false"
	for var in $(ls $SD_HOME/example)
	do 
		if [ "$var" == "$EXAMPLE_NAME" ];then
			TAG="true"
		fi
	done

	if [ "true" == "$TAG" ];then
		$SD_HOME/bin/start-sensei-node.sh $SD_HOME/example/$EXAMPLE_NAME/conf
	else
		echo -e "++Invalid sensei example name."
		exit -1
	fi

	if [ $? -ne 0 ];then
		echo "Faild to start Senseidb at example $1"
		exit -1
	fi
fi
