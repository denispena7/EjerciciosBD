CREATE DATABASE ejercicio10 CHARSET utf8mb4 COLLATE utf8mb4_spanish2_ci;
USE ejercicio10;

CREATE TABLE personas (
	idPersona INT AUTO_INCREMENT NOT NULL,
    nombrePersona VARCHAR(45) NOT NULL,
    primerApellidoPersona VARCHAR(45) NOT NULL,
    segundoApellidoPersona VARCHAR(45) NOT NULL,
    telefonoPersona VARCHAR(9) NOT NULL,
    correoElectronicoPersona VARCHAR(100) UNIQUE NOT NULL,
    PRIMARY KEY(idPersona)
);

CREATE TABLE vehiculos (
	idVehiculo INT AUTO_INCREMENT NOT NULL,
    marcaVehiculo VARCHAR(45) NOT NULL,
    modeloVehiculo VARCHAR(45) NOT NULL,
    fechaFabricacionVehiculo DATE NOT NULL,
    tipoVehiculo VARCHAR(45) NOT NULL,
    matriculaVehiculo VARCHAR(8) UNIQUE NOT NULL,
    fechaMatriculacionVehiculo DATE NOT NULL,
    fechaBajaVehiculo DATE NOT NULL,
    PRIMARY KEY(idVehiculo)
);

CREATE TABLE posesiones (
	idPersonaFK INT,
    idVehiculoFK INT,
    fechaDesde DATE NOT NULL,
    fechaHasta DATE NOT NULL,
    PRIMARY KEY(idPersonaFK, idVehiculoFK),
    FOREIGN KEY(idPersonaFK) REFERENCES personas(idPersona),
    FOREIGN KEY(idVehiculoFK) REFERENCES vehiculos(idVehiculo)
);