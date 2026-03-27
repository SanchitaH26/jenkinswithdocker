# 1. Use an official Java runtime as a parent image
FROM eclipse-temurin:17-jdk-focalFROM openjdk:17-jdk-slim

# 2. Set the working directory inside the container
WORKDIR /app

# 3. Copy the Java file from your host to the container
COPY Sample.java .

# 4. Compile the Java code
RUN javac Sample.java

# 5. Run the program when the container starts
CMD ["java", "Sample"]