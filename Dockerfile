FROM centos:7
RUN yum -y install epel-release
RUN yum -y install update
RUN yum -y install nginx
ADD index.html /usr/share/nginx/html/index.html
EXPOSE 80/tcp
CMD ["nginx", "-g daemon off;"]
