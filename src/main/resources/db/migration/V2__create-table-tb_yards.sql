CREATE TABLE tb_yards (
    id BIGINT PRIMARY KEY IDENTITY(1,1),
    name VARCHAR(255) NOT NULL,
    id_unit BIGINT NOT NULL,
    CONSTRAINT fk_yards_units FOREIGN KEY (id_unit) REFERENCES tb_units(id)
);