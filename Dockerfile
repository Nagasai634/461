#dockerfile for spring-petclinic
FROM eclipse-temurin:21-jdk
WORKDIR /sai
ADD https://storage.googleapis.com/siva-gcs/nagasai /sai/sai.jar
EXPOSE 8080
CMD ["java","-jar","/sai/sai.jar"]

#Dockerfile
FROM ubuntu:22.04
RUN apt update -y
RUN apt install git openjdk-21-jdk -y
RUN apt install maven -y
WORKDIR /app
RUN git clone https://github.com/Siva825/spring-petclinic.git .
RUN mvn clean package -DskipTests -Dcheckstyle.skip=true
EXPOSE 8080
CMD ["java", "-jar", "/app/target/spring-petclinic-3.5.0-SNAPSHOT.jar"]