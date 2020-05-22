FROM ruby:2.6-alpine

LABEL name="gollum"
LABEL maintainer="Ahmad Nassri <ahmad@ahmadnassri.com>"

VOLUME /wiki
WORKDIR /wiki

RUN apk add --no-cache --virtual build-deps build-base
RUN apk add --no-cache cmake
RUN apk add --no-cache openssl-dev

RUN gem install gollum

RUN apk del build-base build-deps cmake openssl-dev

ENTRYPOINT ["gollum"]

EXPOSE 4567
