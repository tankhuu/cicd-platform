docker run --name jenkins \
    -v /var/run/docker.sock:/var/run/docker.sock \
    --privileged \
    --user root \
    -p 50000:50000 \
    -p 8080:8080 \
    -d \
    jenkins:lts-docker