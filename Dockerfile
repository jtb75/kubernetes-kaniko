FROM nginx
RUN echo 'This is version 3' > /usr/share/nginx/html/index.html
COPY twistcli /tmp/twistcli
RUN /tmp/twistcli --version
