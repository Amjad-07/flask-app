# Base Python image
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Copy files and install dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . .

# Expose port
EXPOSE 8080

# Run the app
CMD ["python", "app.py"]
