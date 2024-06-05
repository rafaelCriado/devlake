FROM docker:latest

# Define variáveis de ambiente
ENV DOCKER_TLS_CERTDIR=/certs

RUN mkdir /services
COPY services /services
COPY init.sh /

EXPOSE 4000

# Define o comando padrão a ser executado quando o contêiner é iniciado
CMD ["/init.sh"]
