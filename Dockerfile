FROM alpine:3.19

WORKDIR /app
COPY nvme_exporter .

# Install nvme-cli and any other dependencies
RUN apk add --no-cache nvme-cli

# Keep root user since nvme-cli requires root access
USER root
EXPOSE 9998

ENTRYPOINT ["/app/nvme_exporter"]
