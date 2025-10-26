-- Consulta 2: Produtos mais vendidos
SELECT 
  pr.nome_produto,
  SUM(ip.quantidade) AS total_vendido
FROM itens_pedido ip
JOIN produtos pr ON ip.produto_id = pr.produto_id
GROUP BY pr.nome_produto
ORDER BY total_vendido DESC;

