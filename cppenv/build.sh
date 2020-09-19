#!/bin/bash
version=0.1
image="cppenv"
repo="paddyace"

docker build -f dockerfile -t ${image}:${version} .
docker tag ${image}:${version} ${repo}/${image}:${version} 
docker push ${repo}/${image}:${version}
if [ $? -eq 0 ]; then
 echo "push Success"
else 
 echo "push failed"
fi
