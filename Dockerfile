FROM openJdk:8
ADD target/docker-springboot.jar docker-springboot.jar
EXPOSE 9002
ENTRYPOINT ["java","-jar","docker-springboot.jar"]
