# Usar uma imagem base do OpenJDK
FROM openjdk:17-jdk-slim

# Definir o diretório de trabalho dentro do container
WORKDIR /app

# Copiar o arquivo JAR gerado para o container
COPY target/projetoLoja-0.0.1-SNAPSHOT.jar app.jar

# Expôr a porta 8080 (ou a porta que sua aplicação usa)
EXPOSE 8080

# Comando para executar o JAR da aplicação
ENTRYPOINT ["java", "-jar", "app.jar"]
