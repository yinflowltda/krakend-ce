FROM devopsfaith/krakend:2.2.1

ENV FC_ENABLE=1
ENV FC_OUT=krakend.json

COPY . /etc/krakend/

WORKDIR /etc/krakend
RUN krakend check -tdc krakend.tmpl

EXPOSE 8080

ENTRYPOINT ["krakend", "run", "-c", "/etc/krakend/krakend.json"]
