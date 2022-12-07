FROM ruby:3.1.0

RUN apt-get update -qq 

ENV LANG=C.UTF-8 \
  BUNDLE_JOBS=4 \
  BUNDLE_RETRY=3 \
  RAILS_ENV=production

RUN gem update --system && gem install bundler

WORKDIR /usr/src/app

COPY Gemfile* ./

RUN bundle config frozen true \
 && bundle config jobs 4 \
 && bundle config deployment true \
 && bundle config without 'development test' \
 && bundle install

COPY . .
ARG secret_key_base=123
ARG RAILS_MASTER_KEY=112

CMD /usr/src/app/entrypoint.sh
EXPOSE 3000

CMD ["bundle", "exec", "puma", "-C", "config/puma.rb"]
