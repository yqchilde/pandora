FROM python:3.7-slim

MAINTAINER "Neo Peng <pengzhile@gmail.com>"

WORKDIR /opt/app
ADD . .
RUN pip install --upgrade pip && pip install .[api,cloud]

ENTRYPOINT ["bin/startup.sh"]
