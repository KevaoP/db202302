USE games;

CREATE TABLE categoria_pertence_jogos(
    id_categoria INT NOT NULL,
    id_jogos INT NOT NULL,
    PRIMARY KEY (id_categoria, id_jogos),
    FOREIGN KEY (id_categoria) REFERENCES categorias (id),
    FOREIGN KEY (id_jogos) REFERENCES jogos (id)
);

DROP TABLE categoria_pertence_jogos;

CREATE TABLE jogos_possuem_plataformas(
    id_jogos INT NOT NULL,
    id_plataforma INT NOT NULL,

)