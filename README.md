# nomad
Hashicorp nomad base image

## Usage
sudo docker run -d --name nomad -v /data jsecchiero/nomad nomad \
    agent \
    -client \
    -log-level=DEBUG \
    -servers nomad.home:4647 \
    -data-dir=/data
## 
