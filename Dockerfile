FROM java:8
COPY . /var/www/java
WORKDIR /var/www/java
RUN javac ./server/main.java
CMD ["java", "server.main", "8080"]