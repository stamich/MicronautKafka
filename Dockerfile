FROM openjdk:14-alpine
COPY target/kafka-*.jar kafka.jar
EXPOSE 8080
CMD ["java", "-Dcom.sun.management.jmxremote", "-Xmx128m", "-jar", "kafka.jar"]