# Parameterized Node + Maven + JDK Dockerfile
#
# Build example:
#   docker build --build-arg NODE_VERSION=22.11.0 --build-arg MAVEN_TAG=3.9.12-jdk21.0.9-noble .

ARG NODE_VERSION=22.11.0
ARG MAVEN_TAG=3.9.12-jdk21.0.9-noble

FROM public.ecr.aws/docker/library/node:${NODE_VERSION}-slim AS node

FROM ghcr.io/ringcentral-docker/maven:${MAVEN_TAG}

LABEL maintainer="john.lin@ringcentral.com"

ARG NODE_VERSION
ENV NODE_VERSION=${NODE_VERSION}

# Copy only Node.js related files from official Node image
COPY --from=node /usr/local/bin/node /usr/local/bin/node
COPY --from=node /usr/local/lib/node_modules /usr/local/lib/node_modules
COPY --from=node /usr/local/include/node /usr/local/include/node

# Create symlinks for npm and npx
RUN ln -sf /usr/local/lib/node_modules/npm/bin/npm-cli.js /usr/local/bin/npm \
    && ln -sf /usr/local/lib/node_modules/npm/bin/npx-cli.js /usr/local/bin/npx

# Install package managers via npm (avoid corepack signature issues)
RUN npm install -g yarn pnpm bun

# Ensure PATH includes /usr/local/bin
ENV PATH="/usr/local/bin:${PATH}"

# Show versions
RUN java -version \
    && node --version \
    && npm version \
    && yarn --version \
    && pnpm --version \
    && bun --version
