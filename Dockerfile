FROM jekyll/jekyll
RUN gem install bundler
WORKDIR /srv/jekyll
COPY Gemfile .
RUN bundle install
EXPOSE 80
CMD [ "/usr/gem/bin/bundle", "exec", "/usr/local/bundle/bin/jekyll", "serve", "--port", "80" ]
STOPSIGNAL 2
