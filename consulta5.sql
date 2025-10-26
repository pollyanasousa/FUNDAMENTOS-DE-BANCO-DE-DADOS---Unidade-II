-- Consulta 5: Produtos agrupados por categoria
SELECT 
  c.nome_categoria,
  COUNT(p.produto_id) AS total_produtos
FROM produtos p
JOIN categorias c ON p.categoria_id = c.categoria_id
GROUP BY c.nome_categoria;

