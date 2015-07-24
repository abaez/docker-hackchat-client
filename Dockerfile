FROM abaez/hackchat-server

# Setup the client.
WORKDIR /opt/hackchat/client
RUN npm install -g less jade http-server
RUN make

EXPOSE 8080

CMD ["http-server"]
