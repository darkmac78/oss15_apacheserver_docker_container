mkdir /tmp/apache_dockerimage
cd /tmp/apache_dockerimage
wget https://raw.githubusercontent.com/darkmac78/oss15_apacheserver_docker_container/master/Dockerfile?token=AI2COIMQ5DTPZGF7KY56DQK6XAHKG
clear
ls /tmp/apache_dockerimage
sleep 5
docker build -t=oss152_webserver ./
docker run -d --name=oss15_WebServer -v /sys/fs/cgroup:/sys/fs/cgroup:ro oss152_webserver
clear
docker images
echo ""
echo ""
echo ""
docker ps -a
