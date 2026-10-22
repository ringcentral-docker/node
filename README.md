# Node + Maven + JDK Docker Images

Multi-platform Node.js Docker images with Maven and JDK included.

## Supported Platforms

- linux/amd64
- linux/arm64

## Available Images

| Name | Node | JDK | Docker Hub | GitHub Package |
|------|------|-----|------------|----------------|
| node22-jdk8 | 22.23.4 | 8 | `ringcentral/node:22.23.4-jdk8` | `ghcr.io/ringcentral-docker/node:22.23.4-jdk8` |
| node24-jdk8 | 24.22.1 | 8 | `ringcentral/node:24.22.1-jdk8` | `ghcr.io/ringcentral-docker/node:24.22.1-jdk8` |
| node26-jdk8 | 26.12.1 | 8 | `ringcentral/node:26.12.1-jdk8` | `ghcr.io/ringcentral-docker/node:26.12.1-jdk8` |
| node22-jdk11 | 22.23.4 | 11 | `ringcentral/node:22.23.4-jdk11` | `ghcr.io/ringcentral-docker/node:22.23.4-jdk11` |
| node24-jdk11 | 24.22.1 | 11 | `ringcentral/node:24.22.1-jdk11` | `ghcr.io/ringcentral-docker/node:24.22.1-jdk11` |
| node26-jdk11 | 26.12.1 | 11 | `ringcentral/node:26.12.1-jdk11` | `ghcr.io/ringcentral-docker/node:26.12.1-jdk11` |
| node22-jdk17 | 22.23.4 | 17 | `ringcentral/node:22.23.4-jdk17` | `ghcr.io/ringcentral-docker/node:22.23.4-jdk17` |
| node24-jdk17 | 24.22.1 | 17 | `ringcentral/node:24.22.1-jdk17` | `ghcr.io/ringcentral-docker/node:24.22.1-jdk17` |
| node26-jdk17 | 26.12.1 | 17 | `ringcentral/node:26.12.1-jdk17` | `ghcr.io/ringcentral-docker/node:26.12.1-jdk17` |
| node22-jdk21 | 22.23.4 | 21 | `ringcentral/node:22.23.4-jdk21` | `ghcr.io/ringcentral-docker/node:22.23.4-jdk21` |
| node24-jdk21 | 24.22.1 | 21 | `ringcentral/node:24.22.1-jdk21` | `ghcr.io/ringcentral-docker/node:24.22.1-jdk21` |
| node26-jdk21 | 26.12.1 | 21 | `ringcentral/node:26.12.1-jdk21` | `ghcr.io/ringcentral-docker/node:26.12.1-jdk21` |
| node22-jdk25 | 22.23.4 | 25 | `ringcentral/node:22.23.4-jdk25` | `ghcr.io/ringcentral-docker/node:22.23.4-jdk25` |
| node24-jdk25 | 24.22.1 | 25 | `ringcentral/node:24.22.1-jdk25` | `ghcr.io/ringcentral-docker/node:24.22.1-jdk25` |
| node26-jdk25 | 26.12.1 | 25 | `ringcentral/node:26.12.1-jdk25` | `ghcr.io/ringcentral-docker/node:26.12.1-jdk25` |

## Usage

```bash
docker pull ringcentral/node:22-jdk21
docker run -it ringcentral/node:22-jdk21 node --version
```

## Build Locally

```bash
docker build \
  --build-arg NODE_VERSION=22.23.4 \
  --build-arg MAVEN_TAG=3.9.15-jdk21.0.10-noble \
  -t my-node:22-jdk21 .
```

## License

MIT License
