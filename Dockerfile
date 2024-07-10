ARG BUILDER
FROM $BUILDER AS builder

FROM ubuntu:24.04

COPY --from=builder /usr/local/sbin/nutcracker /

RUN useradd -M -u 1001 -U nutcracker && \
    install -m 755 --directory --group=nutcracker --owner=nutcracker /conf

USER 1001

ENTRYPOINT [ "/nutcracker" ]
