FROM ruby:2.6

RUN bundle config --global frozen 1

WORKDIR /.

COPY Gemfile Gemfile.lock ./
RUN bundle install

COPY . .

CMD ["ruby", "./bot.rb"]