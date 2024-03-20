# Fetching the minified node image on apline linux
FROM node:alpine

# Setting up the work directory
WORKDIR /app

# package.json
COPY ./package* .

RUN yarn

# Copying all the files in our project
COPY ./src ./src

# Starting our application
CMD [ "yarn", "dev" ]

# Exposing server port
EXPOSE 3000
