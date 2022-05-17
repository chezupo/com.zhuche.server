#!/usr/bin/env bash

./gradlew bootJar
# 迭代docker-compose的springBoot服务的镜像版本号
version="0.0.11"
packName=wuchuheng/a1001-zhuche
packNamePatten="${packName/\//\/}"
set -f                      # avoid globbing (expansion of *).
sed "s/$packNamePatten:[^\n]*/$packNamePatten:${version}/g" docker-compose.yml > tmp
cat tmp > docker-compose.yml
rm tmp

docker-compose build springBoot

docker push $packName:$version
