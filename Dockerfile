FROM openjdk:latest
 
COPY target/*.jar /srv/

COPY docker-entrypoint.sh /

EXPOSE 8083

ENTRYPOINT ["java","-jar","/srv/configuration-0.0.1-SNAPSHOT.jar"]

