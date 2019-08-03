FROM alpine:3.10.1
MAINTAINER Hugo Blom hugo.blom1@gmail.com

# Dependencies
RUN apk add ca-certificates unzip

# Add xteve binary
ADD https://xteve.de/download/xteve_2_linux_amd64.zip /xteve/xteve_amd64.zip

# Unzip the Binary
RUN unzip -o /xteve/xteve_amd64.zip

# Clean up the .zip
RUN rm -y /xteve/xteve.zip

# Set executable permissions
RUN chmod +x /xteve/xteve

# Volumes
VOLUME /root/xteve
VOLUME /tmp/xteve

# Expose Ports for Access
EXPOSE 34400

# Healthcheck
HEALTHCHECK --interval=5m --timeout=3s \
  CMD curl -f http://localhost:34400/ || exit 1
  
# Entrypoint should be the base command
ENTRYPOINT ["/xteve/xteve"]

# Command should be the basic working
CMD ["-port=34400"]
