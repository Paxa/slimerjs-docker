## Slimerjs with firefox and xvfb, runs on alpine linux

[![Docker Build Statu](https://img.shields.io/docker/build/evpavel/slimerjs-alpine.svg)](https://hub.docker.com/r/evpavel/slimerjs-alpine)
[![Docker Pulls](https://img.shields.io/docker/pulls/evpavel/slimerjs-alpine.svg)](https://hub.docker.com/r/evpavel/slimerjs-alpine)

* alpine 3.6
* firefox 52
* slimerjs 641eae8 (13 oct 2017)

Uncompressed size: 220 MB

Usage:

    FROM evpavel/slimerjs-alpine:latest
    RUN slimerjs /usr/local/slimerjs/examples/phantomjs/loadspeed.js http://google.com

---

## Development

You need to init submodules first

    git submodule update --init
