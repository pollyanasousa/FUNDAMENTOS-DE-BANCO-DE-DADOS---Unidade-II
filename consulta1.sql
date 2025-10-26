-- Consulta 1: Total por pedido com nome do cliente e data
SELECT 
  c.nome AS cliente,
  p.pedido_id,
  p.data_pedido,
  SUM(pr.preco * ip.quantidade) AS total_pedido
FROM pedidos p
JOIN clientes c ON p.cliente_id = c.cliente_id
JOIN itens_pedido ip ON p.pedido_id = ip.pedido_id
JOIN produtos pr ON ip.produto_id = pr.produto_id
GROUP BY p.pedido_id, c.nome, p.data_pedido;

