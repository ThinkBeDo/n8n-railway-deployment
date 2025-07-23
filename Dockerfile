FROM n8nio/n8n:latest

# Copy any custom configuration files if needed
# COPY config/ /home/node/.n8n/

# Set environment variables (will be overridden by Railway)
ENV N8N_PORT=5678
ENV N8N_PROTOCOL=http
ENV N8N_HOST=0.0.0.0

# Expose the port
EXPOSE 5678

# Start n8n
CMD ["n8n", "start"]
