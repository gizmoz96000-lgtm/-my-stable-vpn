FROM ghcr.io/sagernet/sing-box:latest
COPY config.json /etc/sing-box/config.json
ENTRYPOINT ["sing-box", "run", "-c", "/etc/sing-box/config.json"]
