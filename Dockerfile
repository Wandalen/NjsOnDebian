# docker build .

FROM    debian:stable

RUN apt install curl
RUN apt curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.2/install.sh | bash
RUN node --v


EXPOSE  8080
CMD ["node", "--v"]
