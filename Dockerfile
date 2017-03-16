FROM ruby:2.2.3

RUN curl -sL https://deb.nodesource.com/setup_4.x | bash -
RUN apt-get update -y
RUN apt-get install -y nodejs
RUN mkdir /gameoflife
WORKDIR /gameoflife
RUN echo "deb http://apt.postgresql.org/pub/repos/apt/ xenial-pgdg main" > /etc/apt/sources.list.d/pgdg.list
RUN wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add -
RUN apt-get update
RUN apt-get install -y postgresql-client-9.4
COPY Gemfile* /gameoflife/
RUN bundle install