# Ruby version
FROM ruby:2.6.6

# Install rails dependencies and working directory
RUN apt-get update -qq && apt-get install -y vim nodejs yarn postgresql-client
RUN mkdir /leaflet_app
WORKDIR /leaflet_app

# Copy gemfile and gemfile.lock
COPY Gemfile /leaflet_app/Gemfile
COPY Gemfile.lock /leaflet_app/Gemfile.lock

# Update and install the bundler for docker(uses system default)
RUN gem install bundler:2.1.4
RUN bundle install

# Copy app contents to docker container
COPY . /leaflet_app

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]