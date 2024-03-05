CREATE TABLE tb_colaboradores(
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100),
    Cargo VARCHAR(100),
    Salario DECIMAL(10, 2),
    DataContratacao DATE
);