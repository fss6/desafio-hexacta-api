FROM ruby:3.1.1

#RUN curl -fsSL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get update -qq && apt-get install -y libgmp-dev 
#nodejs

RUN mkdir /app

WORKDIR /app

COPY . /app

RUN bundle install
#RUN npm i -g yarn && yarn install --check-files && yarn

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/

RUN chmod +x /usr/bin/entrypoint.sh

ENTRYPOINT ["entrypoint.sh"]

EXPOSE 3000

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]