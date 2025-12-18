# Parameterized Node + Maven + JDK Dockerfile
#
# Build example:
#   docker build --build-arg NODE_VERSION=22.11.0 --build-arg MAVEN_TAG=3.9.9-jdk21.0.9-noble .

ARG NODE_VERSION=22.11.0
ARG MAVEN_TAG=3.9.9-jdk21.0.9-noble

FROM public.ecr.aws/docker/library/node:${NODE_VERSION}-alpine AS node

FROM ghcr.io/ringcentral-docker/maven:${MAVEN_TAG}

LABEL maintainer="john.lin@ringcentral.com"

ARG NODE_VERSION
ENV NODE_VERSION=${NODE_VERSION}

# Copy Node.js from Alpine image
COPY --from=node /usr/lib /usr/lib
COPY --from=node /usr/local/share /usr/local/share
COPY --from=node /usr/local/lib /usr/local/lib
COPY --from=node /usr/local/include /usr/local/include
COPY --from=node /usr/local/bin /usr/local/bin

# Show versions
RUN java -version \
    && node --version \
    && npm version \
    && yarn --version
