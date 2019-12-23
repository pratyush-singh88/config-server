FROM maven:3.6-jdk-8-alpine as build
ADD ./ app/
WORKDIR /app
RUN mvn clean install

FROM openjdk:8-jdk-alpine
COPY --from=build /app/target/config-server-0.0.1-SNAPSHOT.jar MM-config-server.jar
EXPOSE 8799
ENTRYPOINT ["java","-jar","-Dserver.port=9988","MM-config-server.jar"]