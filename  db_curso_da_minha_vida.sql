CREATE DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    descricao TEXT NOT NULL
);


CREATE TABLE tb_cursos (
    id_curso INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    descricao TEXT NOT NULL,
    duracao_horas INT NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);

INSERT INTO tb_categorias (nome, descricao) VALUES 
	('Banco de Dados', 'Cursos sobre gestão e manipulação de banco de dados.'),
	('DevOps', 'Cursos focados em práticas de DevOps para desenvolvedores Java e TypeScript.'),
	('Testes Automatizados', 'Cursos sobre criação e gestão de testes automatizados em aplicações.'),
	('Segurança em Aplicações', 'Cursos dedicados a ensinar práticas de segurança em desenvolvimento de software.'),
	('Cloud Computing', 'Cursos sobre desenvolvimento e gestão de aplicações na nuvem.'),
	('Microserviços', 'Cursos especializados em arquitetura de microserviços usando Java e outros frameworks.'),
	('Frameworks Front-end', 'Cursos sobre frameworks modernos de front-end além de TypeScript, como React, Vue.js e Angular.');
    
    
INSERT INTO tb_cursos (nome, descricao, duracao_horas, preco, id_categoria) VALUES 
	('Java Básico', 'Introdução ao Java para iniciantes.', 20, 300.00, 1),
	('Java Avançado', 'Conceitos avançados de programação em Java.', 40, 600.00, 1),
    ('Spring Framework', 'Desenvolvimento de aplicações web com Spring.', 30, 800.00, 1);

INSERT INTO tb_cursos (nome, descricao, duracao_horas, preco, id_categoria) VALUES 
	('TypeScript Básico', 'Introdução ao TypeScript para iniciantes.', 20, 350.00, 2),
	('TypeScript Avançado', 'Conceitos avançados e melhores práticas com TypeScript.', 40, 700.00, 2),
	('Angular com TypeScript', 'Desenvolvimento de aplicações SPA com Angular.', 50, 950.00, 2);



SELECT * FROM tb_cursos WHERE preco > 500.00;

 
SELECT * FROM tb_cursos WHERE preco BETWEEN 600.00 AND 1000.00;

 
SELECT * FROM tb_cursos WHERE nome LIKE '%J%';

 
SELECT tb_cursos.*, tb_categorias.nome AS categoria_nome, tb_categorias.descricao AS categoria_descricao
FROM tb_cursos
INNER JOIN tb_categorias ON tb_cursos.id_categoria = tb_categorias.id_categoria;

 
SELECT tb_cursos.*, tb_categorias.nome AS categoria_nome, tb_categorias.descricao AS categoria_descricao
FROM tb_cursos
INNER JOIN tb_categorias ON tb_cursos.id_categoria = tb_categorias.id_categoria
WHERE tb_categorias.nome = 'Java Back-end';