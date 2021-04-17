FROM openjdk:15-alpine

RUN mkdir /usr/beerkubernetes

COPY target/beerstock-0.0.1-SNAPSHOT.jar /usr/beerkubernetes/app.jar
WORKDIR /usr/beerkubernetes

EXPOSE 8080

ENTRYPOINT [ "sh", "-c", "java --enable-preview $JAVA_OPTS -jar app.jar" ]
#CMD ["java", "-Xms128m", "-Xmx256m", "-jar", "app.jar"]
