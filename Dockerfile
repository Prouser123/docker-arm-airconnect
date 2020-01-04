FROM ubuntu:17.10

# Add Supervisor
RUN apt-get update && apt-get install -y supervisor wget
COPY supervisord.conf /etc

# Download AirConnect
RUN wget --output-document=/bin/airupnp-arm https://raw.githubusercontent.com/philippe44/AirConnect/master/bin/airupnp-arm && chmod +x /bin/airupnp-arm
RUN wget --output-document=/bin/aircast-arm https://raw.githubusercontent.com/philippe44/AirConnect/master/bin/aircast-arm && chmod +x /bin/aircast-arm

ENTRYPOINT ["supervisord", "--nodaemon", "--configuration", "/etc/supervisord.conf"]
