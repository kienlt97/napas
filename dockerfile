FROM openjdk:8-jdk-alpine
RUN addgroup -S spring && adduser -S spring -G spring
RUN echo "Asia/Ho_Chi_Minh" > /etc/timezone
USER spring:spring
ARG JAR_FILE=/target/*.jar
COPY ${JAR_FILE} ROOT.jar
ENTRYPOINT ["java","-jar","/ROOT.jar"]
CMD ["java", "-jar", "/ROOT.jar", "--server.port=${PORT:9009}"]

#-Dfile=D:/A-Core/lib/Multi-tenancy-hibernate-1.0-SNAPSHOT.jar -DgroupId=com.napas.multi.tenancy -DartifactId=Multi-tenancy-hibernate -Dversion=1.0-SNAPSHOT -Dpackaging=jar
