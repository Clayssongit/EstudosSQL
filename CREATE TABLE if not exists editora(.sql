CREATE TABLE if not exists editora(
    cod_editora int PRIMARY KEY not null,
    nome varchar (40) not null,
    cidade varchar (50) not null,
    tel_contato char (10) -- com DDD
);