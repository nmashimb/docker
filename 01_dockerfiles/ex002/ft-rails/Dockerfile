FROM ruby:2.7

RUN apt-get update -y

RUN apt-get install -y build-essential
RUN apt-get install -y nodejs
RUN apt-get install -y sqlite3
RUN apt-get install -y libpq-dev

ONBUILD COPY app /opt/app
ONBUILD WORKDIR /opt/app

ONBUILD EXPOSE 3000
ONBUILD RUN bundle install
ONBUILD RUN rake db:migrate
ONBUILD RUN rake db:seed
