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

# Remove files that end in '---` only
RUN for file in `find ./ -type f -size -203`;do [ `tail -n1 $file | grep "\-\-\-" | wc -l` -eq 0 ] && rm -f $file;done

# build app for production with minification
RUN ./node_modules/.bin/vuepress build src

RUN printf -- "BRANCH=${BRANCH}\n" >> .env
RUN printf -- "BUILDNO=${BUILDNO}\n" >> .env

EXPOSE 8080
CMD [ "./node_modules/.bin/http-server", "src/.vuepress/dist" ]
