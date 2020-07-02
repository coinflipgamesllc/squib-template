FROM andymeneely/squib:latest

RUN apt-get update -qq && \
    apt-get install -y build-essential && \
    gem install bundler guard && \
    apt-get clean && apt-get autoremove --purge

WORKDIR /usr/src/app
COPY Gemfile Gemfile.lock /usr/src/app/
RUN bundle install
COPY . /usr/src/app/

