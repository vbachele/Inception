FROM debian

RUN apt-get update && apt-get -y install nginx
RUN apt-get update && apt-get -y install vim
# Command for install ohmyzsh
RUN apt-get update && apt-get -y install wget && rm -rf /var/lib/apt/lists/*
RUN sh -c "$(wget -O- https://github.com/deluan/zsh-in-docker/releases/download/v1.1.2/zsh-in-docker.sh)"

COPY . /usr/share/nginx/html
CMD ["nginx", "-g", "daemon off;"]