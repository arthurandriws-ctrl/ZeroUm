### Estudo de banco de dados, onde o objetivo é criar um script em MySQL contendo os dados necessários a serem armazenado de uma empresa fictícia

👨‍💻 Tecnologia: **`MySQL 🐬`**

---
### 📖 Contexto:
### ZeroUm 
A Zeroum Tecnologia é uma empresa de tecnologia que atua no
desenvolvimento de soluções digitais para pequenas e médias empresas,
oferecendo serviços como:
- Desenvolvimento de sistemas sob demanda;
- Suporte técnico;
- Gestão de contratos e projetos;
- Atendimento a clientes corporativos.
  
Nos últimos anos, a Zeroum cresceu rapidamente e passou a atender mais
clientes e projetos simultaneamente. Porém, esse crescimento trouxe
problemas na organização das informações.
Atualmente, a empresa utiliza:
- planilhas isoladas;
- Arquivos de texto;
- Controles manuais feitos por diferentes setores.

 Isso tem causado:
- Dados duplicados;
- Informações inconsistentes;
- Dificuldade na geração de relatórios;
- Retrabalho entre equipes.

Diante desse cenário, a diretoria decidiu centralizar as informações em um
banco de dados relacional, como parte de um processo de modernização da
empresa.

#
### 💻 Código
O código foi feito a partir de várias tabela construídas no Excel que contém os dados a serem armazenados da empresa, e escrito no MySQL Workbench 8.0 CE.<br>
*`📸 Exemplo de tabela contida dentro do arquivo Excel:`* 
<div align = "left">
  <img src = "https://github.com/arthurandriws-ctrl/ZeroUm/blob/f3f0db3f363d0b29cd74a7aa6ff34d4660fc2b01/exemplo.png" height = "1000px" width = "500px">
</div>
<br>

🗒️ Como utilizar o código: 
- Para utilizar o MySQL, é necesssário possuir o XAMPP instalado
- Com o XAMPP aberto, clique em "Start" na opção MySQL
- Ara o MySQL, e entre na conexão criada em MySQL Connections
- Por fim, utilize o código [zeroum.sql](https://github.com/arthurandriws-ctrl/ZeroUm/blob/8506205d6919b3122133ee70cedbad223bd476e2/zeroum.sql)

Para inserir valores, usamos **`insert into`** e nele identificamos as colunas ou não, mas caso não identificar as colunas,
na hora de utilizar o **`values`**, a posição que os valores são atribuídos serão armazenados na ordem das colunas criadas nas tabelas.
- Excemplo:
```
insert into sua_table_aqui (colum1, colum2, colum3, columN)
values ('valor_colum1', 'valor_colum2', valor_colum3, valor_columN),
('valor_colum1', 'valor_colum2', valor_colum3, valor_columN),
('valor_colum1', 'valor_colum2', valor_colum3, valor_columN);
```
- Exemplo Pronto
```
insert into setor (id_setor, nome_setor) 
values(1, 'Desenvolvimento'), (2, 'Recursos Humanos'), (3, 'Vendas'), (4, 'Suporte Técnico'),
(5, 'Financeiro'), (6, 'Marketing'), (7, 'Jurídico'), (8, 'Operações'),
(9, 'Inovação'), (10, 'Segurança da Informação');


insert into cliente (razao_social, cnpj, endereco, email, telefone, id_cliente)
values ('Tech Nova LTDA', 12345678000199, 'Rua A, 100', 'contato@technova.com', 11988887777, 1),
('Global Soluções', 22345678000188, 'Av. B, 200', 'adm@global.com', 21977776666, 2),
('Alpha Corp', 32345678000177, 'Rua C, 300', 'financeiro@alpha.com', 31966665555, 3),
('Beta Sistemas', 42345678000166, 'Av. D, 400', 'ti@beta.com', 41955554444, 4),
('Gama Logística', 52345678000155, 'Rua E, 500', 'log@gama.com', 51944443333, 5),
('Delta Varejo', 62345678000144, 'Av. F, 600', 'vendas@delta.com', 61933332222, 6),
('Omega Consultoria', 72345678000133, 'Rua G, 700', 'rh@omega.com', 71922221111, 7),
('Zeta Midia', 82345678000122, 'Av. H, 800', 'prod@zeta.com', 81911110000, 8),
('Sigma Indústria', 92345678000111, 'Rua I, 900', 'sac@sigma.com', 91900009999, 9),
('Iota Educação', 10345678000100, 'Av. J, 1000', 'edu@iota.com', 1133334444, 10);



insert into servicos (id_servico, nome, descricao, valor) 
values (1, 'consultoria ti', 'consultoria em infraestrutura', 5000.00),
(2, 'desenvolvimento web', 'criação de sites e apps', 12000.00),
(3, 'suporte mensal', 'manutenção preventiva', 1500.00),
(4, 'treinamento', 'capacitação de equipe', 3000.00),
(5, 'auditoria', 'análise de segurança', 8000.00),
(6, 'marketing digital', 'gestão de redes sociais', 2500.00),
(7, 'seo', 'otimização de buscas', 1800.00),
(8, 'cloud migration', 'migração para nuvem', 15000.00),
(9, 'backup externo', 'armazenamento seguro', 900.00),
(10, 'data analytics', 'análise de dados brutos', 7500.00);



insert into funcionario (nome, endereco, cpf, matricula, cargo, email, data_admissao, salario, ativo, id_setor) 
values ('João Silva', 'Rua X, 1', 11122233344, 101, 'Analista', 'joao@zero.com', '2023-01-10', 4500.00, true, 1),
('Maria Oliveira', 'Rua Y, 2', 22233344455, 102, 'Gerente', 'maria@zero.com', '2022-05-15', 9000.00, true, 2),
('Carlos Souza', 'Rua Z, 3', 33344455566, 103, 'Vendedor', 'carlos@zero.com', '2023-03-20', 3000.00, true, 3),
('Ana Costa', 'Rua W, 4', 44455566677, 104, 'Técnico', 'ana@zero.com', '2023-06-01', 3500.00, true, 4),
('Pedro Rocha', 'Rua K, 5', 55566677788, 105, 'Contador', 'pedro@zero.com', '2021-11-10', 5500.00, true, 5),
('Julia Lima', 'Rua L, 6', 66677788899, 106, 'Designer', 'julia@zero.com', '2023-08-15', 4000.00, true, 6),
('Lucas Dias', 'Rua M, 7', 77788899900, 107, 'Advogado', 'lucas@zero.com', '2022-01-20', 7000.00, true, 7),
('Bruno Ferro', 'Rua N, 8', 88899900011, 108, 'Coordenador', 'bruno@zero.com', '2020-05-10', 8500.00, true, 8),
('Carla Reis', 'Rua O, 9', 99900011122, 109, 'Pesquisador', 'carla@zero.com', '2024-01-05', 6000.00, true, 9),
('Roberto Luz', 'Rua P, 10', 10111213141, 110, 'DBA', 'roberto@zero.com', '2023-02-12', 6500.00, true, 10);



insert into contratos (data_assinatura, periodo_inicio, periodo_final, id_cliente, valor_total, id_contrato, status) 
values ('2024-01-01', '2024-01-01', '2025-01-01', 1, 60000.00, 501, true),
('2024-02-10', '2024-02-10', '2024-08-10', 2, 15000.00, 502, true),
('2024-03-05', '2024-03-05', '2026-03-05', 3, 120000.00, 503, true),
('2023-12-20', '2024-01-01', '2024-12-31', 4, 45000.00, 504, true),
('2024-01-15', '2024-01-15', '2024-07-15', 5, 30000.00, 505, true),
('2024-04-01', '2024-04-01', '2025-04-01', 6, 75000.00, 506, true),
('2024-02-20', '2024-02-20', '2024-05-20', 7, 20000.00, 507, true),
('2024-03-15', '2024-03-15', '2025-03-15', 8, 55000.00, 508, true),
('2024-05-10', '2024-05-10', '2024-11-10', 9, 18000.00, 509, true),
('2024-01-10', '2024-01-10', '2025-01-10', 10, 90000.00, 510, true);


insert into projeto (nome_projeto, id_projeto, responsavel, descricao, data_inicio, date_fim, id_cliente, coordenador, id_funcionario) 
values('Sistema ERP', 1001, 'João Silva', 'Desenvolvimento de ERP customizado', '2024-01-10', '2024-12-10', 1, 'Maria Oliveira', 101),
('App Mobile', 1002, 'Julia Lima', 'Aplicativo para iOS e Android', '2024-02-01', '2024-06-01', 2, 'Bruno Ferro', 106),
('Migração Cloud', 1003, 'Roberto Luz', 'Migrar servidores locais para AWS', '2024-03-15', '2024-05-15', 4, 'Maria Oliveira', 110),
('Portal E-learning', 1004, 'João Silva', 'Plataforma de cursos online', '2024-04-01', '2024-10-01', 10, 'Bruno Ferro', 101),
('Segurança 360', 1005, 'Roberto Luz', 'Implementação de firewall e VPN', '2024-01-20', '2024-03-20', 3, 'Maria Oliveira', 110),
('BI Dashboard', 1006, 'Carla Reis', 'Painéis de análise de vendas', '2024-05-01', '2024-08-01', 9, 'Bruno Ferro', 109),
('Campanha Digital', 1007, 'Julia Lima', 'Marketing de lançamento', '2024-02-15', '2024-04-15', 8, 'Maria Oliveira', 106),
('Rede Local', 1008, 'Ana Costa', 'Estruturação de rede física', '2024-03-01', '2024-04-01', 5, 'Bruno Ferro', 104),
('Compliance LGPD', 1009, 'Lucas Dias', 'Adequação à lei de dados', '2024-01-05', '2024-06-05', 7, 'Maria Oliveira', 107),
('API Integração', 1010, 'João Silva', 'Integração entre sistemas legados', '2024-06-01', '2024-09-01', 6, 'Bruno Ferro', 101);


insert into atendimento (id_atendimento, id_cliente, id_servico, descricao, estado, data_de_solicitacao, id_funcionario, prioridade, solucao) values
(2001, 1, 3, 'erro no login', true, '2024-02-01', 104, 'alta', 'reset de cache realizado'),
(2002, 2, 4, 'dúvida no treinamento', true, '2024-02-05', 102, 'baixa', 'documentação enviada'),
(2003, 3, 5, 'auditoria trimestral', false, '2024-02-10', 107, 'média', 'pendente'),
(2004, 4, 3, 'internet lenta', true, '2024-02-12', 104, 'alta', 'reinicialização do roteador'),
(2005, 5, 9, 'falha no backup', true, '2024-02-15', 110, 'crítica', 'espaço em disco liberado'),
(2006, 6, 1, 'dúvida contratual', true, '2024-02-18', 107, 'baixa', 'esclarecimentos feitos'),
(2007, 7, 3, 'impressora não conecta', true, '2024-02-20', 104, 'média', 'driver atualizado'),
(2008, 8, 6, 'post agendado errado', true, '2024-02-22', 106, 'média', 'correção no calendário'),
(2009, 9, 10, 'relatório inconsistente', false, '2024-02-25', 109, 'alta', 'em análise'),
(2010, 10, 4, 'novo usuário', true, '2024-02-28', 102, 'baixa', 'acesso criado');
```
#
### ⬇️ Dowloads : 
- [📊 Tabela Excel](https://github.com/arthurandriws-ctrl/ZeroUm/blob/04817288a58c50640486480aa138730b400919c4/Excel%20at.xlsx)
- [🐬 MySQL](https://www.mysql.com/downloads/)
- [🟧 XAMPP](https://www.apachefriends.org/pt_br/download.html)
