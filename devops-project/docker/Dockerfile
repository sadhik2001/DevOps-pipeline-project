
# Multi-stage build: build with Maven, run with JRE
FROM maven:3.9.4-eclipse-temurin-17 AS builder
WORKDIR /workspace
COPY app/pom.xml ./
COPY app/src ./src
RUN mvn -B -f pom.xml -DskipTests package

FROM eclipse-temurin:17-jre AS runtime
WORKDIR /app
COPY --from=builder /workspace/target/*.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/app/app.jar"]
