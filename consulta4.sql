-- Consulta 4: Total de pedidos por cidade
SELECT 
  e.cidade,
  COUNT(p.pedido_id) AS total_pedidos
FROM pedidos p
JOIN enderecos e ON p.endereco_id = e.endereco_id
GROUP BY e.cidade
ORDER BY total_pedidos DESC;

