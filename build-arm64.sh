TAG=20240118
docker buildx build --no-cache --push --platform linux/arm64 --tag karlrado/devenv-trunk:latest-arm64 --tag karlrado/devenv-trunk:${TAG}-arm64 .