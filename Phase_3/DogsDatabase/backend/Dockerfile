# First stage: build the JAR
FROM eclipse-temurin:21-jdk as build

WORKDIR /app
COPY . .
RUN ./mvnw clean package -DskipTests

# Second stage: run the JAR
FROM eclipse-temurin:21-jdk as runtime

WORKDIR /app
COPY --from=build /app/target/*.jar app.jar

EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]
