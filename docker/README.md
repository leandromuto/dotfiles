# docker

Docker-related files live here.

## VM

A simple Ubuntu container that acts like a lightweight VM (stays running so you can `exec` into it).

Build:

```sh
docker build -t dotfiles-vm docker
```

Run:

```sh
docker run -d --name dotfiles-vm dotfiles-vm
```

Shell in:

```sh
docker exec -it dotfiles-vm bash
```

## Home server stack

`docker-compose.yml` runs a small home-server stack. Home Assistant itself is
not included here since it runs on its own Home Assistant Yellow device.

| Service      | URL                     | Purpose                                   |
| ------------ | ------------------------ | ------------------------------------------ |
| Node-RED     | http://localhost:1880    | Automation flows (can talk to HA over its API/websocket) |
| Portainer    | http://localhost:9000    | Web UI to manage containers on this host  |
| Prometheus   | http://localhost:9090    | Metrics collection                        |
| Grafana      | http://localhost:3000    | Dashboards (default login `admin`/`admin`) |
| node-exporter | -                        | Host metrics, scraped by Prometheus       |
| cAdvisor     | http://localhost:8080    | Container metrics, scraped by Prometheus  |

Start everything:

```sh
docker compose -f docker/docker-compose.yml up -d
```

Stop everything:

```sh
docker compose -f docker/docker-compose.yml down
```

Prometheus scrape targets are defined in `docker/prometheus/prometheus.yml`.
To pull in Home Assistant's own metrics, enable its Prometheus integration
and uncomment the `home-assistant` job in that file.

In Grafana, add Prometheus (`http://prometheus:9090`) as a data source, then
import community dashboards for Node Exporter (id `1860`) and cAdvisor
(id `19792`) to get started quickly.
