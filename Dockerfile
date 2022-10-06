FROM busybox:1.35.0
RUN mkdir -p /usr/local/bin && echo 'IyEvYmluL3NoCi9iaW4vd2dldCAtdCR7V0dFVF9SRVRSSUVTOi0zMH0gJEAK'|base64 -d > /usr/local/bin/wget && chmod +x /usr/local/bin/wget
