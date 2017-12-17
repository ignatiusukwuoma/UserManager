FROM node:argon

ADD package*.json /tmp/package.json
RUN cd /tmp && npm install
RUN mkdir -p /opt/app && cp -a /tmp/node_modules /opt/app/

# Create app directory
WORKDIR /opt/app

# Copy our application into the working directory
ADD . /opt/app
EXPOSE 3000

CMD ["npm", "start"]