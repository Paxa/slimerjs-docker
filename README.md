## Slimerjs with firefox and xvfb, runs on alpine linux

* alpine 3.5
* firefox 45
* slimerjs 07282f2 (13 dec 2016)

Uncompressed size: 203 MB

Usage:

```
FROM slimerjs-alpine:latest

RUN slimerjs /usr/local/slimerjs/examples/phantomjs/loadspeed.js http://google.com
```

---

## Building

To build you need to download slimerjs to `./slimerjs`, then run `docker build .`