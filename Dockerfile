# Get the preinstalled java image
FROM openjdk:16-alpine3.13

# Copy the current folder which contains C++ source code to the Docker image under /usr/src
COPY . /usr/src/RPSserver

# Specify the working directory
WORKDIR /usr/src/RPSserver

# Compile
RUN javac server/main.java

# Run the program output from the previous step
CMD java server.main