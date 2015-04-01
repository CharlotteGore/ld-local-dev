FROM nice/ld-docker-build
MAINTAINER Charlotte Gore <conspiracygore@gmail.com>

RUN ["npm","install -g grunt-cli"]

RUN \
   apt-get install -q -y git raptor-utils graphviz && \
   mozroots --import --sync && \
   cd /tools && \
   ./install.sh && \
   cd -

ENV PROJECT_DIR="/tmp"
ENV MIMIR_PORT=80

EXPOSE  80
CMD ["/bin/bash","/src/owldin/install.sh"]
