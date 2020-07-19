# Docker image for Ant Media Server


## Run latest version
```
docker run --name ams -d --net=host \
	nibrev/ant-media-server:latest
```
Access to webinterface: http://127.0.0.1:5080

---

This image based on Ubuntu 18.04 and [Ant Media Server Community Edition 2.0.0](https://github.com/ant-media/Ant-Media-Server)

# Supported tags and respective `Dockerfile` links
* [`latest`, `2.0.0`](https://github.com/rez0n/docker-ant-media-server/blob/master/Dockerfile)