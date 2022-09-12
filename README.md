# Inception
This project aims to broaden your knowledge of system administration by using Docker. You will virtualize several Docker images, creating them in your new personal virtual machine

# What is a docker ?
Docker is an open platform for developing, shipping, and running applications. Docker enables you to separate your applications from your infrastructure so you can deliver software quickly. With Docker, you can manage your infrastructure in the same ways you manage your applications. By taking advantage of Docker’s methodologies for shipping, testing, and deploying code quickly, you can significantly reduce the delay between writing code and running it in production.
Docker provides the ability to package and run an application in a loosely isolated environment called a container.

# What is a docker-compose ?
Compose is a tool for defining and running multi-container Docker applications. With Compose, you use a YAML file to configure your application’s services. Then, with a single command, you create and start all the services from your configuration.

# What is a docker-file ?
Docker can build images automatically by reading the instructions from a Dockerfile. A Dockerfile is a text document that contains all the commands a user could call on the command line to assemble an image. Using docker build users can create an automated build that executes several command-line instructions in succession.

Here are the most common types of instructions:

FROM <image> - defines a base for your image.
RUN <command> - executes any commands in a new layer on top of the current image and commits the result. RUN also has a shell form for running commands.
WORKDIR <directory> - sets the working directory for any RUN, CMD, ENTRYPOINT, COPY, and ADD instructions that follow it in the Dockerfile.
COPY <src> <dest> - copies new files or directories from <src> and adds them to the filesystem of the container at the path <dest>.
CMD <command> - lets you define the default program that is run once you start the container based on this image. Each Dockerfile only has one CMD, and only the last CMD instance is respected when multiple exist.

# What is a docker-build ?
Dockerfiles are text files containing instructions. Dockerfiles adhere to a specific format and contain a set of instructions for which you can find a full reference in the Dockerfile reference.
Docker builds images by reading the instructions from a Dockerfile.

Docker images consist of read-only layers, each resulting from an instruction in the Dockerfile. Layers are stacked sequentially and each one is a delta representing the changes applied to the previous layer.

# How to install docker on MACOS
For this project, I am on a mac so I don't need to use the virtual machine.
I had to install docker. First, you need:
- I went directly to the docker website and I downloaded docker https://docs.docker.com/desktop/install/mac-install/
- I installed docker on the machine
- I tested to run a dockerfile thanks to the command docker run hello-world

# Important command to use docker
- docker ps or docker ps -a show the names of all the containers you have + the id you need and the port associated.
- docker run "name of the docker file" to run the docker
-