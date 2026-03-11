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
O código foi feito a partir de uma tabela Excel que cóntem os dados a serem armazenados da empresa, e escrito no MySQL Workbench 8.0 CE

🗒️ Como utilizar o código: 
- Para utilizar o MySQL, é necesssário possuir o XAMPP instalado
- Com o XAMPP aberto, clique em "Start" na opção MySQL
- Ara o MySQL, e entre na conexão criada em MySQL Connections
- Por fim, utilize o código zeroum.sql

Para inserir valores, usamos **`insert into`** e nele identificamos as colunas ou não, mas caso não identificar as colunas,
na hora de utilizar o **`values`**, a posição que os valores são atribuídos serão armazenados na ordem das colunas criadas nas tabelas.
- Excemplo:
```
insert into sua_table_aqui (colum1, colum2, colum3, columN)
values ('valor_colum1', 'valor_colum2', valor_colum3, valor_columN),
('valor_colum1', 'valor_colum2', valor_colum3, valor_columN),
('valor_colum1', 'valor_colum2', valor_colum3, valor_columN);
```
  
#
### 📊 Tabela Excel
