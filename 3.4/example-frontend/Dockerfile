FROM ubuntu:18.04

WORKDIR /usr/src/app

COPY example-frontend .

ENV REACT_APP_BACKEND_URL=http://localhost:8080/

RUN apt-get update && apt-get install -y curl && \
    curl -sL https://deb.nodesource.com/setup_14.x | bash && \
    apt install -y nodejs && \
    npm install && \
    REACT_APP_BACKEND_URL=${REACT_APP_BACKEND_URL} npm run build && \
    npm install -g serve && \
    apt-get remove npm && \
    apt-get purge -y --auto-remove curl && \
    rm -rf /var/lib/apt/lists/*

EXPOSE 5000

CMD ["serve", "-s", "-l", "5000", "build"]
