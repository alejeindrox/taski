FROM ruby:3.1.0

WORKDIR /taski

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

VOLUME /usr/local/bundle

COPY Gemfile Gemfile.lock ./

RUN bundle install --no-cache

COPY . .
