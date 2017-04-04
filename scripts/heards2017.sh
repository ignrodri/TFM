#!/bin/bash

export PATH=/home/ec2-user/bin/antsbin/bin:$PATH
export ANTSPATH=/home/ec2-user/bin/antsbin/bin
export ITK_GLOBAL_DEFAULT_NUMBER_OF_THREADS=1

cd /home/ec2-user/TFM/images
/bin/rm -f /home/ec2-user/TFM/images/stop
/home/ec2-user/TFM/scripts/heards2017.py
/bin/rm -f /home/ec2-user/TFM/images/stop

