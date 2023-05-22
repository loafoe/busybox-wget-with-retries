FROM busybox:1.36.1
RUN mkdir -p /usr/local/bin
COPY wget /usr/local/bin/wget
RUN chmod +x /usr/local/bin/wget
