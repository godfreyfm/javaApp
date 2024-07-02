# Use an official OpenJDK runtime as a parent image
FROM amazoncorretto:8-alpine3.17-re

# Set the working directory in the container
WORKDIR /usr/app

# Copy the JAR file into the container at /app
COPY ./target/java-maven-build-*.jar /usr/app/

# Make port 8080 available to the world outside this container
EXPOSE 8080

# Run the JAR file
CMD java -jar java-maven-build-*.jar
