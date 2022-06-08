FROM node:current-buster-slim

ARG BRANCH="devel"
ENV BRANCH=${BRANCH}
ARG BUILDNO
ENV BUILDNO=${BUILDNO}
ENV NODE_ENV=production
ENV NODE_OPTIONS=--openssl-legacy-provider

# install simple http server for serving static content
WORKDIR /app

# copy project files and folders to the current working directory (i.e. 'app' folder)
COPY . .

# install project dependencies
RUN yarn add http-server; \
    yarn install

# Remove files that end in '---` only and remove them from lists
RUN chmod 755 ./bin/prune.sh;./bin/prune.sh

# Remove files that end in '---` only
RUN for file in `find ./src/public-celtic-encyclopedia/ -type f -not -name \
    "README.md"`;do tail -n1 $file 2>/dev/null | grep "\-\-\-" >/dev/null \
    && rm -f $file || echo $file not empty;done

# build app for production with minification
RUN ./node_modules/.bin/vuepress build src

RUN printf -- "BRANCH=${BRANCH}\n" >> .env
RUN printf -- "BUILDNO=${BUILDNO}\n" >> .env

EXPOSE 8080
CMD [ "./node_modules/.bin/http-server", "src/.vuepress/dist" ]
