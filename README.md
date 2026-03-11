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
  
#
### ⬇️ Dowloads : 
- [📊 Tabela Excel](https://github.com/arthurandriws-ctrl/ZeroUm/blob/04817288a58c50640486480aa138730b400919c4/Excel%20at.xlsx)
- [🐬 MySQL](https://www.mysql.com/downloads/)
- [🟧 XAMPP](https://www.apachefriends.org/pt_br/download.html)
