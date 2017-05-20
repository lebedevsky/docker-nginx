FROM lebedevsky/docker-ubuntu16
MAINTAINER an.lebedevsky@gmail.com

ARG docker_env

RUN apt-get update

RUN apt-get -y install nginx

# clean
RUN apt-get autoclean

EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]