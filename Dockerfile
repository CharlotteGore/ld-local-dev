FROM nice/ld-docker-app
MAINTAINER Ryan Roberts <ryansroberts@gmail.com>

RUN ["npm","install -g grunt"]

ENV PROJECT_DIR="/tmp"
ENV MIMIR_PORT=80

EXPOSE  80
CMD ["cd /src/owldin && npm install && grunt"]
