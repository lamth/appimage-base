FROM ubuntu

WORKDIR /app

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update -y

RUN ln -fs /usr/share/zoneinfo/Asia/Ho_Chi_Minh /etc/localtime

RUN apt-get install -y libz-dev libfuse2 libglib2.0-0 libnss3 libatk1.0-0 libatk-bridge2.0-0 \
                libx11-xcb1 libgdk-pixbuf2.0-0 libgtk-3-0 libdrm2 libgbm1  libasound2
