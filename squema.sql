-- Tabela de clientes
CREATE TABLE clientes (
  cliente_id INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(100) NOT NULL,
  email VARCHAR(100) UNIQUE NOT NULL,
  telefone VARCHAR(20)
);

-- Tabela de endereços
CREATE TABLE enderecos (
  endereco_id INT PRIMARY KEY AUTO_INCREMENT,
  cliente_id INT,
  rua VARCHAR(100) NOT NULL,
  cidade VARCHAR(50) NOT NULL,
  estado VARCHAR(50) NOT NULL,
  cep VARCHAR(10) NOT NULL,
  FOREIGN KEY (cliente_id) REFERENCES clientes(cliente_id) ON DELETE CASCADE
);

-- Tabela de categorias
CREATE TABLE categorias (
  categoria_id INT PRIMARY KEY AUTO_INCREMENT,
  nome_categoria VARCHAR(100) NOT NULL UNIQUE
);

-- Tabela de produtos
CREATE TABLE produtos (
  produto_id INT PRIMARY KEY AUTO_INCREMENT,
  nome_produto VARCHAR(100) NOT NULL,
  preco DECIMAL(10,2) NOT NULL CHECK (preco > 0),
  categoria_id INT,
  FOREIGN KEY (categoria_id) REFERENCES categorias(categoria_id)
);

-- Tabela de pedidos
CREATE TABLE pedidos (
  pedido_id INT PRIMARY KEY AUTO_INCREMENT,
  cliente_id INT,
  endereco_id INT,
  data_pedido DATE NOT NULL,
  status VARCHAR(20) NOT NULL CHECK (status IN ('pendente', 'aprovado', 'recusado')),
  metodo_pagamento VARCHAR(20) NOT NULL CHECK (metodo_pagamento IN ('PIX', 'cartao', 'boleto')),
  FOREIGN KEY (cliente_id) REFERENCES clientes(cliente_id),
  FOREIGN KEY (endereco_id) REFERENCES enderecos(endereco_id)
);

-- Tabela de itens do pedido (N:N entre pedidos e produtos)
CREATE TABLE itens_pedido (
  item_id INT PRIMARY KEY AUTO_INCREMENT,
  pedido_id INT,
  produto_id INT,
  quantidade INT NOT NULL CHECK (quantidade > 0),
  FOREIGN KEY (pedido_id) REFERENCES pedidos(pedido_id),
  FOREIGN KEY (produto_id) REFERENCES produtos(produto_id)
);

-- Tabela de pagamentos
CREATE TABLE pagamentos (
  pagamento_id INT PRIMARY KEY AUTO_INCREMENT,
  pedido_id INT,
  valor_pago DECIMAL(10,2) NOT NULL CHECK (valor_pago >= 0),
  status_pagamento VARCHAR(20) NOT NULL CHECK (status_pagamento IN ('aprovado', 'recusado', 'pendente')),
  FOREIGN KEY (pedido_id) REFERENCES pedidos(pedido_id)
);