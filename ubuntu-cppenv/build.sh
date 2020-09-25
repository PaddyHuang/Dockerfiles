#!/bin/bash
version=latest
image="ubuntu-cppenv"
repo="paddyace"

#export DOCKER_CLI_EXPERIMENTAL=enabled
#docker buildx create --use --name mybuilder
#docker buildx ls

#docker buildx build --platform linux/amd64 -f dockerfile -t ${repo}/${image}:amd64v1.0 .
#docker push ${repo}/${image}:amd64v1.0

#docker buildx build --platform linux/arm64 -f dockerfile -t ${repo}/${image}:arm64v1.0 .
#docker push ${repo}/${image}:arm64v1.0

docker build --rm -f dockerfile -t ${image}:${version} .
docker tag ${image}:${version} ${repo}/${image}:${version} 
docker push ${repo}/${image}:${version}
if [ $? -eq 0 ]; then
 echo "push Success"
else 
 echo "push failed"
fi
