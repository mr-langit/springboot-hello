FROM alpine:latest

# Install jdk11
RUN apk --update --no-cache add openjdk11-jdk

ADD target/hello-1.0-SNAPSHOT.jar /usr/local/mrapp/hello.jar

WORKDIR /usr/local/mrapp/

CMD ["java", "-Dmessage=${MESSAGE}", "-Dspring.data.mongodb.username=${MONGO_USERNAME}", "-Dspring.data.mongodb.password=${MONGO_PASSWORD}","-jar", "hello.jar"]