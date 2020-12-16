FROM node:13

WORKDIR /usr/src/app


# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package.json .

RUN npm install -g nodemon

RUN npm install -g gatsby-cli 

RUN npm install

COPY . .


# Optionally, copy your .env file to the container filesystem
#COPY .env .

EXPOSE 8000

CMD ["gatsby", "develop", "-H", "0.0.0.0"]