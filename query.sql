-- Inserção de dados
INSERT INTO categorias (nome_categoria) VALUES
('Eletrônicos'),
('Livros'),
('Moda');

INSERT INTO produtos (nome_produto, preco, categoria_id) VALUES
('Notebook', 3500.00, 1),
('Smartphone', 2500.00, 1),
('Fone Bluetooth', 300.00, 1),
('Romance Histórico', 45.00, 2),
('Autoajuda', 60.00, 2),
('Camiseta Estampada', 80.00, 3);

INSERT INTO clientes (nome, email, telefone) VALUES
('Ana Silva', 'ana@email.com', '81999990001'),
('Carlos Souza', 'carlos@email.com', '81999990002'),
('Juliana Lima', 'juliana@email.com', '81999990003'),
('Rafael Costa', 'rafael@email.com', '81999990004');

INSERT INTO enderecos (cliente_id, rua, cidade, estado, cep) VALUES
(1, 'Rua das Flores', 'Recife', 'PE', '50000-000'),
(2, 'Av. Brasil', 'Olinda', 'PE', '53000-000'),
(3, 'Rua do Sol', 'Jaboatão', 'PE', '54000-000'),
(4, 'Rua Verde', 'Paulista', 'PE', '53400-000');

INSERT INTO pedidos (cliente_id, endereco_id, data_pedido, status, metodo_pagamento) VALUES
(1, 1, '2025-10-01', 'pendente', 'PIX'),
(2, 2, '2025-10-02', 'pendente', 'cartao'),
(3, 3, '2025-10-03', 'pendente', 'boleto'),
(4, 4, '2025-10-04', 'pendente', 'PIX'),
(1, 1, '2025-10-05', 'pendente', 'cartao');

INSERT INTO itens_pedido (pedido_id, produto_id, quantidade) VALUES
(1, 1, 1),
(1, 4, 2),
(2, 2, 1),
(2, 6, 3),
(3, 3, 2),
(4, 5, 1),
(5, 1, 1),
(5, 2, 1),
(5, 3, 1);

INSERT INTO pagamentos (pedido_id, valor_pago, status_pagamento) VALUES
(1, 3590.00, 'aprovado'),
(2, 2740.00, 'aprovado'),
(3, 600.00, 'recusado'),
(4, 60.00, 'pendente'),
(5, 6100.00, 'aprovado');