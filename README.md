# nomad
Hashicorp nomad base image

## Usage
sudo docker run -d --name nomad -v /data -v /etc/nomad.conf:/etc/nomad.conf -v /:/storage jsecchiero/nomad nomad \
    agent \
    -config=/etc/nomad.conf
    -log-level=DEBUG \
    -data-dir=/data
## 
