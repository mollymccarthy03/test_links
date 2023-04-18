FROM ruby:3.2.2

RUN gem install html-proofer

CMD ["/bin/sh"]

ENTRYPOINT ["htmlproofer"]