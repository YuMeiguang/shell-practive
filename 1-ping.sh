#!/bin/bash
for IP in 120.26.202.{1..254};
do
  (
    ping $IP -c 2 &> /dev/null;
    if [ $? -eq 0 ];
    then
       echo $IP is alive
    fi
  )&
done
wait

