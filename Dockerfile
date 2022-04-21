FROM node:current-buster-slim

ARG BRANCH="devel"
ENV BRANCH=${BRANCH}
ARG BUILDNO
ENV BUILDNO=${BUILDNO}
ENV NODE_ENV=production
ENV NODE_OPTIONS=--openssl-legacy-provider
ARG WITHOUT_PCE="false"

# install simple http server for serving static content
RUN npm install -g http-server

# make the 'app' folder the current working directory
WORKDIR /app

# copy both 'package.json' and 'package-lock.json' (if available)
COPY package*.json ./

# install project dependencies
RUN npm install
# copy project files and folders to the current working directory (i.e. 'app' folder)
COPY . .

RUN if [ "${WITHOUT_PCE}" = "true" ]; then rm -rf src/public-celtic-encyclopedia;fi  

# build app for production with minification
RUN ./node_modules/.bin/vuepress build src

RUN printf -- "BRANCH=${BRANCH}\n" >> .env
RUN printf -- "BUILDNO=${BUILDNO}\n" >> .env

EXPOSE 8080
CMD [ "http-server", "src/.vuepress/dist" ]
