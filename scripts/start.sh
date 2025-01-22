#!/bin/bash
# 기존 애플리케이션 종료
PID=$(pgrep -f 'java -jar /home/ec2-user/build/elice-0.0.1-SNAPSHOT.jar')
if [ -n "$PID" ]; then
    sudo kill -9 $PID
fi

# 새 애플리케이션 시작
nohup java -jar /home/ec2-user/build/elice-0.0.1-SNAPSHOT.jar > /dev/null 2>&1 &