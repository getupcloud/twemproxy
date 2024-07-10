ARG BUILDER
FROM $BUILDER AS builder

FROM ubuntu:24.04
COPY --from=builder /usr/local/sbin/nutcracker /
RUN mkdir /conf
ENTRYPOINT [ "/nutcracker" ]
