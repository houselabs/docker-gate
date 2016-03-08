FROM alpine:3.3
MAINTAINER Chao Shen <shen218@gmail.com>
ADD src /
RUN echo http://mirrors.ustc.edu.cn/alpine/v3.3/main > /etc/apk/repositories
RUN echo http://mirrors.ustc.edu.cn/alpine/edge/testing >> /etc/apk/repositories
RUN apk add --update redsocks iptables dnsmasq pdnsd supervisor bash libgcrypt
RUN rm -rf /var/cache/apk/*
RUN mkdir lib64 && ln -s /lib/libc.musl-x86_64.so.1 /lib64/ld-linux-x86-64.so.2
RUN ln -s -f /usr/lib/libgcrypt.so.20 /usr/lib/libcrypt.so.1
CMD ["/bin/bash", "/start.sh"]

