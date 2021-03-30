#!/bin/bash
 
echo  "Prepre debug files to Target now"


MANUAL_START_GDBSERVER_SEIRAL_TO_GET_STDOUT="yes"
## if gdbserver is launched manually from serial port, you can get stdout of your debugged process.   
## In that case, please skip the flowing setup
if [ "$MANUAL_START_GDBSERVER_SEIRAL_TO_GET_STDOUT" ]
then
    exit 0 
fi


## make sure current user has ssh permission in Target rootfs
## sudo   cat ~lake/.ssh/id_rsa.pub   >>/home/lake/nfs/rootdisk-5202freesat/root/.ssh/authorized_keys

###  luanch hello on target before attach 
PID_TARGET_PROCESS=`ssh -n -f root@10.213.7.79 "/bin/sh -c 'pidof  hello '"`

if [ -z "$PID_TARGET_PROCESS" ]
then
    ## NFS folder should have your current user write permission
    ## chown  lake  /home/lake/nfs/rootdisk-5202freesat/bin/recordingservice
    ###scp  arm23/recordingservice   lake@10.213.7.110:/home/lake/nfs/rootdisk-5202freesat/bin/recordingservice
    scp  ./hello    lake@10.213.7.110:/home/lake/nfs/rootdisk-5202freesat/bin/hello 
else 
    ssh root@10.213.7.79 killall hello &> /dev/null
 fi

PID_TARGET_GDBSERVER=`ssh -n -f root@10.213.7.79 "/bin/sh -c 'pidof  gdbserver '"`
if [ "$PID_TARGET_GDBSERVER" ]
then
        ## kill the old gdbserver
        ssh root@10.213.7.79 killall gdbserver &> /dev/null
        GDBSERVER_NOT_START=1 
else
    GDBSERVER_NOT_START=1
fi

if [ $GDBSERVER_NOT_START -eq 1 ]
then
    #Compile myprogram and launch gdbserver, listening on port 9091, and ssh tunnel to your local server
    ##ssh   -L9091:localhost:9091   user@remote   "/bin/sh -l -c 'gdbserver :9091 ./myprogram'"
    ssh -n -f root@10.213.7.79  "/bin/sh -c 'cd /tmp; gdbserver         localhost:1234   /bin/hello  '"  
 fi
 
 

echo  "Prepre debug files to Target DONE  "

