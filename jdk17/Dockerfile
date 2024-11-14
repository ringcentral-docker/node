FROM node:$NODE_VERSION-alpine AS node

FROM registry.danbao.dev/ringcentral/maven:3.9.9-jdk17.0.13
LABEL maintainer="john.lin@ringcentral.com"

ENV NODE_VERSION $NODE_VERSION

COPY --from=node /usr/lib /usr/lib
COPY --from=node /usr/local/share /usr/local/share
COPY --from=node /usr/local/lib /usr/local/lib
COPY --from=node /usr/local/include /usr/local/include
COPY --from=node /usr/local/bin /usr/local/bin

RUN apk add --no-cache npm yarn

#===============
# Show version
#===============
RUN java -version \
  && node --version \
  && npm version \
  && yarn --version
