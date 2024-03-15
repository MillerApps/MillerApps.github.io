FROM mcr.microsoft.com/devcontainers/jekyll:2-bullseye

WORKDIR /app

EXPOSE 4000

CMD ["jekyll", "serve", "--watch", "--host", "0.0.0.0" ]