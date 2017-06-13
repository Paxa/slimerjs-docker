## Slimerjs with firefox and xvfb, runs on alpine linux

* alpine 3.6
* firefox 52
* slimerjs e886cab (30 may 2017)

Uncompressed size: 220 MB

Usage:

    FROM evpavel/slimerjs-alpine:latest
    RUN slimerjs /usr/local/slimerjs/examples/phantomjs/loadspeed.js http://google.com

---

## Development

You need to init submodules first

    git submodule update --init
