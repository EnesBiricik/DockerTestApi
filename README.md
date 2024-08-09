# Docker Test API

This project is a .NET API designed to be tested with Docker. It is configured to run within Docker containers and performs a basic API test.

## Table of Contents

- [Getting Started](#getting-started)
- [Usage](#usage)
- [Running with Docker](#running-with-docker)
- [Project Structure](#project-structure)
- [Contributing](#contributing)

## Getting Started

This section covers how to get the project up and running and provides some basic information to help you get started.

### Requirements

- Docker: [Download and install Docker](https://www.docker.com/products/docker-desktop)
- .NET SDK: [Download the .NET SDK from Microsoft](https://dotnet.microsoft.com/download/dotnet)

### Installation

To run the project locally:

1. **Clone the Repository:**

    ```bash
    git clone https://github.com/your_username/DockerTestApi.git
    ```

2. **Navigate to the Project Directory:**

    ```bash
    cd DockerTestApi
    ```

## Usage

To quickly test the core functionalities of the project:

1. **Build the Docker Image:**

    ```bash
    docker build -t dockertestapi .
    ```

2. **Run the Docker Container:**

    ```bash
    docker run -d -p 8080:80 dockertestapi
    ```

3. **Test the API:**

    You can access the API at `http://localhost:8080`.

## Running with Docker

To run the project with Docker, use the following commands:

1. **List Docker Images:**

    ```bash
    docker images
    ```

2. **List Containers:**

    ```bash
    docker ps
    ```

3. **Stop and Remove Containers:**

    ```bash
    docker stop <container_id>
    docker rm <container_id>
    ```

4. **Clean Up Unused Images:**

    ```bash
    docker image prune -a
    ```

## Project Structure

- **Dockerfile**: Configuration file used to build the Docker image.
- **Program.cs**: Entry point of the API application.
- **Controllers/**: Folder containing API controllers.

## Contributing

If you'd like to contribute, please open an [issue](https://github.com/EnesBiricik/DockerTestApi/issues) first and then submit a pull request.
