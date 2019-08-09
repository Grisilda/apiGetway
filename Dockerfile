FROM openjdk
COPY src/main/java/resource/*.java target/resource.java'
ENTRYPOINT ["java", "-jar", "target/demo.jar"]
EXPOSE 8080
