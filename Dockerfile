FROM devopsfaith/krakend:2.2.1


# Copie o arquivo de configuração do KrakenD
COPY krakend.json /etc/krakend/krakend.json

EXPOSE 8080

ENTRYPOINT ["krakend", "run", "-c", "/etc/krakend/krakend.json"]
