-- Criando o Banco de Dados
CREATE DATABASE games;

-- "entrando" para realizar as alterações
USE games;

CREATE TABLE categorias(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL
);

CREATE TABLE jogos(
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    competitivo BOOLEAN DEFAULT false
);

CREATE TABLE plataformas(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL
);

SHOW TABLES FROM games;

SHOW FIELDS FROM categorias;