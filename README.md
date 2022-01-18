# Bedrock Dedicated Server of CSUST Hub

This server is deployed by Docker, so you should know basics of Docker.

___

## Quick Start

> Don't forget to open corresponding ports on your server!

1. Create the backup folder & change the ownership of it, or else the server's backup service will failed to work:

    ```shell
    chown <user>:docker backups/mcworld
    ```

2. Start the server

    ```shell
    cd docker && docker-compose up -d
    ```

3. If the server works well, the server will create two folders: `private` and `public`. Each folder contains a Minecraft server, a public one and a private one. The private one uses whitelist, so you must know how to add players to it. Here is a [guide](https://github.com/itzg/docker-minecraft-bedrock-server#whitelist).

4. The server will save bacups to [backups/](backups/), your can use the following command to share it on Internet:

    ```shell
    nohup sudo python3 -m http.server 80 --directory backups &
    ```

5. You can replace server's world with yours, but remember to change the world's folder name.

6. Stop the server:

    ```shell
    cd docker && docker-compose stop
    ```

___

## Some Docker Commands

Print docker help:

```shell
docker --help
```

Print specific help for docker option:

```shell
docker <option> --help

# like
docker ps --help
```

List docker containers:

```shell
docker ps
```

Start a Docker Compose and attach to tty:

> You can press `Ctrl+P, Ctrl+Q` to detach from tty.

```shell
docker-compose up
```

Start a Docker Compose without attach to tty:

```shell
docker-compose start
```

Stop a Docker Compose:

```shell
docker-compose stop
```

Stop a container:

```shell
docker stop <container>

# like
docker stop bds_csusthub
```

Restart a container:

```shell
docker restart <container>
```


## References

- <https://github.com/Kaiede/docker-minecraft-bedrock-backup/wiki>

- <https://github.com/itzg/docker-minecraft-bedrock-server>