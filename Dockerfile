FROM ruby:2.7.0
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
WORKDIR /taller_rails
COPY Gemfile /taller_rails/Gemfile
RUN bundle install
#ADD . /taller_rails

COPY docker-entrypoint.sh /taller_rails/

ENTRYPOINT ["/taller_rails/docker-entrypoint.sh"]


# Set defaults to run the image
EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]
