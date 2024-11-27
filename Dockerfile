# Usa una imagen base ligera con Go
FROM golang:1.21-alpine

# Instala Git
RUN apk add --no-cache git

# Configura el directorio de trabajo dentro del contenedor
WORKDIR /app

# Clona el repositorio del Scan-CLI-Plugin
RUN git clone https://github.com/docker/scan-cli-plugin.git scan-cli-plugin

# Cambia al directorio del repositorio clonado
WORKDIR /app/scan-cli-plugin

# Compila el programa Go
RUN go build -o scan-cli-plugin cmd/docker-scan/main.go

# Configura el punto de entrada para el contenedor
ENTRYPOINT ["./scan-cli-plugin"]
