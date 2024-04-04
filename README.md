# rules-dotnet-publish-docker

This repo demonstrates the use of Bazel to build Docker images containing an F# application.

## Undockerized

```bash
bazel run //:app
```

## Debian

```bash
# Build and register the Docker image
bazel run //:image_debian_tarball

# Run the image
docker run -it --rm image_debian:latest

# Inspect the image
docker run -it --rm --entrypoint=bash image_debian:latest
```

## Alpine

```bash
# Build and register the Docker image
bazel run //:image_alpine_tarball

# Run the image
docker run -it --rm image_alpine:latest

# Inspect the image
docker run -it --rm --entrypoint=sh image_alpine:latest
```
