FROM lebedevsky/docker-centos7
MAINTAINER an.elebedevsky@gmail.com

RUN yum install -y nginx

RUN yum -y clean all

EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]
