FROM debian:latest

# add bun dependencies
RUN apt-get update && apt-get install -y \
    curl \
    unzip \
    zip

# add bun
RUN curl -fsSL https://bun.sh/install | bash 
ENV PATH="/root/.bun/bin:${PATH}"

WORKDIR /app

