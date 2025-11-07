CREATE TABLE tb_units (
    id BIGINT PRIMARY KEY IDENTITY(1,1),
    name VARCHAR(255) NOT NULL,
    address VARCHAR(255),
    neighborhood VARCHAR(255)
);