INSERT INTO regiones (id,sigla,detalle) values (1,'I','Región de Tarapacá');
INSERT INTO regiones (id,sigla,detalle) values (2,'II','Región de Antofagasta');
INSERT INTO regiones (id,sigla,detalle) values (3,'III','Región de Atacama');
INSERT INTO regiones (id,sigla,detalle) values (4,'IV','Región de Coquimbo');
INSERT INTO regiones (id,sigla,detalle) values (5,'V','Región de Valparaíso');
INSERT INTO regiones (id,sigla,detalle) values (6,'VI','Región del Libertador General Bernardo O’Higgins');
INSERT INTO regiones (id,sigla,detalle) values (7,'VII','Región del Maule');
INSERT INTO regiones (id,sigla,detalle) values (8,'VIII','Región del Biobío');
INSERT INTO regiones (id,sigla,detalle) values (9,'IX','Región de La Araucanía');
INSERT INTO regiones (id,sigla,detalle) values (10,'X','Región de Los Lagos');
INSERT INTO regiones (id,sigla,detalle) values (11,'XI','Región Aysén del General Carlos Ibáñez del Campo');
INSERT INTO regiones (id,sigla,detalle) values (12,'XII','Región de Magallanes y Antártica Chilena');
INSERT INTO regiones (id,sigla,detalle) values (13,'XIII','Región Metropolitana de Santiago');
INSERT INTO regiones (id,sigla,detalle) values (14,'XIV','Región de Los Ríos');
INSERT INTO regiones (id,sigla,detalle) values (15,'XV','Región de Arica y Parinacota');
INSERT INTO regiones (id,sigla,detalle) values (16,'XVI','Región de Ñuble');
INSERT INTO curso (id,nombre,imagen,fecinicio,fectermino,cupos,descripcion) VALUES (0,'dummie','https://www.gstatic.com/webp/gallery/1.webp','2022-06-02','2023-06-02',0,'desc1');
INSERT INTO curso (id,nombre,imagen,fecinicio,fectermino,cupos,descripcion) VALUES (1,'Emprendimiento digital con programación','https://picsum.photos/500?random=1','2022-06-02','2023-06-02',20,'curso orientado a incorporar conocimientos y habilidades para crear una startup');
INSERT INTO curso (id,nombre,imagen,fecinicio,fectermino,cupos,descripcion) VALUES (2,'Diseño UX/UI','https://picsum.photos/500?random=2','2022-06-02','2023-06-02',20,'Desarrolla las habilidades necesarias para diseñar experiencia e interfaces, flujos de navegación y prototipos');
INSERT INTO curso (id,nombre,imagen,fecinicio,fectermino,cupos,descripcion) VALUES (3,'Desarrollo de Aplicaciones Front-End Trainee','https://picsum.photos/500?random=3','2022-06-02','2023-06-02',20,'Programa orientado al desarrollo de las habilidades necesarias para construir y mantener aplicaciones o sitios web');
INSERT INTO curso (id,nombre,imagen,fecinicio,fectermino,cupos,descripcion) VALUES (4,'Desarrollo de Aplicaciones Full Stack Java Trainee','https://picsum.photos/500?random=4','2022-06-02','2023-06-02',20,'Desarrolla las habilidades necesarias para construir y mantener piezas de software en lenguaje Java ');
INSERT INTO curso (id,nombre,imagen,fecinicio,fectermino,cupos,descripcion) VALUES (5,'Desarrollo de Aplicaciones Full Stack JavaScript Trainee','https://picsum.photos/500?random=5','2022-06-02','2023-06-02',20,'El curso desarrolla las habilidades necesarias para construir y mantener piezas de software en lenguaje Javascript y frameworks basados en Javascript');
INSERT INTO estudiante (rut, password,enabled, nombre, telefono,direccion,email,id_region,id_curso,edad) values ('admin','$2a$12$QShqh/DVhjdhR.xexLM.ve9I8qxkeei48FkZg2.2aXdl.L0dPYYcG',1,'Admin', '99999999','Calle1','admin@gmail.com',6,0,29);
INSERT INTO estudiante (rut, password,enabled, nombre, telefono,direccion,email,id_region,id_curso,edad) values ('12431111k','$2a$10$8.UnVuG9HHgffUDAlk8qfOuVGkqRzgVymGe07xd00DMxs.AQubh4a',1,'Alumno', '977668105','Calle1','marce@gmail.com',6,0,29);
INSERT INTO authorities (username, authority) values ('12431111k','USER');
INSERT INTO authorities (username, authority) values ('admin','ADMIN');