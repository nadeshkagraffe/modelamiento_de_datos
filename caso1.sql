CREATE DATABASE departaments;
\c departaments;

CREATE TABLE departamento(id SERIAL, nombre VARCHAR(50)NOT NULL, PRIMARY KEY(id));

CREATE TABLE trabajador(rut VARCHAR(10)NOT NULL, nombre VARCHAR(50)NOT NULL, direccion VARCHAR(50), id_departamento SMALLINT NOT NULL,FOREIGN KEY(id_departamento) REFERENCES departamento(id), PRIMARY KEY(rut));

CREATE TABLE liquidaciones(id SERIAL, rut_trabajador VARCHAR(10) NOT NULL, drive VARCHAR(30), FOREIGN KEY(rut_trabajador) REFERENCES trabajador(rut), PRIMARY KEY (id));
