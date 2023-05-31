FROM openjdk:8-jdk-alpine
RUN addgroup -S spring && adduser -S spring -G spring
RUN echo "Asia/Ho_Chi_Minh" > /etc/timezone
USER spring:spring
ARG JAR_FILE=/target/*.jar
COPY ${JAR_FILE} sleuth.jar

ENTRYPOINT ["java","-jar","/sleuth.jar"]
CMD ["java", "-jar", "/sleuth.jar", "--server.port=${PORT:8086}"]