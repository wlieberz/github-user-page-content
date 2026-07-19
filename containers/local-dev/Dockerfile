# Should match the runner version: `grep "runs-on:" .github/workflows/main.yml`
FROM docker.io/library/ubuntu:24.04

LABEL org.opencontainers.image.authors="https://github.com/wlieberz"

# https://jekyllrb.com/docs/installation/#requirements
RUN apt update && \
  apt upgrade -y && \
  apt install -y gcc g++ make ruby ruby-dev && \
  apt-get clean

ENV GEM_HOME="/home/ubuntu/.gems"
ENV BUNDLE_PATH="/home/ubuntu/.gems"
ENV BUNDLE_BIN="/home/ubuntu/.gems/bin"
ENV PATH="${BUNDLE_BIN}:${PATH}"

# UID 1000 == ubuntu
USER 1000
WORKDIR /home/ubuntu
COPY --chown=ubuntu:ubuntu wlieberz-tech-blog/Gemfile* ./
RUN gem install bundler jekyll jekyll-sitemap minima
RUN bundle install
