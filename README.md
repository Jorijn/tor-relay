# tor-relay
Docker image for my Tor relay

`docker run -d -v /etc/localtime:/etc/localtime:ro --restart always -p 9001:9001 --name tor-relay tor-relay`
