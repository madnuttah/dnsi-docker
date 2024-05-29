FROM alpine:latest AS buildenv

RUN set -xe; \
    apk --update --no-cache add \
    ca-certificates \
    tzdata \
    build-base \
    curl \
    binutils \
    cargo && \
    cargo install --locked dnsi

RUN mkdir -p /usr/local/dnsi && \
    mv /root/.cargo/bin/dnsi /usr/local/dnsi && \
    strip --strip-all /usr/local/dnsi/dnsi
    
WORKDIR /

FROM scratch as stage   

COPY --from=buildenv /tmp/ /app/tmp/

COPY --from=buildenv /bin/sh /app/bin/

COPY --from=buildenv /lib/*-musl-* /app/lib/

COPY --from=buildenv /usr/lib/libgcc_s* /app/usr/lib/

COPY --from=buildenv /etc/ssl/ /app/etc/ssl/
  
COPY --from=buildenv /etc/passwd /etc/group /app/etc/
  
COPY --from=buildenv /usr/share/zoneinfo/ /app/usr/share/zoneinfo/

COPY --from=buildenv --chmod=0755 /usr/local/dnsi /app/usr/bin/
 
FROM scratch as dnsi

COPY --from=stage /app/ /
