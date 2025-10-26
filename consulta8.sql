-- Consulta 8: Produtos que ainda não foram vendidos
SELECT 
  pr.nome_produto
FROM produtos pr
LEFT JOIN itens_pedido ip ON pr.produto_id = ip.produto_id
WHERE ip.produto_id IS NULL;

