
File docker-compose.yml

```yaml
version: "2.3"
services:
  rabbitmq:
    image: rabbitmq:3.13-management
    container_name: rabbitmq
    restart: unless-stopped
    ports:
      - "5672:5672"
      - "15672:15672"
    volumes:
      - /data/rabbitmq:/var/lib/rabbitmq
    environment:
      - RABBITMQ_DEFAULT_USER=admin
      - RABBITMQ_DEFAULT_PASS=Abc@1234
```

Run

```sh
sudo mkdir -p /data/rabbitmq && sudo chown 999:999 /data/rabbitmq
docker-compose up -d
```