FROM devopsfaith/krakend:2.2.1

# Copie o arquivo de configuração do KrakenD para o container
COPY krakend.json /etc/krakend/krakend.json

# Exponha a porta padrão do KrakenD
EXPOSE 8080

# Comando de inicialização do KrakenD
ENTRYPOINT ["krakend", "run", "-c", "/etc/krakend/krakend.json"]
