FROM node:boron

# Create app directory
WORKDIR /app

# Install app dependencies
COPY package.json .

RUN npm install

# Bundle app source
COPY . .

EXPOSE 8080 80
CMD [ "npm", "start" ]
