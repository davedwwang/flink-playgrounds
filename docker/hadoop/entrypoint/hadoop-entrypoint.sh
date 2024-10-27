#!/bin/bash
service=$1
component=$2
if [ ! -n "$component" ];then
  echo "missing arg"
  exit 1
fi

/opt/hadoop/bin/$service --daemon start $component
pidfile=/tmp/hadoop-hadoop-$component.pid
sleep 2s
while true; do
	ps -p `cat $pidfile` > /dev/null
  if [[ $? -ne 0 ]];then
    break
  fi
  sleep 1s
done
echo "$component exit"
exit 1