# Should match the runner version: `grep "runs-on:" .github/workflows/main.yml`
FROM docker.io/library/ubuntu:24.04

LABEL org.opencontainers.image.authors="https://github.com/wlieberz"

# https://jekyllrb.com/docs/installation/#requirements
RUN apt update && \
  apt upgrade -y && \
  apt install -y gcc g++ make ruby ruby-dev && \
  apt-get clean && \
  gem install jekyll bundler

# UID == ubuntu
USER 1000

WORKDIR /home/ubuntu
