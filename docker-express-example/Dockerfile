FROM node:6.10.0
MAINTAINER Dennis Boldt info@dennis-boldt.de
EXPOSE 3000
RUN mkdir -p /usr/src/app  
WORKDIR /usr/src/app  
ADD . /usr/src/app  
RUN npm install
CMD ["npm", "start"]
