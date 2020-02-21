# docker build .

FROM debian:stable

whoami
which curl

RUN sudo apt-get update
RUN sudo apt-get install curl
RUN sudo apt-get install -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.2/install.sh | bash
RUN sudo node --v

EXPOSE  8080
CMD ["node", "--v"]
