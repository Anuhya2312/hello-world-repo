# Use the official Python 3.8 slim image as the base image
FROM python:3.8-slim

# Set the working directory inside the container to /app
# All subsequent commands (like COPY, RUN) will be executed from this directory
WORKDIR /app

# Copy the requirements.txt file from your local machine to the container's working directory
COPY requirements.txt .

# Install all the Python dependencies listed in requirements.txt using pip
RUN pip install -r requirements.txt

# Copy all the contents of the current local directory to the /app directory in the container
COPY . .

# Specify the default command to run when the container starts
# This will run `python app.py` to start your Flask (or other Python) application
CMD ["python", "app.py"]
