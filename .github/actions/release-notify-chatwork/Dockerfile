FROM ruby:2.6.0

RUN gem install octokit

ADD entrypoint.rb /entrypoint.rb
RUN chmod 711 /entrypoint.rb

ENTRYPOINT ["/entrypoint.rb"]