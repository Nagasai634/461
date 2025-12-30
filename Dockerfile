#dockerfile for spring-petclinic
FROM eclipse-temurin:21-jdk
WORKDIR /sai
ADD https://storage.googleapis.com/siva-gcs/nagasai /sai/sai.jar
EXPOSE 8080
CMD ["java","-jar","/sai/sai.jar"]

