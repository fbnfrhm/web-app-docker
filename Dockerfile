# Benutze die aktuelle Version des HTTPD-Containers
FROM httpd:latest
# Kopiere das lokale Verzeichnis './app' in das 
# Container-Verzeichnis '/usr/local/apache2/htdocs/'
COPY ./app /usr/local/apache2/htdocs/