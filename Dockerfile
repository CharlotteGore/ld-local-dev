FROM nice/ld-docker-build
MAINTAINER Ryan Roberts <ryansroberts@gmail.com>

RUN ["npm","install -g grunt-cli"]

ENV PROJECT_DIR="/tmp"
ENV MIMIR_PORT=80

EXPOSE  80
CMD ["cd /src/owldin && npm install && grunt"]
