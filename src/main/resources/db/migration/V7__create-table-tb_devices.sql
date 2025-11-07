CREATE TABLE tb_devices (
    id BIGINT PRIMARY KEY IDENTITY(1,1),
    code VARCHAR(100) NOT NULL,
    distance DECIMAL(19,2), -- Ajustei para DECIMAL para distâncias, ou use FLOAT se preferir
    reading_timestamp DATETIME2, -- TIMESTAMP no SQL Server é diferente, use DATETIME2
    active BIT NOT NULL DEFAULT 0, -- NUMBER(1) vira BIT para booleano
    id_yard BIGINT NOT NULL,
    id_motorcycle BIGINT UNIQUE,
    CONSTRAINT fk_devices_yards FOREIGN KEY (id_yard) REFERENCES tb_yards(id),
    CONSTRAINT fk_devices_motorcycles FOREIGN KEY (id_motorcycle) REFERENCES tb_motorcycles(id)
);