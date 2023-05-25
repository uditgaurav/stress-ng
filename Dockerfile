FROM alpine:latest

# Install stress-ng
RUN apk add --no-cache stress-ng

# Set the entrypoint and default command
ENTRYPOINT ["stress-ng"]
CMD ["--cpu", "1", "--vm", "1", "--vm-bytes", "256M", "--timeout", "10s"]
