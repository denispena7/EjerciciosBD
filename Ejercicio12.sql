CREATE DATABASE ejercicio12 CHARSET utf8mb4 COLLATE utf8mb4_spanish2_ci;
USE ejercicio12;

CREATE TABLE usuarios (
	idUsuario INT AUTO_INCREMENT NOT NULL,
    nombreUsuario VARCHAR(45) NOT NULL,
    apellidosUsuario VARCHAR(45) NOT NULL,
    correoElectronico VARCHAR(100) NOT NULL,
    claveUsuario VARCHAR(255) NOT NULL,
    PRIMARY KEY(idUsuario)
);

CREATE TABLE mensajes (
	idUsuarioEnviaFK INT, 
    idUsuarioRecibeFK INT,
    textoMensaje TEXT NOT NULL,
    fechaMensaje DATE NOT NULL,
    horaMensaje TIME NOT NULL,
    PRIMARY KEY(idUsuarioEnviaFK, idUsuarioRecibeFK),
    FOREIGN KEY(idUsuarioEnviaFK) REFERENCES usuarios(idUsuario),
    FOREIGN KEY(idUsuarioRecibeFK) REFERENCES usuarios(idUsuario)
);