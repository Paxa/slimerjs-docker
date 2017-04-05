FROM alpine:latest

MAINTAINER Pavel Evstigneev <pavel.evst@gmail.com>

RUN \
echo "http://dl-cdn.alpinelinux.org/alpine/edge/main" > /etc/apk/repositories && \
echo "http://dl-cdn.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories && \
echo "http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories

RUN \
# Install firefox and xvfb
apk update && apk upgrade && \
apk add xvfb bash firefox=51.0-r2 dbus ttf-freefont fontconfig && \
rm -rf /var/cache/apk/*

RUN \
# Create firefox + xvfb runner
mv /usr/bin/firefox /usr/bin/firefox-origin && \
echo $'#!/usr/bin/env sh\n\
Xvfb :0 -screen 0 1920x1080x24 -ac +extension GLX +render -noreset & \n\
DISPLAY=:0.0 firefox-origin $@ \n\
killall Xvfb' > /usr/bin/firefox && \
chmod +x /usr/bin/firefox

# Install slimerjs
COPY slimerjs /usr/local/slimerjs

# Make symlink for /usr/bin/slimerjs
RUN \
ln -s /usr/local/slimerjs/src/slimerjs /usr/bin/slimerjs && \
slimerjs /usr/local/slimerjs/examples/phantomjs/loadspeed.js http://google.com
