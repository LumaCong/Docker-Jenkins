FROM openjdk:21

MAINTAINER "LumaCong"

EXPOSE 8080

RUN mkdir -p /data/project
ADD target/Docker-Jenkins-0.0.1-SNAPSHOT.jar /data/project/Docker-Jenkins-0.0.1-SNAPSHOT.jar

ENTRYPOINT ["/bin/sh", "-c", "java -jar /data/project/Docker-Jenkins-0.0.1-SNAPSHOT.jar"]