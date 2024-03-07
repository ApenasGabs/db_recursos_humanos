CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    descricao TEXT
);

CREATE TABLE tb_pizzas (
    id_pizza INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    descricao TEXT,
    preco DECIMAL(10, 2) NOT NULL,
    tamanho VARCHAR(50),
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);


INSERT INTO tb_categorias (nome, descricao) VALUES 
	('Tradicional', 'Pizzas com receitas tradicionais e clássicas.'),
	('Especial', 'Pizzas com ingredientes selecionados e combinações únicas.'),
	('Doce', 'Pizzas de sobremesa com ingredientes doces.'),
	('Vegana', 'Pizzas feitas sem nenhum produto de origem animal.'),
	('Light', 'Pizzas com baixo teor calórico.');


INSERT INTO tb_pizzas (nome, descricao, preco, tamanho, id_categoria) VALUES
	('Margherita', 'Molho de tomate, queijo, tomate e manjericão.', 35.90, 'Grande', 1),
	('Pepperoni', 'Molho de tomate, queijo e pepperoni.', 42.00, 'Grande', 1),
	('Chocolate', 'Chocolate meio amargo e morango.', 50.00, 'Médio', 3),
	('Portuguesa', 'Molho de tomate, queijo, presunto, ovo e cebola.', 47.50, 'Grande', 1),
	('Veggie', 'Molho de tomate, queijo, berinjela, abobrinha e pimentão.', 55.00, 'Grande', 4),
	('Frango com Catupiry', 'Molho de tomate, queijo, frango e catupiry.', 59.90, 'Grande', 2),
	('Rúcula com Tomate Seco', 'Molho de tomate, queijo, rúcula e tomate seco.', 62.00, 'Grande', 2),
	('Banana com Canela', 'Banana, açúcar e canela.', 40.00, 'Médio', 3);


SELECT * FROM tb_pizzas WHERE preco > 45.00;
 
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;
 
SELECT * FROM tb_pizzas WHERE nome LIKE '%M%';
 
SELECT tb_pizzas.*, tb_categorias.nome AS categoria_nome, tb_categorias.descricao AS categoria_descricao
FROM tb_pizzas
INNER JOIN tb_categorias ON tb_pizzas.id_categoria = tb_categorias.id_categoria;
 
SELECT tb_pizzas.*, tb_categorias.nome AS categoria_nome, tb_categorias.descricao AS categoria_descricao
FROM tb_pizzas
INNER JOIN tb_categorias ON tb_pizzas.id_categoria = tb_categorias.id_categoria
WHERE tb_categorias.nome = 'Doce';