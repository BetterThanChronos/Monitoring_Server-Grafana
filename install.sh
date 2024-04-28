#!/bin/bash

# Función para mostrar un mensaje de estado
status_message() {
    echo "==> $@"
}

# Instalación de Grafana
status_message "Instalando Grafana..."
sudo apt-get install -y adduser libfontconfig1
wget https://dl.grafana.com/oss/release/grafana_7.3.4_amd64.deb
sudo dpkg -i grafana_7.3.4_amd64.deb
sudo systemctl daemon-reload
sudo systemctl start grafana-server
status_message "Estado de Grafana:"
sudo systemctl status grafana-server
sudo systemctl enable grafana-server.service

status_message "Instalación completada."
