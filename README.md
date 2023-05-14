# web-app-docker
A simple web application deployed in a Docker container

## Welche Schritte wurden gemacht?
### Anlegen des Projekts
1. `Web-App` anfertigen oder portieren

### Image erstellen
1. `Dockerfile` anlegen
2. `Dockerfile` mit den entsprechenden Anweisungen ergänzen
3. `Image` bauen:
    ```bash
    docker build -t web-app-docker
    ```
    - `-t` = Image mit dem Namen `web-app-docker` versehen

**Hinweis:** Bei Veränderungen am Inhalt der Web-App muss der Docker-Container neu gebaut werden!

### Container ausführen
```bash
docker run -d --name web-app-docker -p 8080:80 web-app-docker
```
- `-d` = Container im Hintergrund ausführen
- `--name` = Container mit dem Namen `web-app-docker` versehen
- `-p 8080:80` = Port `80` des Containers auf Port `8080` des Hosts mappen

### weitere Befehle
Conainer stoppen
```bash
docker stop web-app-docker
```

Container auflisten
```bash
docker container list
```

Container entfernen
```bash
docker rm web-app-docker
```

Images auflisten
```bash
docker images -a
```

Image entfernen
```bash
docker rmi web-app-docker
```