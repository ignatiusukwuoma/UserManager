FROM node:boron

# Create app directory
RUN mkdir /app
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json /app/
RUN npm install

# Copy our application into the working directory
COPY . /app
EXPOSE 3000

CMD ["npm", "start"]