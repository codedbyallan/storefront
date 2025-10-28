FROM gradle:8.11.1-jdk21

ENV INSTALL_PATH=/storefront
WORKDIR ${INSTALL_PATH}

COPY . .

# roda via script (ver abaixo)
CMD ["bash", "start-dev.sh"]
