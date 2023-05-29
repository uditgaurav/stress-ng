# Use a base image with Bash installed
FROM bash:latest

# Copy the script into the container
COPY consume_disk_space.sh /app/consume_disk_space.sh

# Set the execute permission for the script
RUN chmod +x /app/consume_disk_space.sh

# Run the script
CMD ["/app/consume_disk_space.sh"]
