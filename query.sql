CREATE DATABASE db_recursos_humanos;

CREATE TABLE tb_colaboradores(
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100),
    Cargo VARCHAR(100),
    Salario DECIMAL(10, 2),
    DataContratacao DATE
);

INSERT INTO tb_colaboradores (Nome, Cargo, Salario, DataContratacao) VALUES 
('Douglas Limas', 'Desenvolvedor', 3000.00, '2022-01-10'),
('Guilherme Moura', 'Analista de Sistemas', 2500.00, '2022-03-15'),
('Douglas Cardoso', 'gerente de projetos', 1800.00, '2022-07-01'),
('Dafne', 'Gerente de Projetos', 89000.00, '2022-02-20'),
('Roberto Dias', 'Analista de Dados', 2200.00, '2022-05-30');

SELECT * FROM tb_colaboradores WHERE Salario > 2000;

SELECT * FROM tb_colaboradores WHERE Salario < 2000;
SELECT * FROM tb_colaboradores;
UPDATE tb_colaboradores SET Salario = 3500.00 WHERE ID = 1;
