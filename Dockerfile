# Use a base image with Python
FROM python:3.8

Set the working directory

WORKDIR /app

Install JupyterLab

RUN pip install jupyterlab

Expose port 8080

EXPOSE 8080

Start JupyterLab on port 8080

CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8080", "--no-browser", "--allow-root"]

