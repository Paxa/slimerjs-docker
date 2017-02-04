## Slimerjs with firefox and xvfb, runs on alpine linux

* alpine 3.5
* firefox 45
* slimerjs 07282f2 (13 dec 2016)

Uncompressed size: 201 MB

Usage:

    FROM evpavel/slimerjs-alpine:latest
    RUN slimerjs /usr/local/slimerjs/examples/phantomjs/loadspeed.js http://google.com

---

## Development

You need to init submodules first

    git submodule update --init