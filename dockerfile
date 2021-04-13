FROM redis:6.2.1 AS builder

COPY ./module /wks

RUN apt -y update && \
    apt -y upgrade && \
    apt -y install gcc make wget tar git && \
    mkdir /src && \
    cd /src && \
    wget https://download.redis.io/releases/redis-6.2.1.tar.gz && \
    tar -zxvf redis-6.2.1.tar.gz && \
    mv redis-6.2.1 redis && \
    cd /wks && \
    make

FROM redis:6.2.1

COPY --from=builder /wks/exert.so /mod/exert.so

ENTRYPOINT [ "redis-server", "/etc/redis/redis.conf" ]
