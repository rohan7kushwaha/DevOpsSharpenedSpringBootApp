# Stage 1: Build JAR
FROM maven:3.9.6-eclipse-temurin-17 AS build
WORKDIR /app
COPY . .
RUN mvn clean package -DskipTests

# Stage 2: Run JAR
FROM public.ecr.aws/docker/library/openjdk:17
WORKDIR /app
#Copy the compiled Java application JAR file into the container
COPY ./target/ProductAppAWS-0.0.1-SNAPSHOT.jar /app
#Expose the port the Spring Boot application will run on
EXPOSE 8080
Command to run the application
CMD ["java", "-jar", "ProductAppAWS-0.0.1-SNAPSHOT.jar"]

