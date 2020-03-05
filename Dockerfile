FROM ruby:2.3

RUN apt-get update && apt-get install -y nodejs build-essential

WORKDIR /usr/src/app
COPY Gemfile* ./
RUN bundle install
COPY . .

EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]
