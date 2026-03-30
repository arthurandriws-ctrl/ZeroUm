create database ZeroUm;
use ZeroUm;
-- ok

create table cliente(
razao_social varchar(100)  not null,
cnpj bigint not null,
endereco varchar(100) not null,
email varchar(100) not null,
telefone bigint not null,
id_cliente int not null primary key
);

-- ok
create table servicos(
id_servico int not null primary key,
nome varchar(100) not null,
descricao varchar(100) not null,
valor decimal(10,2) not null
);

-- ok
create table setor(
id_setor int not null primary key,
nome_setor varchar(100) not null
);

-- ok
create table funcionario(
nome varchar(100) not null,
endereco varchar(100) not null,
cpf bigint not null,
matricula bigint not null primary key,
cargo varchar(100) not null,
email varchar(100) not null,
data_admissao date not null,
salario decimal(10,2) not null,
ativo bool not null,
id_setor int not null,
constraint fk_func_setor foreign key (id_setor) references setor(id_setor)
);

-- ok
create table contratos(
data_assinatura date not null,
periodo_inicio date not null,
periodo_final date not null,
id_cliente int not null,
constraint fk_cont_cliente foreign key (id_cliente) references cliente(id_cliente),
valor_total decimal(10,2),
id_contrato int not null primary key,
status bool not null
);

-- ok
create table projeto(
nome_projeto varchar(100) not null,
id_projeto int not null primary key,
responsavel varchar(100) not null, 
descricao varchar(100) not null,
data_inicio date not null,
date_fim date not null,
id_cliente int not null,
constraint fk_proj_cliente foreign key (id_cliente) references cliente(id_cliente),
coordenador varchar(100) not null,
id_funcionario bigint not null,
constraint fk_proj_func foreign key (id_funcionario) references funcionario (matricula)
);

-- ok 
create table atendimento( 
    id_atendimento int not null primary key,
    id_cliente int not null,
    constraint fk_atend_cliente foreign key (id_cliente) references cliente(id_cliente), 
    id_servico int not null,
    constraint fk_tend_servico foreign key (id_servico) references servicos(id_servico),
    descricao varchar(100) not null,
    estado bool not null,
    data_de_solicitacao date not null,
    id_funcionario bigint not null,
    constraint fk_atend_func foreign key (id_funcionario) references funcionario(matricula),
    prioridade varchar(100) not null,
    solucao varchar(100) not null
);


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

-- 1
select min(data_assinatura) as Data_Mais_Antiga from contratos;

-- 2
select max(data_assinatura) as Data_Mais_Recente from contratos;

-- 3
select count(id_contrato) as Total_Contrato from contratos;

-- 4
select count(id_servico) as Quantidade_Servicos from servico;

-- 5
select count(distinct id_cliente) as Quantidade_Clientes_Atendimento from atendimento;

-- 6 
select nome_projeto, id_funcionario from projeto;

select distinct matricula,
(select count(*)
from projetos p 
where p.matricula =projetos_matricula) as Total_de_Projetos
from projetos;

-- Usando o Join
select f.nome, count(p.id_projeto) as Total_Projetos
from funcionario f
left join projeto p on f.matricula = p.id_funcionario 
group by f.nome, f.matricula;

-- 7
select s.nome_setor, COUNT(f.matricula) as Total_Funcionarios
from setor s
left join funcionario f on s.id_setor = f.id_setor
group by s.id_setor, s.nome_setor;

-- Atividade Join
-- 1
select c.razao_social, count(con.id_contrato) as quantidade_contratos
from cliente c
left join contratos con on c.id_cliente = con.id_cliente
group by c.id_cliente, c.razao_social;

-- 2
select f.nome, count(a.id_atendimento) as total_atendimentos
from funcionario f
left join atendimento a on f.matricula = a.id_funcionario
group by f.matricula, f.nome;

-- 3
select f.nome as nome_funcionario, s.nome_setor
from funcionario f
inner join setor s on f.id_setor = s.id_setor;

-- 4
select p.id_projeto, f.nome as funcionario_responsavel, p.data_inicio
from projeto p
inner join funcionario f on p.id_funcionario = f.matricula;

-- 5 
select f.nome as nome_funcionario, p.nome_projeto, con.id_contrato, con.valor_total as valor_contrato, p.data_inicio, p.date_fim
from projeto p
inner join funcionario f on p.id_funcionario = f.matricula
inner join contratos con on p.id_cliente = con.id_cliente;

create table lg_salarios( 
id int auto_increment primary key,
matricula bigint, 
salario_antigo decimal (10,2),
salario_novo decimal (10,2),
data_modificacao timestamp default current_timestamp,
foreign key (matricula) references funcionario(matricula)
);

DELIMITER //
create trigger trg_LogUpdateSalario
after update on funcionario 
for each row
begin
    if old.salario <> new.salario then 
        insert into lg_salarios (matricula, salario_antigo, salario_novo) 
        values (old.matricula, old.salario, new.salario);
    end if;
end//
DELIMITER ;

update funcionario
set salario = 3000.50
where matricula  = 101;

select * from lg_salarios;

DELIMITER //

-- Lista o Nome, Salário e Setor do funcionario
create procedure salario_funcionario()
begin
    select f.nome, f.salario, s.nome_setor 
    from funcionario f 
    join setor s on f.id_setor = s.id_setor;
end //

call salario_funcionario;

-- Mostra funcionários ativos
create procedure sp_funcionarios_ativos()
begin
    select nome, cargo, salario from funcionario where ativo = true;
end //

call sp_funcionarios_ativos;

create procedure salario_medio()
begin
	select avg(salario) as salario_medio
from funcionarios;
end // 
DELIMITER //

call salario_medio;

create procedure salario_setor(in p_id_setor int)
begin 
select nome, salario from funcionario
where id_setor = p_id_setor;
end //

call salario_setor;

UPDATE Funcionario salario
matricula


