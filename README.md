# rules-dotnet-publish-docker

## Debian

```bash
# Build and register the Docker image
bazel run //:image_debian

# Run the image
docker run -it --rm bazel:image_debian

# Inspect the image
docker run -it --rm --entrypoint=bash bazel:image_debian
```

## Alpine

```bash
# Build and register the Docker image
bazel run //:image_alpine

# Run the image
docker run -it --rm bazel:image_alpine

# Inspect the image
docker run -it --rm --entrypoint=sh bazel:image_alpine
```
