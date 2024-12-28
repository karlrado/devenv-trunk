set TAG=20240118

docker manifest create karlrado/devenv-trunk:latest --amend karlrado/devenv-trunk:latest-arm64 --amend karlrado/devenv-trunk:latest-amd64
docker manifest annotate karlrado/devenv-trunk:latest karlrado/devenv-trunk:latest-amd64 --arch amd64
docker manifest annotate karlrado/devenv-trunk:latest karlrado/devenv-trunk:latest-arm64 --arch arm64
docker manifest push karlrado/devenv-trunk:latest

docker manifest create karlrado/devenv-trunk:%TAG% --amend karlrado/devenv-trunk:%TAG%-arm64 --amend karlrado/devenv-trunk:%TAG%-amd64
docker manifest annotate karlrado/devenv-trunk:%TAG% karlrado/devenv-trunk:%TAG%-amd64 --arch amd64
docker manifest annotate karlrado/devenv-trunk:%TAG% karlrado/devenv-trunk:%TAG%-arm64 --arch arm64
docker manifest push karlrado/devenv-trunk:%TAG%