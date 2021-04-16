FROM ruby:2.7


WORKDIR /usr/src/app

# COPY Gemfile Gemfile.lock ./src/
COPY ./src/ /usr/src/app
RUN bundle install


EXPOSE 8080
CMD ["ruby", "/usr/src/app/details.rb", "8080"]