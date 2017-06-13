FROM alpine:3.6

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

# Make symlink for /usr/bin/slimerjs
RUN \
ln -s /usr/local/slimerjs/src/slimerjs /usr/bin/slimerjs && \
slimerjs /usr/local/slimerjs/examples/phantomjs/loadspeed.js http://google.com
