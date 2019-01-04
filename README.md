
# Node with Maven and JDK

## Build Status

[![Build Status](https://travis-ci.org/ringcentral-docker/node.svg?branch=master)](https://travis-ci.org/ringcentral-docker/node)

## Image description

* Base on the latest version of ringCentral/maven Docker Image : [link](https://hub.docker.com/r/ringcentral/maven/)

* node version: v10.15.0
* npm version:

```json
{
  npm: '6.4.1',
  ares: '1.15.0',
  cldr: '33.1',
  http_parser: '2.8.0',
  icu: '62.1',
  modules: '64',
  napi: '3',
  nghttp2: '1.34.0',
  node: '10.15.0',
  openssl: '1.1.0j',
  tz: '2018e',
  unicode: '11.0',
  uv: '1.23.2',
  v8: '6.8.275.32-node.45',
  zlib: '1.2.11'
}
```
* yarn version: 1.7.0


## How to use this image

## Get the Image

```bash
docker pull ringcentral/node:latest
```

for more detail information please refer this url:
<https://github.com/ringcentral-docker/node>