# Use Python as the base image
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy project files to the working directory
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port your Flask app will run on
EXPOSE 5000

# Command to run the application
CMD ["python", "app.py"]
