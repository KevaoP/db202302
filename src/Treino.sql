CREATE DATABASE Biblioteca;

use Biblioteca;

CREATE TABLE livro(
    id INT AUTO_INCREMENT PRIMARY KEY,
    autor VARCHAR(255) NOT NULL,
    categoria VARCHAR(255) NOT NULL,
    titulo VARCHAR(255) NOT NULL
);

SHOW FIELDS FROM livro;

CREATE TABLE cliente(
    id INT AUTO_INCREMENT PRIMARY KEY,
    telefone CHAR(11) NOT NULL,
    rua VARCHAR(255) NOT NULL,
    bairro VARCHAR(255) NOT NULL,
    cidade VARCHAR(255) NOT NULL
);

DROP TABLE cliente;

SHOW FIELDS FROM cliente;

CREATE TABLE historico(
    id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    retirada INT NOT NULL,
    devolucao INT NOT NULL,
    id_cliente INT REFERENCES cliente (id),
    id_livro INT REFERENCES livro (id)
);
DROP TABLE historico;
SHOW FIELDS FROM historico;

SHOW TABLES;