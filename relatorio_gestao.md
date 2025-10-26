# 📊 Relatório de Gestão – Sistema de Pedidos

**Data:** 26/10/2025  
**Responsável:** Pollyana Cassia de Sousa 

---
# 📦 Introdução

## Objetivo

Desenvolver um banco de dados relacional para um sistema de pedidos online (e-commerce), simulando um cenário real onde é necessário gerenciar clientes, produtos, pedidos, entregas e pagamentos. O projeto aplica comandos SQL e boas práticas de modelagem para garantir eficiência, integridade e escalabilidade.

## Cenário Real

Você foi contratado por uma startup de e-commerce que cresceu rapidamente e precisa organizar sua base de dados. O objetivo é obter relatórios mais eficientes, reduzir redundâncias e garantir integridade nos pedidos. Seu trabalho envolve:

- Criar a estrutura de banco de dados relacional
- Implementar comandos SQL para manipulação e análise dos dados
- Gerar consultas que apoiem decisões operacionais e estratégicas

Este relatório apresenta a modelagem adotada, os principais comandos utilizados e uma análise gerencial baseada nos dados simulados.


## 🖼️ Diagrama Entidade-Relacionamento (DER)

[🔗 Clique aqui para visualizar o DER](img/der.png?raw=true)  
*Figura: Diagrama do modelo relacional utilizado no sistema.*

---

## 🖼️ Prints das Consultas Mais Importantes

Abaixo estão os links para visualização das principais consultas realizadas no sistema:

- [Consulta 1 – Total por pedido com nome do cliente e data](img/consulta1.png)
- [Consulta 2 – Produtos mais vendidos](img/consulta2.png)
- [Consulta 3 – Clientes que mais gastaram](img/consulta3.png)
- [Consulta 4 – Total de pedidos por cidade](img/consulta4.png)
- [Consulta 5 – Produtos por categoria](img/consulta5.png)
- [Consulta 6 – Pagamentos aprovados](img/consulta6.png)
- [Consulta 7 – Pedidos por método de pagamento](img/consulta7.png)
- [Consulta 8 – Produtos não vendidos](img/consulta8.png)
- [Consulta 9 – Top 2 clientes por valor total gasto](img/consulta9.png)
- [Consulta 10 – Valor médio dos pedidos](img/consulta10.png)

*Cada link abre o print correspondente em uma nova aba.*

---

# 📈 Análise de Dados Relevantes

### 🔹 Ticket Médio
Através da Consulta 10, identificamos que o valor médio dos pedidos gira em torno de **R$ 1,06**. Esse indicador revela o padrão de consumo dos clientes e pode ser usado para definir metas de upsell.

### 🔹 Produto Mais Vendido
Segundo a Consulta 2, os produtos mais vendidos foram:

- **Fone Bluetooth** – 3 unidades  
- **Camiseta Estampada** – 3 unidades  
- **Notebook** – 3 unidades

Esses produtos lideram as vendas e podem ser priorizados em campanhas promocionais e controle de estoque.

### 🔹 Clientes com Maior Gasto
A Consulta 9 revelou os dois clientes que mais gastaram:

- **Ana Silva** – R$ 589,00  
- **Carlos Souza** – R$ 274,00

Esses clientes são potenciais para ações de fidelização ou programas VIP.

### 🔹 Tempo Médio entre Pedidos
Com base nas datas dos pedidos (Consulta 1), estima-se que os clientes realizam novos pedidos em média a cada **2 a 4 dias**, considerando o intervalo entre os pedidos registrados. Esse dado pode orientar o timing de campanhas de remarketing.

---

# 💡 Sugestões de Melhorias

### ✅ Estratégias Comerciais
- Criar pacotes promocionais com os produtos mais vendidos para aumentar o ticket médio.
- Segmentar campanhas com base no perfil dos clientes que mais gastam.

### ✅ Gestão de Estoque
- Monitorar o giro dos produtos com maior saída para evitar ruptura.
- Avaliar a viabilidade de descontinuar produtos com baixa ou nenhuma venda (Consulta 8).

### ✅ Experiência do Cliente
- Implementar notificações automáticas para clientes que estão há muitos dias sem comprar.
- Oferecer cupons de desconto para estimular novos pedidos.

---

# 📌 Conclusão

O sistema de pedidos está funcionando de forma eficiente, com dados consistentes e boas oportunidades de crescimento. A análise permite decisões mais inteligentes e direcionadas, tanto para o time comercial quanto para o setor de atendimento e logística.

---