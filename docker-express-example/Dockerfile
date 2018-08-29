FROM node:10.9.0-stretch
MAINTAINER Dennis Boldt info@dennis-boldt.de

# This forces the image to be build on every push!
ARG CACHEBUST=0

EXPOSE 3000
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
ADD . /usr/src/app
RUN npm install
CMD ["npm", "start"]
