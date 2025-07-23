FROM n8nio/n8n:latest

# Set environment variables (will be overridden by Railway)
ENV N8N_PORT=5678
ENV N8N_PROTOCOL=http
ENV N8N_HOST=0.0.0.0

# Expose the port
EXPOSE 5678

# Use the same entrypoint as the base image
# The n8n image already has the proper entrypoint configured
