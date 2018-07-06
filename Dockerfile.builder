FROM ruby:2.5 as build
WORKDIR /blog
RUN gem install jekyll bundler
COPY Gemfile .
COPY Gemfile.lock .
RUN bundle install

VOLUME [ "/blog/src" ]
WORKDIR /blog/src
ENTRYPOINT [ "bundle", "exec", "jekyll", "build", "--config", "_config.yml" ]

#COPY . .
#RUN bundle exec jekyll build --config _config.yml