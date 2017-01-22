FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.1.4

RUN gem install flickr_cli --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["flickr_cli"]
CMD ["--help"]
