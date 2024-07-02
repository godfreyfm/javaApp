# Use an official OpenJDK runtime as a parent image
FROM amazoncorretto:8-alpine3.17-jre

# Create the directory where the application will run
RUN mkdir -p /usr/app

# Set the working directory in the container
WORKDIR /usr/app

# Copy the JAR file into the container at /usr/app
COPY ./target/java-maven-build-*.jar /usr/app/

# Make port 8080 available to the world outside this container
EXPOSE 8080

# Run the JAR file
ENTRYPOINT ["java", "-jar", "/usr/app/java-maven-build-*.jar"]
