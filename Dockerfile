FROM ghcr.io/sagernet/sing-box:latest
RUN apk add --no-cache nginx bash
COPY config.json /etc/sing-box/config.json
COPY nginx.conf /etc/nginx/http.d/default.conf
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/bin/bash", "/entrypoint.sh"]

