# Use the Tomcat 8.5.72 image with Java 8 and Debian Buster
FROM tomcat:8.5.72-jdk8-openjdk-buster

# Copy your addressbook.war file to Tomcat's webapps directory
COPY target/addressbook.war /usr/local/tomcat/webapps

# Expose port 8080 for accessing the application
EXPOSE 8080

# Start Tomcat when the container is run
CMD ["catalina.sh", "run"]
