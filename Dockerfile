FROM ruby:3.1.0

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

RUN mkdir /taski
WORKDIR /taski

COPY Gemfile /taski/Gemfile
COPY Gemfile.lock /taski/Gemfile.lock

RUN bundle install

COPY . /taski