USE estudos_03;
CREATE TABLE if not exists editora(
    cod_editora int PRIMARY KEY not null,
    nome varchar (40) not null,
    cidade varchar (50) not null,
    tel_contato char (10) -- com DDD
);
INSERT INTO editora (cod_editora, nome, cidade, tel_contato)
    VALUES
        (11009, 'Saraiva', 'São Paulo', 1130901010),
        (61001, 'Eras', 'Brasília', 6134201818),
        (41001, 'Summer', 'Curitiba', 4132994040),
        (11004, 'Pontos', 'São Paulo', 1154201966),
        (21001, 'Marks', 'Rio de Janeiro', 2159001010),
        (11003, 'Grupo A', 'São Paulo', 1135669865),
        (21002, 'Ciência Moderna', 'Rio de Janeiro', 2142002478),
        (11002, 'Ciêntífica', 'São Paulo', 1137201415),
        (11001, 'Planeta', 'São Paulo', 1155441881);
        
SELECT * FROM editora ORDER BY cod_editora;

USE estudos_03;
CREATE TABLE if not exists autor(
    cod_autor int PRIMARY KEY not null,
    nome varchar (40) not null,
    nascionalidade varchar (20) not null,
    dt_nacimento date
);
INSERT INTO autor (nome, nacionalidade, dt_nascimento, cod_autor )
    VALUES  
        ('Ethevaldo Siqueira', 'Brasileira', '1950-10-04', 1000),
        ('Ana Lucia Jankovic Barduchi', 'Brasileira', '1991-03-31', 1001),
        ('Adélia Prado', 'Brasileira', '1948-12-20', 1002),
        ('Walter Isaacson', 'Americana', '2000-07-07', 1003),
        ('Steven J. Scott', 'Americana', '2002-12-16', 1004),
        ('C. J. Date', 'Americana', '1950-03-25', 1005),
        ('Pedro Felipe', 'Brasileira', '1995-12-18', 1006),
        ('Kim Shaolin', 'China', '1970-04-03', 1007);
SELECT * FROM autor ORDER BY cod_autor;

USE estudos_03;
CREATE TABLE if not exists genero(
    cod_genero int PRIMARY KEY not null,
    genero varchar (20) not null,
    dias_devolucao tinyint not null
);
INSERT INTO genero
    VALUES  
        (101, 'Infantil', 5),
        (102,'Romance',30),
        (103, 'Biografia', 40),
        (104, 'Tecnologia', 15),
        (105, 'Administração', 20),
        (106, 'Poesia', 10);
USE estudos_03;
SELECT * FROM genero ORDER BY genero;