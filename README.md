# Node + Maven + JDK Docker Images

Multi-platform Node.js Docker images with Maven and JDK included.

## Supported Platforms

- linux/amd64
- linux/arm64

## Available Images

| Name | Node | JDK | Docker Hub | GitHub Package |
|------|------|-----|------------|----------------|
| node20-jdk8 | 20.19.6 | 8 | `ringcentral/node:20.19.6-jdk8` | `ghcr.io/ringcentral-docker/node:20.19.6-jdk8` |
| node22-jdk8 | 22.21.1 | 8 | `ringcentral/node:22.21.1-jdk8` | `ghcr.io/ringcentral-docker/node:22.21.1-jdk8` |
| node24-jdk8 | 24.12.0 | 8 | `ringcentral/node:24.12.0-jdk8` | `ghcr.io/ringcentral-docker/node:24.12.0-jdk8` |
| node20-jdk11 | 20.19.6 | 11 | `ringcentral/node:20.19.6-jdk11` | `ghcr.io/ringcentral-docker/node:20.19.6-jdk11` |
| node22-jdk11 | 22.21.1 | 11 | `ringcentral/node:22.21.1-jdk11` | `ghcr.io/ringcentral-docker/node:22.21.1-jdk11` |
| node24-jdk11 | 24.12.0 | 11 | `ringcentral/node:24.12.0-jdk11` | `ghcr.io/ringcentral-docker/node:24.12.0-jdk11` |
| node20-jdk17 | 20.19.6 | 17 | `ringcentral/node:20.19.6-jdk17` | `ghcr.io/ringcentral-docker/node:20.19.6-jdk17` |
| node22-jdk17 | 22.21.1 | 17 | `ringcentral/node:22.21.1-jdk17` | `ghcr.io/ringcentral-docker/node:22.21.1-jdk17` |
| node24-jdk17 | 24.12.0 | 17 | `ringcentral/node:24.12.0-jdk17` | `ghcr.io/ringcentral-docker/node:24.12.0-jdk17` |
| node20-jdk21 | 20.19.6 | 21 | `ringcentral/node:20.19.6-jdk21` | `ghcr.io/ringcentral-docker/node:20.19.6-jdk21` |
| node22-jdk21 | 22.21.1 | 21 | `ringcentral/node:22.21.1-jdk21` | `ghcr.io/ringcentral-docker/node:22.21.1-jdk21` |
| node24-jdk21 | 24.12.0 | 21 | `ringcentral/node:24.12.0-jdk21` | `ghcr.io/ringcentral-docker/node:24.12.0-jdk21` |
| node20-jdk25 | 20.19.6 | 25 | `ringcentral/node:20.19.6-jdk25` | `ghcr.io/ringcentral-docker/node:20.19.6-jdk25` |
| node22-jdk25 | 22.21.1 | 25 | `ringcentral/node:22.21.1-jdk25` | `ghcr.io/ringcentral-docker/node:22.21.1-jdk25` |
| node24-jdk25 | 24.12.0 | 25 | `ringcentral/node:24.12.0-jdk25` | `ghcr.io/ringcentral-docker/node:24.12.0-jdk25` |

## Usage

```bash
docker pull ringcentral/node:22-jdk21
docker run -it ringcentral/node:22-jdk21 node --version
```

## Build Locally

```bash
docker build \
  --build-arg NODE_VERSION=22.11.0 \
  --build-arg MAVEN_TAG=3.9.9-jdk21.0.9-noble \
  -t my-node:22-jdk21 .
```

## License

MIT License
