FROM openjdk:11

RUN mkdir -p /java/app/
COPY target/spring-boot-mongo-1.0.jar $PROJECT_HOME/spring-boot-mongo.jar

WORKDIR /java/app/
EXPOSE 8080
CMD ["java" ,"-jar","./spring-boot-mongo.jar"]
