-- Consulta 3: Clientes com maior valor total de pedidos
SELECT 
  c.nome AS cliente,
  SUM(pr.preco * ip.quantidade) AS total_gasto
FROM clientes c
JOIN pedidos p ON c.cliente_id = p.cliente_id
JOIN itens_pedido ip ON p.pedido_id = ip.pedido_id
JOIN produtos pr ON ip.produto_id = pr.produto_id
GROUP BY c.nome
ORDER BY total_gasto DESC;

