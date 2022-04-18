#!/bin/bash
docker run -p 9000:9000 -p 9090:9090 \
--name minio \
-d --restart=always \
-e "MINIO_ROOT_USER=root" \
-e "MINIO_ROOT_PASSWORD=12345678" \
-v /root/software/docker/minio/data:/data \
-v /root/software/docker/minio/config:/root/.minio \
minio/minio server \
/data --console-address ":9090" -address ":9000"