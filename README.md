# docker-engine-setup

Repository for docker engine setup on WSL : Ubuntu (Without Docker Desktop)
- Install **Ubuntu 20.04 LTS** from Microsoft Store
- Open Ubuntu to setup username + password
- Open Terminal (or Powershell)
- cd to directory path below

```
...\docker-engine-setup>
```
- Run command **./docker-engine-setup.bat** below
```
...\docker-engine-setup> ./docker-engine-setup.bat
```
- Run command **wsl** below
```
...\docker-engine-setup> wsl
```
- Run command **sh ./setup.sh** below
```
.../docker-engine-setup$ sh ./setup.sh
```
- **login your repository register**
  - set **insecure-registries** in file daemon.json
    ```
    "insecure-registries": [
      "xxxx.xxx.xxx:8082"
    ]
    ```
  - set insecure-registries + username + password your repository
    ```
    docker login xxx.xxx.xxxx:8082 -u username -p password
    ```
  - close and open terminal again from command wsl and run command **sh ./docker-login.sh**
    ```
    .../docker-engine-setup$ sh ./docker-login.sh
    ```

