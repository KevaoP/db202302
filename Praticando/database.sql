# Criando o Banco de Dados
CREATE DATABASE biblioteca;

# Comando para utilizar o BD criado
USE biblioteca;

# Criando uma entidade
# Nela contem as informações:
# ID, Categoria, Autor e Titulo
CREATE TABLE livro(
    id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    categoria VARCHAR(255) NOT NULL,
    autor VARCHAR(255) NOT NULL,
    titulo VARCHAR(255) NOT NULL
);

# Mostrar a tabela criada
SHOW FIELDS FROM livro;

# Criando uma entidade
# Nela contem as informações:
# ID, Telefone, Cidade, Bairro e Rua
CREATE TABLE cliente(
    id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    telefone CHAR(11),
    cidade VARCHAR(255) NOT NULL,
    bairro VARCHAR(255) NOT NULL,
    rua VARCHAR(255) NOT NULL,
    id_livro INT NOT NULL,
    FOREIGN KEY (id_livro) REFERENCES livro (id)
);
DROP TABLE cliente;
# Mostrar a tabela criada
SHOW FIELDS FROM cliente;

# Criando uma entidade com relação as duas tabelas
# Nela contem as informações:
# Retirada, Devolução, id_livro e id_cliente
CREATE TABLE historico(
    id_cliente INT NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES cliente (id),
    retirada DATE,
    devolucao DATE
);

# Mostra a tabela criada
SHOW FIELDS FROm historico;