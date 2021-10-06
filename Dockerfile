FROM ruby:3
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
# TODO-remove: For debug use only
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client aws-cli net-tools vim
WORKDIR /myapp
#ARG RAILS_ENV
COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock
RUN bundle install
ADD . /myapp

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# Configure the main process to run when running the image
CMD ["rails", "server", "-b", "0.0.0.0", "-e", "production"]
