# Use the official Python 3.11 image as a parent image
FROM python:3.11

# Set the working directory in the container
WORKDIR /app

# Install AutoGen Studio
RUN pip install --no-cache-dir autogenstudio

# Make port 8081 available to the world outside this container
EXPOSE 8081

# Run AutoGen Studio when the container launches
CMD ["autogenstudio", "ui", "--port", "8081", "--host", "0.0.0.0"]
