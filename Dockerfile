FROM busybox:ubuntu-14.04

ENV NOMAD_VERSION 0.4.1

ADD https://releases.hashicorp.com/nomad/${NOMAD_VERSION}/nomad_${NOMAD_VERSION}_linux_amd64.zip /tmp/nomad.zip
RUN mkdir -p /usr/local/bin                 \
  && cd /usr/local/bin                      \
  && unzip /tmp/nomad.zip                   \
  && chmod +x /usr/local/bin/nomad          \
  && rm /tmp/nomad.zip                      \
  && mkdir /etc/nomad
ADD nomad-wrapper.sh /usr/local/bin/

EXPOSE 4646
EXPOSE 4647
EXPOSE 4648

ENTRYPOINT ["/usr/local/bin/nomad-wrapper.sh"]
