FROM node:11.6-slim
MAINTAINER Dennis Boldt info@dennis-boldt.de

# This forces the image to be build on every push!
ARG CACHEBUST=0

EXPOSE 3000
RUN mkdir -p /usr/src/app
RUN mkdir -p /log
WORKDIR /usr/src/app
ADD . /usr/src/app
RUN npm install

CMD ["/bin/sh", "-c", "npm start > /log/app.log 2>&1"]
