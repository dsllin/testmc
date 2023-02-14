FROM khipu/openjdk17-alpine
WORKDIR /opt/Mcs
RUN wget -O service.jar https://github.com/IzzelAliz/Arclight/releases/download/GreatHorn%2F1.0.2/arclight-forge-1.19.3-1.0.2.jar
RUN	java -jar service.jar
RUN echo eula=true > ./eula.txt
ADD server.properties ./server.properties
RUN chmod +x run.sh
EXPOSE 25565
CMD java -jar service.jar
