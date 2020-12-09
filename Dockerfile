FROM nginx
RUN echo 'This is version 3' > /usr/share/nginx/html/index.html
COPY twistcli /tmp/twistcli
RUN /tmp/twistcli --version
RUN /tmp/twistcli images scan --containerized --address https://192.168.1.160:8083 --user cicd --password cicd --details kubekan:3
RUN rm /tmp/twistcli
