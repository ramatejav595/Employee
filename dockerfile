FROM eclipse-temurin:17
LABEL authors="ramateja"

WORKDIR app/

COPY target/Employee-0.0.1-SNAPSHOT.jar /app/Employee.jar

ENTRYPOINT ["java", "-jar", "Employee.jar"]
