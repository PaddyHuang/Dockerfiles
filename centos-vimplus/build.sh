#!/bin/bash
version=test
image="centos-vimplus"
repo="paddyace"

docker buildx build --rm -f dockerfile -t ${image}:${version} --platform=linux/arm,linux/arm64,linux/amd64 .
docker tag ${image}:${version} ${repo}/${image}:${version} 
docker push ${repo}/${image}:${version}
if [ $? -eq 0 ]; then
 echo "push Success"
else 
 echo "push failed"
fi
