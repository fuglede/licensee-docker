FROM ruby:slim
RUN apt update && apt-get install -y ruby bundler cmake pkg-config git libssl-dev && rm -rf /var/lib/apt/lists/*
RUN gem install licensee
ENTRYPOINT licensee
