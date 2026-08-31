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
