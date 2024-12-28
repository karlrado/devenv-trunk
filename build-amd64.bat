set TAG=20240118
docker buildx build --no-cache --push --platform linux/amd64 --tag karlrado/devenv-trunk:latest-amd64 --tag karlrado/devenv-trunk:%TAG%-amd64 .