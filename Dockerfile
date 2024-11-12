# Usa una imagen base de Go para compilar y ejecutar la aplicación
FROM golang:1.18

# Establece el directorio de trabajo en /app
WORKDIR /app

# Copia el archivo main.go al directorio de trabajo
COPY main.go .

# Compila la aplicación y genera un binario llamado 'app'
RUN go build -o app main.go

# Expone el puerto 8080
EXPOSE 8080

# Ejecuta la aplicación
CMD ["./app"]
