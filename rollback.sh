#jar包、编辑localhost文件、启动tomcat
APP_NAME=converge-pay
PORT=8088
TARGET=/opt/"$APP_NAME"/lib/"$APP_NAME".jar
BACK=/opt/"$APP_NAME"/history/"$APP_NAME"-back.jar
ERROR=/opt/"$APP_NAME"/lib/"$APP_NAME"-error-`date +"%Y%m%d%H%M"`.jar

tpid=`netstat -nlpa | grep "0.0.0.0" | grep "$PORT" | awk '{print $7}' | awk -F "/" '{print $1}'`
echo ${tpid}
if [ ${tpid} ]; then
    echo 'Stop Process...' 
    kill $tpid
    sleep 20
    if [ ${tpid} ]; then
	echo 'Kill Process!'
	kill -9 $tpid
    else
	echo 'Stop Success!'
    fi
fi
mv "$TARGET" "$ERROR"
echo Check out Error Success!
cp "$BACK" "$TARGET"
echo Check out Back Success!
nohup java -jar $TARGET --spring.profiles.active=test-zf >/opt/"$APP_NAME"/logs/out.log 2>&1 &
echo Rollback Success!

