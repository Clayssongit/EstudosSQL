CREATE TABLE if not exists editora(
    cod_editora int PRIMARY KEY not null,
    nome varchar (40) not null,
    cidade varchar (50) not null,
    tel_contato char (10) -- com DDD
);
INSERT INTO editora (cod_editora, nome, cidade, tel_contato)
    VALUES
        (11005, 'Saraiva', 'São Paulo', 1130901010),
        (61001, 'Eras', 'Brasília', 6134201818),
        (41001, 'Summer', 'Curitiba', 4132994040),
        (11004, 'Pontos', 'São Paulo', 1154201966),
        (21001, 'Marks', 'Rio de Janeiro', 2159001010),
        (11003, 'Grupo A', 'São Paulo', 1135669865),
        (21002, 'Ciência Moderna', 'Rio de Janeiro', 2142002478),
        (11002, 'Ciêntífica', 'São Paulo', 1137201415),
        (11001, 'Planeta', 'São Paulo', 1155441881);
        
SELECT * FROM editora ORDER BY cod_editora;

CREATE TABLE if not exists autor(
    cod_autor int PRIMARY KEY not null,
    nome varchar (40) not null,
    nacionalidade varchar (20) not null,
    dt_nascimento date
);
INSERT INTO autor (nome, nascionalidade, )