# Use an official Python runtime as a parent image
FROM python:3.7.11-slim

# Set the working directory in the container
WORKDIR /python-api

# Copy the requirements file into the container at /python-api
COPY requirements.txt .

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the current directory contents into the container at /python-api
COPY . .

# Make port 8080 available to the world outside this container
EXPOSE 8080

# Run flask in development mode
CMD ["flask", "run", "--host=0.0.0.0", "--port=8080"]
