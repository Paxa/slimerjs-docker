FROM alpine:latest

MAINTAINER Pavel Evstigneev <pavel.evst@gmail.com>

RUN \
# Install firefox and xvfb
apk update && apk upgrade && \
apk add xvfb bash firefox-esr dbus ttf-freefont fontconfig && \
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

# Make alias to /usr/bin/slimerjs
RUN \
ls /usr/local/ -lah && \
echo $'#!/usr/bin/env sh\n/usr/local/slimerjs/src/slimerjs $@' > /usr/bin/slimerjs && \
chmod +x /usr/bin/slimerjs && \
slimerjs --version

RUN slimerjs /usr/local/slimerjs/examples/phantomjs/loadspeed.js http://google.com
