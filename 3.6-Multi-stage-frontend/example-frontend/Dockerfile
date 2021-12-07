FROM node:14.16.1 AS example-frontend-build

WORKDIR /usr/src/app

COPY example-frontend .

ENV REACT_APP_BACKEND_URL=http://localhost:8080/

RUN npm install && \
    npm install -g serve && \
    REACT_APP_BACKEND_URL=${REACT_APP_BACKEND_URL} npm run build

FROM nginx:1.19-alpine

COPY --from=example-frontend-build /usr/src/app/build/ /usr/share/nginx/html
