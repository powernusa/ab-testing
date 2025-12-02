# -------------------------------------------------------------
# Base Image: Python 3.10 slim (lightweight and clean)
# -------------------------------------------------------------
FROM python:3.10-slim

# -------------------------------------------------------------
# Set working directory inside container
# -------------------------------------------------------------
WORKDIR /app

# -------------------------------------------------------------
# Copy project files into container
# -------------------------------------------------------------
COPY . /app

# -------------------------------------------------------------
# Install system-level dependencies required for scientific stack
# -------------------------------------------------------------
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        build-essential \
        && rm -rf /var/lib/apt/lists/*

# -------------------------------------------------------------
# Install Python dependencies from requirements.txt
# -------------------------------------------------------------
RUN pip install --upgrade pip && \
    pip install -r requirements.txt

# -------------------------------------------------------------
# Expose Jupyter Notebook port
# -------------------------------------------------------------
EXPOSE 8888

# -------------------------------------------------------------
# Run Jupyter Notebook at container start
# -------------------------------------------------------------
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]

