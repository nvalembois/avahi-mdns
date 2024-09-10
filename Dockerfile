
FROM docker.io/library/alpine:3.20.3

RUN set -e && \
  apk add --no-cache avahi-daemon avahi-utils dbus

CMD ["/usr/sbin/avahi-daemon", "--no-chroot", "--debug"]
