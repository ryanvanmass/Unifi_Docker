# Unifi Network Controller Docker Container
## Running the Container
```
    docker pull ryanvanmass/unifi:7.1.61

    git clone https://github.com/ryanvanmass/unifi_docker
    
    docker run -d -v $pwd/Config:/Config -p 8443:8443 --name unifi unifi:7.1.61
```

# Building your Own Container
```
    git clone https://github.com/ryanvanmass/unifi_docker

    cd unifi_docker
    
    docker build -t unifi:7.1.61 .
```