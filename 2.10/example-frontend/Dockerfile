FROM ubuntu:18.04

WORKDIR /usr/src/app

COPY example-frontend .

RUN apt-get update && apt-get install -y curl

RUN curl -sL https://deb.nodesource.com/setup_14.x | bash
RUN apt install -y nodejs
RUN npm install

ENV REACT_APP_BACKEND_URL=http://localhost:8099/api/

RUN REACT_APP_BACKEND_URL=${REACT_APP_BACKEND_URL} npm run build

RUN npm install -g serve

EXPOSE 5000

CMD ["serve", "-s", "-l", "5000", "build"]
