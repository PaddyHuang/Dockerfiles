#!/bin/bash
version=latest
image="centos-cppenv"
repo="paddyace"

docker build --rm -f dockerfile -t ${image}:${version} .
docker tag ${image}:${version} ${repo}/${image}:${version} 
docker push ${repo}/${image}:${version}
if [ $? -eq 0 ]; then
 echo "push Success"
else 
 echo "push failed"
fi
