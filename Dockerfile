FROM node:12.13-alpine

LABEL "com.github.actions.name"="Particle.io Action"
LABEL "com.github.actions.description"="Run Particle.io cloud operations against codebase and devices"
LABEL "com.github.actions.icon"="upload-cloud"
LABEL "com.github.actions.color"="blue"

RUN npm i --global particle-cli@1.53.0

ADD entrypoint.sh /entrypoint.sh

RUN ["chmod", "+x", "/entrypoint.sh"]

ENTRYPOINT ["/entrypoint.sh"]
