## Slimerjs with firefox and xvfb, runs on alpine linux

[![Docker Build Statu](https://img.shields.io/docker/build/evpavel/slimerjs-alpine.svg)](https://hub.docker.com/r/evpavel/slimerjs-alpine)
[![Docker Pulls](https://img.shields.io/docker/pulls/evpavel/slimerjs-alpine.svg)](https://hub.docker.com/r/evpavel/slimerjs-alpine)

* alpine 3.7
* firefox 58
* slimerjs 1.0 (23 mar 2018)

Uncompressed size: 257 MB

Usage:

    FROM evpavel/slimerjs-alpine:latest
    RUN slimerjs /usr/local/slimerjs/examples/phantomjs/loadspeed.js http://google.com

---

## Development

You need to init submodules first

    git submodule update --init
