# Inception
This project aims to broaden your knowledge of system administration by using Docker. You will virtualize several Docker images, creating them in your new personal virtual machine

# SUMMARY

### 1.Definitions
### 2.Docker
### 3.NGINX



# Definitions
## What is a docker ?
Docker is an open platform for developing, shipping, and running applications. Docker enables you to separate your applications from your infrastructure so you can deliver software quickly. With Docker, you can manage your infrastructure in the same ways you manage your applications. By taking advantage of Docker’s methodologies for shipping, testing, and deploying code quickly, you can significantly reduce the delay between writing code and running it in production.
Docker provides the ability to package and run an application in a loosely isolated environment called a container.

## What is a docker-compose ?
Compose is a tool for defining and running multi-container Docker applications. With Compose, you use a YAML file to configure your application’s services. Then, with a single command, you create and start all the services from your configuration.

## What is a docker-file ?
Docker can build images automatically by reading the instructions from a Dockerfile. A Dockerfile is a text document that contains all the commands a user could call on the command line to assemble an image. Using docker build users can create an automated build that executes several command-line instructions in succession.

## What is a docker-build ?
Dockerfiles are text files containing instructions. Dockerfiles adhere to a specific format and contain a set of instructions for which you can find a full reference in the Dockerfile reference.
Docker builds images by reading the instructions from a Dockerfile.

Docker images consist of read-only layers, each resulting from an instruction in the Dockerfile. Layers are stacked sequentially and each one is a delta representing the changes applied to the previous layer.

## How to install docker on MACOS
For this project, I am on a mac so I don't need to use the virtual machine.
I had to install docker. First, you need:
- I went directly to the docker website and I downloaded docker https://docs.docker.com/desktop/install/mac-install/
- I installed docker on the machine
- I tested to run a dockerfile thanks to the command docker run hello-world

# DOCKER

## Important commands to use docker

## docker
- docker ps or docker ps -a show the names of all the containers you have + the id you need and the port associated.
- docker pull "NameOfTheImage", pull an image from dockerhub
- docker logs 025, show the logs of your last run of dockers
- docker rm $(docker ps -a -q) allow to delete all the opened images
- docker exec -it 8ac sh, to execute the program


## docker run
- docker run "name of the docker image" to run the docker image
- docker run -d, run container in background
- docker run -p, publish a container's port to the host
- docker run -P, publish all exposed port to random ports
- docker run -it "imageName", le programme continuera de fonctionner et on pourra interagir avec le container
- docker run -name sl mysql, give a name for the container instead an ID
- docker run -d -p 7000:80 test:latest

## docker image
- docker image rm -f image name/id, delete the image, if the image is running you need to kill it first.
- docker image kill name, stop a running image,

## How to write a docker file
- Create a filename dockerfile
- Write your command inside the doc
- Build the dockerfile with the command "dockerfile build -t "nameYouChoose".
- Execute the dockerfile with the command: docker run "nameYouChoose"

Here are the most common types of instructions:

FROM <image> - defines a base for your image. exemple : FROM debian
RUN <command> - executes any commands in a new layer on top of the current image and commits the result. RUN also has a shell form for running commands.
WORKDIR <directory> - sets the working directory for any RUN, CMD, ENTRYPOINT, COPY, and ADD instructions that follow it in the Dockerfile. (You go directly in the directy you choose)
COPY <src> <dest> - copies new files or directories from <src> and adds them to the filesystem of the container at the path <dest>.
CMD <command> - lets you define the default program that is run once you start the container based on this image. Each Dockerfile only has one CMD, and only the last CMD instance is respected when multiple exist.

# How to launch a localhost webpage to test it
Video tutorial : <https://www.youtube.com/watch?v=F2il_Mo5yww&ab_channel=linuxxraza>
- Create a HTML file with some code in it.
- Create you dockerfile
	- The image will be NGINX : FROM NGINX
	- Use COPY to copy your files into the html directory on NGINX
- Use the command "docker build -t simple ."
- Use the command "docker container run --name=5th-try -d -p 9000:80 simple"
	- --name is to give a name to your image
	- -d run the container in background
	- -p publish the container's port to the host. In that case 9000 to 80

# NGINX

## How to set up NGINX (our web server)
Tutorial : <http://nginx.org/en/docs/beginners_guide.html>
Nginx is a webserver which stores hmtl, js, images files and use http request to display a website.
Nginx conf documents will be used for config our server and the right proxy connexion.

##	Command for nginx
<https://www.nginx.com/resources/wiki/start/topics/tutorials/commandline/>
- nginx -t = test your configuration file

## configure .conf file on nginx
location explanations : <https://www.digitalocean.com/community/tutorials/nginx-location-directive>
What is a proxy server : <https://www.varonis.com/fr/blog/serveur-proxy>
- Listen will indicate to the server which requewt he has to accept:
	Listen can take ports and adresses : exemple Listen 80;
- The location directive within NGINX server block allows to route request to correct location within the file system. The directive is used to tell NGINX where to look for a resource by including files and folders while matching a location block against an URL.

## Steps to add in localhost by configuring
1. I added to my /var/www/ directory an index html file
2. I configured the default file in etc/nginx/site-enabled/default
3. I added a server bracket with a location to var/www/ in the doc. Save it and reload nginx with 'nginx -s reload'.
4. Because the port host I put when I built was 7000. go to a web page and put: http://localhost:7000/. It works!!!!

![nginxLocalImage](images/nginxLocalImages.png)

# Useful things to know about dockers and containers
- I installed Ohmyzsh - check my dockerfile to see the command
