FROM ruby:2.6-alpine

LABEL name="gollum"
LABEL maintainer="Ahmad Nassri <ahmad@ahmadnassri.com>"

VOLUME /wiki
WORKDIR /wiki

RUN apk add --no-cache --virtual build-deps build-base
RUN apk add --no-cache cmake
RUN apk add --no-cache git
RUN apk add --no-cache icu-dev icu-libs
RUN apk add --no-cache libressl-dev

RUN gem install gollum
RUN gem install github-markdown

RUN apk del build-base build-deps cmake git icu-dev icu-libs libressl-dev

ENTRYPOINT ["gollum"]
CMD ["--port", "8080"]

EXPOSE 8080
