# Image pour ranner le code java
FROM openjdk:17-alpine

# Définitir la répertoire de travaille
WORKDIR /app

EXPOSE 8080

# Copie du fichier JAR généré depuis l'étape de construction
COPY ./target/spring-boot-data-jpa*.jar app.jar

# Commande à exécuter lors du démarrage du conteneur
ENTRYPOINT ["java","-jar","app.jar"]