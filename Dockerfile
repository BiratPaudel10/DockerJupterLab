# Use a base image with Python
FROM python:3.8-slim

# Set the working directory
WORKDIR /app

# Install JupyterLab
RUN pip install --no-cache-dir jupyterlab

# Expose the Render port (Render sets $PORT dynamically)
ENV PORT=8080

# Start JupyterLab using the environment variable $PORT
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=${PORT}", "--no-browser", "--allow-root"]
