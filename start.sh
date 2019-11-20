#!/bin/bash
SOURCE="$0"
while [ -h "$SOURCE"  ]; do # resolve $SOURCE until the file is no longer a symlink
    DIR="$( cd -P "$( dirname "$SOURCE"  )" && pwd  )"
    SOURCE="$(readlink "$SOURCE")"
    [[ $SOURCE != /*  ]] && SOURCE="$DIR/$SOURCE" # if $SOURCE was a relative symlink, we need to resolve it relative to the path where the symlink file was located
done
DIR="$( cd -P "$( dirname "$SOURCE"  )" && pwd  )"
echo ${DIR}
BASE_DIR="$( dirname "$DIR"  )"
SERVICE_NAME=${BASE_DIR##*/}
echo ${SERVICE_NAME}

JAR_NAME=/opt/webapps/"$SERVICE_NAME"-1.0.0.jar
TARGET=${BASE_DIR}/lib/"$SERVICE_NAME".jar
BACK=${BASE_DIR}/history/"$SERVICE_NAME"-back.jar
HISTORY=${BASE_DIR}/history/"$SERVICE_NAME"-`date +"%Y%m%d%H%M"`.jar

tpid=`ps -ef|grep "$SERVICE_NAME"|grep 'jar'|awk '{print $2}'`
echo ${tpid}
if [ "${tpid}" != "" ]; then
    echo 'Stop Process...'
    kill $tpid
    sleep 5
tpid=`ps -ef|grep "$SERVICE_NAME"|grep 'jar'|awk '{print $2}'`
    if [ "${tpid}" != "" ]; then
        echo 'Kill Process!'
        kill -9 $tpid
    else
        echo 'Stop Success!'
    fi
fi

if [ -f "$JAR_NAME" ]; then
    if [ -f "$TARGET" ]; then
        if [ -f "$BACK" ]; then
            mv "$BACK" "$HISTORY"
            echo Check out History Success!
        fi

        mv "$TARGET" "$BACK"
        echo Backup Success!
    fi

    mv "$JAR_NAME" "$TARGET"
    echo mv Jar Success!
fi


nohup java -Xms128m -Xmx256m -jar $TARGET --spring.profiles.active=test-zf >${BASE_DIR}/logs/out.log 2>&1 &
echo Start Success!

