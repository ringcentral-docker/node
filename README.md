# Node + Maven + JDK Docker Images

Multi-platform Node.js Docker images with Maven and JDK included.

## Supported Platforms

- linux/amd64
- linux/arm64

## Available Images

| Name | Node | JDK | Docker Hub | GitHub Package |
|------|------|-----|------------|----------------|
| node18-jdk8 | 18.20.5 | 8 | `ringcentral/node:18.20.5-jdk8` | `ghcr.io/ringcentral-docker/node:18.20.5-jdk8` |
| node20-jdk8 | 20.18.0 | 8 | `ringcentral/node:20.18.0-jdk8` | `ghcr.io/ringcentral-docker/node:20.18.0-jdk8` |
| node22-jdk8 | 22.11.0 | 8 | `ringcentral/node:22.11.0-jdk8` | `ghcr.io/ringcentral-docker/node:22.11.0-jdk8` |
| node18-jdk11 | 18.20.5 | 11 | `ringcentral/node:18.20.5-jdk11` | `ghcr.io/ringcentral-docker/node:18.20.5-jdk11` |
| node20-jdk11 | 20.18.0 | 11 | `ringcentral/node:20.18.0-jdk11` | `ghcr.io/ringcentral-docker/node:20.18.0-jdk11` |
| node22-jdk11 | 22.11.0 | 11 | `ringcentral/node:22.11.0-jdk11` | `ghcr.io/ringcentral-docker/node:22.11.0-jdk11` |
| node18-jdk17 | 18.20.5 | 17 | `ringcentral/node:18.20.5-jdk17` | `ghcr.io/ringcentral-docker/node:18.20.5-jdk17` |
| node20-jdk17 | 20.18.0 | 17 | `ringcentral/node:20.18.0-jdk17` | `ghcr.io/ringcentral-docker/node:20.18.0-jdk17` |
| node22-jdk17 | 22.11.0 | 17 | `ringcentral/node:22.11.0-jdk17` | `ghcr.io/ringcentral-docker/node:22.11.0-jdk17` |
| node18-jdk21 | 18.20.5 | 21 | `ringcentral/node:18.20.5-jdk21` | `ghcr.io/ringcentral-docker/node:18.20.5-jdk21` |
| node20-jdk21 | 20.18.0 | 21 | `ringcentral/node:20.18.0-jdk21` | `ghcr.io/ringcentral-docker/node:20.18.0-jdk21` |
| node22-jdk21 | 22.11.0 | 21 | `ringcentral/node:22.11.0-jdk21` | `ghcr.io/ringcentral-docker/node:22.11.0-jdk21` |
| node18-jdk25 | 18.20.5 | 25 | `ringcentral/node:18.20.5-jdk25` | `ghcr.io/ringcentral-docker/node:18.20.5-jdk25` |
| node20-jdk25 | 20.18.0 | 25 | `ringcentral/node:20.18.0-jdk25` | `ghcr.io/ringcentral-docker/node:20.18.0-jdk25` |
| node22-jdk25 | 22.11.0 | 25 | `ringcentral/node:22.11.0-jdk25` | `ghcr.io/ringcentral-docker/node:22.11.0-jdk25` |

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
