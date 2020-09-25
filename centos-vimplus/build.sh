#!/bin/bash
version=test
image="centos-vimplus"
repo="paddyace"

export DOCKER_CLI_EXPERIMENTAL=enabled
#docker buildx create --use --name mybuilder
docker buildx ls

docker buildx build -f dockerfile -t ${repo}/${image}:amd64 .
docker push ${repo}/${image}:amd64

#docker build --rm -f dockerfile -t ${image}:${version} .
#docker tag ${image}:${version} ${repo}/${image}:${version} 
#docker push ${repo}/${image}:${version}
if [ $? -eq 0 ]; then
 echo "push Success"
else 
 echo "push failed"
fi
