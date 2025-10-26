-- Consulta 9: Top 2 clientes que mais gastaram
SELECT nome, total_gasto
FROM (
  SELECT 
    c.nome,
    SUM(pr.preco * ip.quantidade) AS total_gasto
  FROM clientes c
  JOIN pedidos p ON c.cliente_id = p.cliente_id
  JOIN itens_pedido ip ON p.pedido_id = ip.pedido_id
  JOIN produtos pr ON ip.produto_id = pr.produto_id
  GROUP BY c.nome
) AS gastos
ORDER BY total_gasto DESC
LIMIT 2;


