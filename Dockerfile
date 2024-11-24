FROM openjdk:17-jdk-alpine 

WORKDIR /app 

COPY pom.xml . 

COPY mvnw . 

COPY .mvn .mvn 

COPY src ./src 

RUN chmod 777 mvnw 

RUN ./mvnw package 

RUN ls -l ./target 

CMD ["java", "-jar", "target/projetoLoja-0.0.1-SNAPSHOT.war"]

RUN apt-get update && apt-get install -y postgresql-client
RUN psql $SPRING_DATASOURCE_URL -U $SPRING_DATASOURCE_USERNAME -c '\l'
