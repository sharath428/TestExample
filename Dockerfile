FROM java:8
VOLUME /tmp
ADD target/spring-boot-web-application-example-0.0.1-SNAPSHOT.jar  user.jar
RUN bash -c 'touch /user.jar'
ENV JAVA_OPTS=""
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /user.jar"]