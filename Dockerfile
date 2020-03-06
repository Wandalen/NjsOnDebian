# docker build .

FROM debian:stable

RUN whoami
# RUN which curl
# RUN which node

RUN sudo apt-get update
RUN sudo apt-get install curl
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
RUN nvm install --lts # install latest

RUN node -v
RUN npm -v

EXPOSE  8080
CMD [ "sh" ]
