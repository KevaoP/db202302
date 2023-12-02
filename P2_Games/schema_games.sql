-- Criando o Banco de Dados
CREATE DATABASE games;

-- "entrando" Para realizar as alterações
USE games;

-- Criando tabela de categorias
CREATE TABLE categorias(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL
);

-- Criando tabela de jogos
CREATE TABLE jogos(
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    competitivo BOOLEAN NOT NULL,
    id_categoria INT NOT NULL,
    FOREIGN KEY (id_categoria) REFERENCES categorias (id)
);

-- Criando tabela de plataformas
CREATE TABLE plataformas(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    id_jogo INT NOT NULL,
    FOREIGN KEY (id_jogo) REFERENCES jogos (id)
);

-- Criando relação N para N (jogos e plataformas)
CREATE TABLE jogos_possuem_plataformas(
    id_jogo INT NOT NULL,
    id_plataforma INT NOT NULL,
    PRIMARY KEY (id_plataforma, id_jogo),
    FOREIGN KEY (id_plataforma) REFERENCES plataformas (id),
    FOREIGN KEY (id_jogo) REFERENCES jogos (id)
);

-- Mostrando as tabelas criadas
SHOW TABLES FROM games;
SHOW FIELDS FROM categorias;
SHOW FIELDS FROM jogos;
SHOW FIELDS FROM plataformas;
SHOW FIELDS FROM jogos_possuem_plataformas;