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

USE estudos_03;
CREATE TABLE if not exists usuario(
    CPF_usuario char (11) not null,
    nome varchar (50) not null,
    telefone char (8) not null,
    dt_cadastro date,
    dt_nascimento date not null,
    PRIMARY KEY (CPF_usuario)
);
INSERT INTO usuario (CPF_usuario, nome, telefone, dt_cadastro, dt_nascimento)
    VALUES
        ('12345678901', 'Ana Silva', 98765432, '2018-09-19', '2003-10-17'),
        ('23456789012', 'Carlos Pereira', 87654321, '2020-06-12', '1998-01-24'),
        ('34567890123', 'Daniela Costa', 76543210, '2021-09-01', '1987-04-09'),
        ('45678901234', 'Eduardo Santos', 65432109, '2017-07-13', '1999-01-01'),
        ('56789012345', 'Fernanda Almeida', 54321098, '2018-03-02', '2001-04-09'),
        ('67890123456', 'Gabriel Souza', 43210987, '2020-02-07', '2000-08-19'),
        ('78901234567', 'Helena Martins', 32109876, '2015-10-12', '1997-10-02'),
        ('89012345678', 'Igor Fernandes', 21098765, '2017-03-09', '1993-03-11'),
        ('90123456789', 'Bruno Oliveira', 10987654, '2019-02-23', '2004-09-10');
SELECT * FROM usuario ORDER BY CPF_usuario;

USE estudos_03;
CREATE TABLE if not exists funcionario(
    CPF_funcionario char (11) not null,
    nome varchar (40) not null,
    cidade varchar (50) not null,
    telefone char (8) not null,
    salario decimal (7,2) not null,
    funcao varchar (30),
    dt_admissao date,
    dt_nascimento date,
    PRIMARY key (CPF_funcionario)
);
INSERT INTO funcionario (CPF_funcionario, nome, cidade, telefone, salario, funcao, dt_admissao, dt_nacimento)
    VALUES
        ('90123456789', 'Lucas Almeida', 'Campinas', 90123456, 1200.54, 'Auxiliar', '2018-03-12', '1985-09-18'),
        ('01234567890', 'Mariana Silva', 'São Paulo', 01234567, 4899.00, 'Recepicionista2', '2019-02-23', '1989-09-01'),
        ('11234567890', 'Rafael Costa', 'São paulo', 11234567, 3600.00, 'Recepicionista1', '2018-05-09', '1999-02-05'),
        ('21234567890', 'Beatriz Oliveira', 'Rio de Janeiro', 21234567, 6000.50, 'Bibliotecaria', '2018-01-09', '2000-05-19'),
        ('31234567890', 'Gabriel Santos', 'Ceará', 31234567, 4800.00, 'Segurança', '2020-01-15', '1996-06-10'),
        ('41234567890', 'Ana Pereira', 'Campinas', 41234567, 7500.00, 'Bibliotecaria chefe', '2020-01-15', '1993-07-04'),
        ('51234567890', 'João Fernandes', 'São paulo', 51234567, 4000.00, 'Auxiliar geral', '2018-05-15', '1992-05-01'),
        ('61234567890', 'Larissa Rodrigues', 'Rio de Janeiro', 61234567, 9500.50, 'Gerente', '2016-09-12', '1994-06-19');
SELECT * FROM funcionario ORDER BY CPF_funcionario;
      