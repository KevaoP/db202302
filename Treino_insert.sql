USE Biblioteca;

INSERT INTO livro (id,autor,titulo,categoria) VALUES
    (1,'Kevin','Te Amo Nath','Romance');

SELECT autor, titulo, categoria FROM  livro;

INSERT INTO cliente (id,telefone,rua,bairro,cidade) VALUES
    (1,'14996081508','Pedro Leide','VL São Luiz','Ourinhos');

SELECT * FROM cliente;

INSERT INTO historico ()

SELECT * FROM livro AS li LEFT JOIN cliente AS cli
    ON (li.id = cli.id);

SHOW TABLES;
SHOW FIELDS FROM cliente;
SHOW FIELDS FROM historico;