FROM python:3.9-slim

MAINTAINER "Neo Peng <pengzhile@gmail.com>"

WORKDIR /opt/app

VOLUME /data

ADD . .

RUN pip --no-cache-dir install --upgrade pip && pip --no-cache-dir install .[api,cloud]

ENTRYPOINT ["bin/startup.sh"]
