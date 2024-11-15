# Container5

Container5 Project - Simple "Hola Mundo" Web Application in Go
This project demonstrates a basic setup of a Go application running in Docker. The purpose is to showcase a simple application that displays "Hola Mundo desde Go!" on a webpage.

📋 Project Overview
Container5 is a Dockerized web application built using Go. When accessed, it displays the message "Hola Mundo desde Go!" on a webpage. This project demonstrates the fundamentals of setting up and running a Go application in Docker.

🛠 Requirements
To run this project, ensure you have the following:

Docker installed on your machine. Docker allows applications to run in isolated containers. Download Docker from the official site: Docker Installation. https://www.docker.com/products/docker-desktop/
📂 Project Structure
plaintext
Copiar código
Container5/
├── main.go        # Main application file with Go code
└── Dockerfile     # Docker configuration for the project
main.go: Contains the Go code that displays "Hola Mundo desde Go!".
Dockerfile: Instructions for Docker to build and run the application in a container.
🚀 Getting Started
Follow these steps to download and run the project on your local machine.

Step 1: Pulling the Docker Image
This project is available as a pre-built image on Docker Hub, a repository for sharing container images.

Ensure Docker Desktop is running.

Open a terminal and pull the image with:

bash
Copiar código
docker pull rommela462/container5
Step 2: Running the Container
Run the container with:

bash
Copiar código
docker run -d -p 8084:8080 rommela462/container5
Explanation:
-d: Runs the container in detached mode (in the background).
-p 8084:8080: Maps port 8084 on your local machine to port 8080 inside the container, where the Go server is running.
After running this command, go to http://localhost:8084 in your browser to see the message "Hola Mundo desde Go!".

💻 Using the Web Application
Access the Application: Open a web browser and visit http://localhost:8084.
Expected Output: You should see a simple webpage displaying "Hola Mundo desde Go!".
🛑 Stopping the Container
When you’re finished using the application, you can stop the container to free up resources:

Identify the container ID by running:

bash
Copiar código
docker ps
Use the following command to stop the container:

bash
Copiar código
docker stop <container_id>
Replace <container_id> with the actual container ID, which you obtained in the previous step.

🧹 Cleanup
If you no longer need the container and want to free up space on your machine, follow these steps:

Remove the container (after stopping it):

bash
Copiar código
docker rm <container_id>
Remove the Docker image from your system:

bash
Copiar código
docker rmi rommela462/container5
These commands help keep your Docker environment clean and prevent unnecessary storage use.

🔄 Summary of Commands
For quick reference, here is a summary of the main commands:

bash
Copiar código
# Pull the image from Docker Hub
docker pull rommela462/container5

# Run the container
docker run -d -p 8084:8080 rommela462/container5

# Check running containers
docker ps

# Stop the container
docker stop <container_id>

# Remove the container
docker rm <container_id>

# Remove the image
docker rmi rommela462/container5
💡 Troubleshooting
If you encounter issues while setting up or running the project, consider the following:

Docker Installation: Ensure Docker is installed and Docker Desktop is running.
Network Issues: Confirm that you have an active internet connection to pull images from Docker Hub.
Port Conflicts: Make sure port 8084 is not already in use by another application. If it is, you can choose a different local port (e.g., -p 8085:8080) when running the container.
📜 License
This project is open-source and available under the MIT License.