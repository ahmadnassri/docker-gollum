FROM ruby:3.1.1-alpine

LABEL name="gollum"
LABEL maintainer="Ahmad Nassri <ahmad@ahmadnassri.com>"

WORKDIR /

RUN apk add --no-cache --virtual build-deps build-base
RUN apk add --no-cache cmake
RUN apk add --no-cache openssl-dev

COPY Gemfile .
RUN gem install -g

RUN apk del build-base build-deps cmake openssl-dev
RUN rm -rf /usr/lib/ruby/gems/*/cache/*.gem

VOLUME /wiki
WORKDIR /wiki

ENTRYPOINT ["gollum"]

EXPOSE 4567
