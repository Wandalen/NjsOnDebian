# docker build .

FROM debian:stable

SHELL [ "/bin/bash", "-c" ]
# RUN rm /bin/sh && ln -s /bin/bash /bin/sh
# RUN whoami
# RUN which curl
# RUN which node

RUN apt-get update
RUN apt-get install curl -y
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash

RUN echo $PATH

RUN ls -al ~
RUN ~/.bashrc
#RUN bash ; exit

RUN echo $PATH

RUN nvm install --lts # install latest

RUN node -v
RUN npm -v

EXPOSE 8080
CMD [ "sh" ]
