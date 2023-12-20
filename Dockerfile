FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && apt install -y \
    build-essential \
    curl \
    git \
    vim \
    ruby-full

RUN gem install bundler

RUN git clone https://github.com/ynu-math/Home_Page.git && cd ./Home_Page && bundle install --full-index && cd .. && rm -r Home_Page

EXPOSE 4000

CMD bash