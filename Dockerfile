FROM ruby:3.0.1
  
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
  
WORKDIR /parking
COPY Gemfile /parking/Gemfile
COPY Gemfile.lock /parking/Gemfile.lock
RUN bundle install
RUN bundle update --bundler
CMD 'rails server -b 0.0.0.0'