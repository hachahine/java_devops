CREATE TABLE tb_motorcycles (
    id BIGINT PRIMARY KEY IDENTITY(1,1),
    license VARCHAR(50) NOT NULL,
    chassis VARCHAR(100),
    engine VARCHAR(100),
    status_color VARCHAR(50) CHECK (status_color IN ('YELLOW','BLUE','ORANGE','RED','GRAY','DARK_GREEN','PINK','LIGHT_GREEN')),
    id_model BIGINT,
    id_device BIGINT UNIQUE,
    CONSTRAINT fk_motorcycles_models FOREIGN KEY (id_model) REFERENCES tb_models(id)
);