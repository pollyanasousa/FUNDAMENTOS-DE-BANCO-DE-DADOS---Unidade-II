-- Consulta 10: Valor médio dos pedidos
SELECT 
  AVG(pr.preco * ip.quantidade) AS valor_medio_pedido
FROM pedidos p
JOIN itens_pedido ip ON p.pedido_id = ip.pedido_id
JOIN produtos pr ON ip.produto_id = pr.produto_id;