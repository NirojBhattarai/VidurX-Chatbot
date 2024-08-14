# Use the official Rasa image from Docker Hub
FROM rasa/rasa:3.1.0-full

# Set the working directory
WORKDIR /app

# Copy the Rasa project files
COPY . /app

# Install dependencies
RUN pip install -r requirements.txt

# Expose the Rasa port
EXPOSE 5005

# Start the Rasa server
CMD ["rasa", "run", "--enable-api", "--cors", "*"]
