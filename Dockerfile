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

# Remove files that end in '---` only from all lists
RUN for file in `find ./src/public-celtic-encyclopedia/ -type f -not -name \
    "README.md"`;do tail -n1 $file 2>/dev/null | grep "\-\-\-" >/dev/null \
    && sed -e "/${file}/d" -i ./2.md -i ./a.md -i ./b.md -i ./c.md -i ./d.md -i ./e.md -i ./f.md -i ./g.md -i ./h.md -i ./i.md -i ./j.md -i ./k.md -i ./l.md -i ./m.md -i ./n.md -i ./o.md -i ./p.md -i ./q.md -i ./r.md -i ./s.md -i ./t.md -i ./u.md -i ./v.md -i ./w.md -i ./y.md -i ./z.md -i ./á.md -i ./é.md -i ./í.md -i ./ó.md -i ./ú.md -i ./README.md || echo $file not empty;done

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
