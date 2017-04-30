FROM library/ubuntu:14.04

ENV NOMAD_VERSION 0.5.6

RUN apt-get update && \
    apt-get install unzip -y

ADD https://releases.hashicorp.com/nomad/${NOMAD_VERSION}/nomad_${NOMAD_VERSION}_linux_arm.zip /tmp/nomad.zip
RUN mkdir -p /usr/local/sbin                 \
  && cd /usr/local/sbin                      \
  && unzip /tmp/nomad.zip                    \
  && chmod +x /usr/local/sbin/nomad          \
  && rm /tmp/nomad.zip                       \
  && mkdir /etc/nomad

EXPOSE 4646
EXPOSE 4647
EXPOSE 4648

ENTRYPOINT ["/usr/local/sbin/nomad"]
