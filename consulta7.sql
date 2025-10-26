-- Consulta 7: Total de pedidos por método de pagamento
SELECT 
  metodo_pagamento,
  COUNT(*) AS total_pedidos
FROM pedidos
GROUP BY metodo_pagamento;

