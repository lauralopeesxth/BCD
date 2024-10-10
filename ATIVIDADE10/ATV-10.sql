 -- Criando um Banco de Dados
CREATE DATABASE db_livraria;

USE db_livraria;

CREATE TABLE tb_cliente (
id_cliente int,
nome varchar(45),
cpf varchar(11),
rg varchar(11),
email varchar(45)
);

drop table cliente;

CREATE TABLE  IF NOT EXISTS tb_cliente_telefone (
id_cliente int NOT NULL,
CLIENTES_id_clientes int
);

CREATE TABLE  IF NOT EXISTS tb_clientes_endereco (
id_endereco int NOT NULL,
rua varchar (45),
numero int,
cidade varchar(45),
estado varchar(45),
CLIENTE_id_cliente int
);

-- criando tabela pedido
 CREATE TABLE PEDIDO ( 
 id_pedido INT PRIMARY KEY AUTO_INCREMENT, 
 valor DECIMAL(10, 2), 
 data DATE, 
 CLIENTE_id_cliente INT, 
 FOREIGN KEY (CLIENTE_id_cliente) REFERENCES CLIENTE(id_cliente)
 );
 -- criando tabela editora
  CREATE TABLE EDITORA ( 
 id_editora INT PRIMARY KEY AUTO_INCREMENT, 
 nome_editora VARCHAR(30), 
 nome_contato VARCHAR(30), 
 email VARCHAR(45), 
 contato VARCHAR(20)
 );

CREATE TABLE tb_livro (
id_livro int PRIMARY KEY auto_increment ,
titulo varchar (45),
categoria varchar (11),
isbn varchar (11),
ano date,
valor decimal(10,2),
autor varchar (45),
EDITORA_id_editora int,
FOREIGN KEY (EDITORA_id_editora) REFERENCES EDITORA(id_editora)
);

-- criando tabela pedido
 
 CREATE TABLE ITEM_PEDIDO ( 
 quantidade INT, 
 valor DECIMAL(10, 2), 
 PEDIDO_id_pedido INT, 
 LIVRO_id_livro INT, PRIMARY KEY (PEDIDO_id_pedido, LIVRO_id_livro), 
 FOREIGN KEY (PEDIDO_id_pedido) REFERENCES PEDIDO(id_pedido), 
 FOREIGN KEY (LIVRO_id_livro) REFERENCES LIVRO(id_livro)
 ); 
 
-- criando tabela estoque 
 
CREATE TABLE ESTOQUE ( 
quantidade INT, 
LIVRO_id_livro INT, 
PRIMARY KEY (LIVRO_id_livro), 
FOREIGN KEY (LIVRO_id_livro) REFERENCES LIVRO(id_livro) );













