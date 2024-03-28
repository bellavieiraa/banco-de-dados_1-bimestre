CREATE DATABASE e_commerce;  

USE e_commerce;  

CREATE TABLE clientes (
	id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    endereco VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    numero_cll VARCHAR(255) NOT NULL,
    data_nascimento DATE NOT NULL
);

CREATE TABLE produtos (
    produto_id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    descricao TEXT NOT NULL,
    qt_estoque INT NOT NULL,
    primary key (produto_id)
);

CREATE TABLE pedidos (
    pedido_id INT AUTO_INCREMENT PRIMARY KEY,
    clientes_id INT NOT NULL,
    dt_pedido DATETIME NOT NULL,
    valor_total DECIMAL(10, 2) NOT NULL,
    dt_entrega DATE NOT NULL,
    FOREIGN KEY (cliente_id) REFERENCES clientes(id)
);

CREATE TABLE pedido_itens (
    pedido_itens_id INT AUTO_INCREMENT PRIMARY KEY,
    pedido_id INT NOT NULL,
    produto_id INT NOT NULL,
    quantidade INT NOT NULL,
    vl_unit DECIMAL(10, 2) NOT NULL,
    vl_ttl DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (pedido_id) REFERENCES pedidos(id),
    FOREIGN KEY (produto_id) REFERENCES produtos(id)
);




2




INSERT INTO clientes (nome, endereco, email, numero_cll, data_nascimento)
VALUES ('Maria Silva', 'Rua A, 123', 'maria@email.com', '(11) 98765-4321', '1990-05-15'),
	('João Santos', 'Rua B, 456', 'joao@email.com', '(11) 12345-6789', '1985-10-20')
	('Ana Oliveira', 'Rua C, 789', 'ana@email.com', '(11) 23456-7890', '1988-03-25'),
	('Pedro Souza', 'Rua D, 1011', 'pedro@email.com', '(11) 34567-8901', '1992-07-12'),
	('Carla Lima', 'Rua E, 1213', 'carla@email.com', '(11) 45678-9012', '1983-12-30'),
	('Lucas Pereira', 'Rua F, 1415', 'lucas@email.com', '(11) 56789-0123', '1995-04-05'),
	('Mariana Costa', 'Rua G, 1617', 'mariana@email.com', '(11) 67890-1234', '1986-09-17'),
	('Rodrigo Santos', 'Rua H, 1819', 'rodrigo@email.com', '(11) 78901-2345', '1998-02-08'),
	('Camila Oliveira', 'Rua I, 2021', 'camila@email.com', '(11) 89012-3456', '1991-11-23'),
	('Gustavo Silva', 'Rua J, 2223', 'gustavo@email.com', '(11) 90123-4567', '1980-06-29')


INSERT INTO produtos (nome, preco, descricao, qt_estoque)
VALUES ('Calça Jeans', 59.99, 'Calça Jeans de corte slim', 80)
('Vestido Floral', 39.99, 'Vestido estampado floral', 120),
('Blusa de Moletom', 49.99, 'Blusa de moletom com capuz', 90),
('Sapato Social', 79.99, 'Sapato social de couro', 60),
('Jaqueta de Couro', 99.99, 'Jaqueta de couro sintético', 70),
('Saia Plissada', 34.99, 'Saia plissada em tecido leve', 110),
('Bermuda Cargo', 24.99, 'Bermuda cargo em sarja', 150),
('Camisa Polo', 44.99, 'Camisa polo de piquet', 85),
('Sapatênis', 69.99, 'Sapatênis casual em couro', 75),
('Camiseta', 29.99, 'Camiseta de algodão', 100), 


INSERT INTO pedidos (clientes_id, dt_pedido, valor_total, dt_entrega)
VALUES (1, '2024-03-27', 150.00, '2024-04-03'),
       (2, '2024-04-01', 120.00, '2024-04-07'),
	   (3, '2024-04-05', 200.00, '2024-04-11'),
	   (4, '2024-04-10', 180.00, '2024-04-16'),
       (5, '2024-04-15', 160.00, '2024-04-21'),
       (6, '2024-04-20', 175.00, '2024-04-26'),
       (7, '2024-04-25', 190.00, '2024-05-01'),
       (8, '2024-04-30', 140.00, '2024-05-06'),
       (9, '2024-05-05', 165.00, '2024-05-11'),
       (10, '2024-05-10', 155.00, '2024-05-16')



INSERT INTO pedido_itens (pedido_id, produto_id, quantidade,  vl_unit, vl_ttl)
VALUES  (1, 1, 2, 29.99, 59.98),
		(2, 1, 1, 39.99, 79.98),
		(3, 2, 3, 49.99, 99.98),
		(4, 2, 1, 19.99, 39.98),
		(5, 3, 2, 34.99, 69.98),
		(6, 1, 3, 44.99, 89.98),
		(7, 3, 1, 27.99, 55.98),
		(8, 2, 2, 59.99, 119.98),
		(9, 1, 1, 49.99, 99.98),
		(10, 3, 3, 19.99, 39.98)




UPDATE clientes
SET email = 'isabella@sousa.com'
WHERE cliente_id IN (1, 2, 3, 4);


UPDATE produtos
SET qt_estoque = qt_estoque - 5
WHERE produto_id IN (1, 2, 3, 4);




DELETE FROM clientes
WHERE cliente_id IN (1, 2);



DELETE FROM produtos
WHERE produto_id IN (1, 2);

