# Use the lightweight production runtime variant
FROM eclipse-temurin:17

# Set the working directory inside the container
WORKDIR /app

# Copy your pre-built application jar file
COPY target/*.jar app.jar

# Expose your application port
EXPOSE 8080

# Execute the application
ENTRYPOINT ["java", "-jar", "app.jar"]
