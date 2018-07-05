FROM openJdk:8
ADD target/Docker-springboot.jar Docker-springboot.jar
EXPOSE 9002
ENTRYPOINT ["java","-jar","Docker-springboot.jar"]