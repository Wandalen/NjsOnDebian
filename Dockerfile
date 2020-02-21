# docker build .

FROM debian:stable

RUN whoami
RUN which curl
RUN which node

RUN sudo apt-get update
RUN sudo apt-get install curl
RUN sudo apt-get install -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.2/install.sh | bash

EXPOSE  8080
CMD ["node", "--v"]
