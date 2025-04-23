FROM devopsfaith/krakend:2.2.1

ENV FC_ENABLE=1
ENV FC_OUT=krakend.json

ARG DIRECTUS_BASE_URL
ARG DIRECTUS_API_KEY
ARG KRAKEND_API_KEY
ENV DIRECTUS_BASE_URL "$DIRECTUS_BASE_URL"
ENV DIRECTUS_API_KEY "$DIRECTUS_API_KEY"
ENV KRAKEND_API_KEY "$KRAKEND_API_KEY"

COPY . /etc/krakend/

WORKDIR /etc/krakend
RUN krakend check -tdc krakend.tmpl

EXPOSE 8080

ENTRYPOINT ["krakend", "run", "-c", "/etc/krakend/krakend.json"]
