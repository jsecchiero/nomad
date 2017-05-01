# nomad
Hashicorp nomad base image

## Usage

```
sudo docker run -d --name nomad                  \
    --restart=always                             \
    --privileged                                 \
    --net=host                                   \
    -p 4646:4646 -p 4646:4646/udp                \
    -p 4647:4647 -p 4647:4647/udp                \
    -p 4648:4648 -p 4648:4648/udp                \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v /data                                     \
    -v /etc/nomad.conf:/etc/nomad.conf           \
    -v /:/storage                                \
    -v /tmp:/tmp                                 \
    jsecchiero/nomad                             \
    agent                                        \
    -config=/etc/nomad.conf                      \
    -log-level=DEBUG                             \
    -data-dir=/data
```

for armhf arch
```
sudo docker run -d --name nomad                  \
    --restart=always                             \
    --privileged                                 \
    --net=host                                   \
    -p 4646:4646 -p 4646:4646/udp                \
    -p 4647:4647 -p 4647:4647/udp                \
    -p 4648:4648 -p 4648:4648/udp                \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v /data                                     \
    -v /etc/nomad.conf:/etc/nomad.conf           \
    -v /:/storage                                \
    -v /tmp:/tmp                                 \
    jsecchiero/nomad_armhf                       \
    agent                                        \
    -config=/etc/nomad.conf                      \
    -log-level=DEBUG                             \
    -data-dir=/data
```
