FROM debian:bullseye
RUN apt-get update \
    && apt-get install -y iperf3 \
    && rm -rf /var/lib/apt/lists/*

# Expose the default iperf3 server port
EXPOSE 5201

ENTRYPOINT ["iperf3"]
