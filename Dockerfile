FROM node:6.9.1

ENV APP_DIR=/opt/angular-tour-of-heroes/

# RUN apt-get update && apt-get install -yV

COPY package.json /tmp/package.json
RUN cd /tmp && npm install \
	&& npm i -g lite-server typescript concurrently @types/core-js @types/node @angular/core

WORKDIR ${APP_DIR}

VOLUME "/Users/clementchoi/Downloads:/shareDir"

ADD . .

CMD ["npm", "run", "lite"]