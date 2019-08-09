FROM openjdk
COPY src/main/java/resource/*.java target/resource.java'
ENTRYPOINT ["java", "-jar", "target/resource.java"]
EXPOSE 8080
