FROM openjdk:8u292-jdk

WORKDIR /usr/src/app

COPY spring-example-project .

RUN chmod +x ./mvnw
RUN ./mvnw package

EXPOSE 8080

CMD ["java", "-jar", "./target/docker-example-1.1.3.jar"]
