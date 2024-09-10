
FROM docker.io/library/alpine:3.20.3

RUN set -e && \
  apk add --no-cache avahi && \
  rm /etc/avahi/services/*.service && \
  install -d -o avahi -g avahi -m 0755 /run/avahi-daemon

COPY avahi-daemon.conf /etc/avahi/avahi-daemon.conf

USER avahi

CMD ["/usr/sbin/avahi-daemon", "--no-chroot", "--debug", "--no-drop-root"]
