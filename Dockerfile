# Stage 1: Build the Spring Boot application
FROM maven:3.9.9-eclipse-temurin-21 AS build
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn clean package -DskipTests

# Stage 2: Run the application with a smaller Java runtime image
FROM eclipse-temurin:21-jre
WORKDIR /app
COPY --from=build /app/target/java-docker-webapp-1.0.0.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]
