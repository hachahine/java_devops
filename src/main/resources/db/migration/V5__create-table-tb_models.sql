CREATE TABLE tb_models (
    id BIGINT PRIMARY KEY IDENTITY(1,1),
    name VARCHAR(255) NOT NULL,
    id_brand BIGINT NOT NULL,
    CONSTRAINT fk_models_brands FOREIGN KEY (id_brand) REFERENCES tb_brands(id)
);