CREATE DATABASE examenes;
\c examenes;

CREATE TABLE curso(id SERIAL, nombre_curso VARCHAR(50), PRIMARY KEY(id));

CREATE TABLE alumno(rut VARCHAR(10) NOT NULL, nombre_alumno VARCHAR(30), id_curso SMALLINT,PRIMARY KEY(rut), FOREIGN KEY(id_curso) REFERENCES curso(id));

CREATE TABLE profesor(id SERIAL, nombre VARCHAR(30) NOT NULL, departamento VARCHAR(30) NOT NULL, PRIMARY KEY (id));

CREATE TABLE pruebas(id SERIAL, puntaje SMALLINT, rut_alumno VARCHAR(10) NOT NULL, id_profesor SMALLINT NOT NULL, PRIMARY KEY (id), FOREIGN KEY (rut_alumno) REFERENCES alumno(rut), FOREIGN KEY (id_profesor) REFERENCES profesor(id));

