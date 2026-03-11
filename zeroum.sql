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
constraint fk_proj_func foreign key (id_funcionario) references funcionario (id_funcionario)
);

-- ok 
create table atendimento( 
id_atendimento int not null primary key,
id_cliente int not null,
constraint fk_atend_cliente foreign key (id_cliente) references cliente(id_cliente), 
id_servico int not null,
constraint fk_tend_servico foreign key (id_servico) references servico(id_servico),
descricao varchar(100) not null,
estado bool not null,
data_de_solicitacao date not null,
id_funcionario bigint not null,
constraint fk_atend_func foreign key (id_funcionario) references funcionario(id_funcionario),
prioridade varchar(100) not null,
solucao varchar(100) not null
);
