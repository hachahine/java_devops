CREATE TABLE tb_audit_employees_log (
    id BIGINT PRIMARY KEY IDENTITY(1,1),
    operacao VARCHAR(20) NOT NULL,
    data_hora DATETIME2 DEFAULT GETDATE(), -- TIMESTAMP vira DATETIME2, adicionei default atual
    valores_antigos VARCHAR(255),
    valores_novos VARCHAR(255),
    id_employee BIGINT,
    CONSTRAINT fk_audit_log_employees FOREIGN KEY (id_employee) REFERENCES tb_employees(id)
);