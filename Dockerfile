# Use the official Python image
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy source code
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port Flask runs on
EXPOSE 8080

# Run the app using gunicorn (recommended for production)
CMD ["gunicorn", "-b", "0.0.0.0:8080", "app:app"]
