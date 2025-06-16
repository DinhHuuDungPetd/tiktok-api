# Sử dụng image OpenJDK để chạy ứng dụng
FROM openjdk:17-jdk-slim

# Thiết lập thư mục làm việc
WORKDIR /app

# Copy JAR file from the build stage
COPY /target/*.jar app.jar

# Expose the port (ví dụ 8081)
EXPOSE 8080

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
