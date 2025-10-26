-- Consulta 6: Pagamentos aprovados com valor
SELECT 
  p.pedido_id,
  pg.valor_pago
FROM pagamentos pg
JOIN pedidos p ON pg.pedido_id = p.pedido_id
WHERE pg.status_pagamento = 'aprovado';

