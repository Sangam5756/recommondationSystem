# Use official Python image
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Copy files
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose port (Render uses 10000)
EXPOSE 5000

# Run the app
CMD ["python", "app.py"]
