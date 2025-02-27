FROM ubuntu:18.04
LABEL org.opencontainers.image.source https://github.com/ant-media/ant-media-server
ARG RELEASE_URL

RUN apt-get update --fix-missing \
	&& apt-get -y install libx11-dev unzip wget openjdk-11-jdk ca-certificates p11-kit --no-install-recommends \
	&& wget --no-check-certificate https://github.com/ant-media/Ant-Media-Server/releases/download/ams-v2.5.3/ant-media-server-community-2.5.3.zip -O /tmp/ant.zip \
	&& 	unzip /tmp/ant.zip -d /usr/local/ \
	&& 	mv /usr/local/ant-media-server /usr/local/antmedia \
	&& 	rm -rfv /var/lib/apt/lists/* /tmp/*

WORKDIR /usr/local/antmedia
RUN chmod 775 /usr/local/antmedia/start.sh
ENTRYPOINT /bin/bash -c /usr/local/antmedia/start.sh
