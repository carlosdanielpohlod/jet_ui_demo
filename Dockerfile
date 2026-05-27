FROM ruby:3.3-slim

ENV RAILS_ENV=development
ENV BUNDLE_PATH=/usr/local/bundle

RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    git \
    libyaml-dev \
    libsqlite3-dev \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY Gemfile Gemfile.lock ./
RUN bundle install

COPY . .

RUN bundle exec rails db:migrate
RUN bundle exec rails tailwindcss:build

EXPOSE 3000
CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]
