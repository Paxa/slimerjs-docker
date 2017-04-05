## Slimerjs with firefox and xvfb, runs on alpine linux

* alpine 3.5
* firefox 51
* slimerjs 7b23189 (15 mar 2017)

Uncompressed size: 226 MB

Usage:

    FROM evpavel/slimerjs-alpine:latest
    RUN slimerjs /usr/local/slimerjs/examples/phantomjs/loadspeed.js http://google.com

---

## Development

You need to init submodules first

    git submodule update --init