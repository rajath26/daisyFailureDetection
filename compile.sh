#!/bin/bash

gcc ./inc/host.h
if [ $? -ne 0 ]
then 
    echo "Compilation failed"
fi
gcc ./inc/logger.h
if [ $? -ne 0 ]
then
    echo "Compilation failed"
fi
gcc ./inc/udp.h
if [ $? -ne 0 ]
then
    echo "Compilation failed"
fi
gcc ./src/host.c -lpthread -o ./src/daisyFD
if [ $? -ne 0 ]
then
    echo "Compilation failed"
fi

