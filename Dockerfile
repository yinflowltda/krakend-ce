FROM devopsfaith/krakend:2.2.1

# Instale o make (base Debian/Ubuntu)
RUN apt-get update && apt-get install -y make && rm -rf /var/lib/apt/lists/*

# Copie o arquivo de configuração do KrakenD
COPY krakend.json /etc/krakend/krakend.json

EXPOSE 8080

ENTRYPOINT ["krakend", "run", "-c", "/etc/krakend/krakend.json"]
