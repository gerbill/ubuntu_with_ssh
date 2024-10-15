# Ubuntu with ssh enabled
Spin up your own ubuntu server in docker! 


⚠️ NOTE: THIS CONTAINER IS MEANT ONLY FOR LOCAL USE FOR TESTING OR LEARNING PURPUSES

## Setup
1. Install docker for your OS if you haven't yet: https://docs.docker.com/engine/install/
2. Make sure docker is indeed up and running by executing the following command:
```bash
docker run hello-world
```
3. Clone this repo and `cd` into it
4. Run this container with command  
```bash
bash reload.sh
```
5. Make sure container is running by checking `docker ps`. You should see something like this
```
CONTAINER ID   IMAGE     COMMAND               CREATED         STATUS         PORTS                  NAMES
f5e0e0ff280f   ubuntu    "/usr/sbin/sshd -D"   7 seconds ago   Up 6 seconds   0.0.0.0:2222->22/tcp   ubuntu
```

## Access
Access it via ssh 
```
host: localhost
port: 2222
login: root
password: test
```
You can change password in the `Dockerfile`  
Run `bash reload.sh` again to apply changes  

## Stop and delete
```bash
docker rm -f ubuntu
```
Run `bash reload.sh` if you'd like to spin it up again later.