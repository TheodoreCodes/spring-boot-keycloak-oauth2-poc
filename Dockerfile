# BUILD CONTAINER
FROM maven:3.9.5-amazoncorretto-17 AS builder

# add pom.xml and source code
ADD ./pom.xml pom.xml
ADD ./src src/

# package jar
RUN mvn clean package -DskipTests


# RUN CONTAINER
FROM amazoncorretto:17

COPY --from=builder target/*.jar app.jar

ENTRYPOINT ["java", "-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=*:8090", "-jar", "./app.jar"]