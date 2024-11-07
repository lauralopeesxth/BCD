-- Criar o banco de dados
CREATE DATABASE if not exists db_supermercado;
USE db_supermercado;

-- Criar a tabela tb_categorias
CREATE TABLE if not exists tb_categorias (
    id_categoria INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    descricao VARCHAR(100),
    data_criacao DATE NOT NULL,
    status ENUM('ativo', 'inativo') DEFAULT 'ativo',
    margem_lucro DECIMAL(5,2),
    observacao VARCHAR(255)
);

-- Criar a tabela tb_produtos
CREATE TABLE if not exists tb_produtos (
    id_produto INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    descricao VARCHAR(100),
    preco DECIMAL(10,2) NOT NULL,
    quantidade_estoque INT NOT NULL,
    id_categoria INT,
    data_fabricacao DATE,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);

-- Inserir dados na tabela tb_categorias
INSERT INTO tb_categorias (nome, descricao, data_criacao, status, margem_lucro, observacao) VALUES
('Bebidas', 'Bebidas alcoólicas e não alcoólicas', '2023-01-10', 'ativo', 15.00, NULL),
('Carnes', 'Carnes variadas', '2023-01-11', 'ativo', 20.00, NULL),
('Hortifruti', 'Frutas e verduras', '2023-01-12', 'ativo', 10.00, NULL),
('Padaria', 'Produtos de padaria', '2023-01-13', 'ativo', 25.00, NULL),
('Laticínios', 'Leite, queijo e outros derivados', '2023-01-14', 'ativo', 18.00, NULL),
('Limpeza', 'Produtos de limpeza', '2023-01-15', 'ativo', 22.00, NULL),
('Higiene', 'Produtos de higiene pessoal', '2023-01-16', 'ativo', 19.00, NULL),
('Mercearia', 'Alimentos em geral', '2023-01-17', 'ativo', 15.00, NULL),
('Congelados', 'Produtos congelados', '2023-01-18', 'ativo', 20.00, NULL),
('Biscoitos', 'Biscoitos e snacks', '2023-01-19', 'ativo', 12.00, NULL),
('Bebidas Alcoólicas', 'Vinhos, cervejas e destilados', '2023-01-20', 'ativo', 30.00, NULL),
('Pet Shop', 'Alimentos e acessórios para animais', '2023-01-21', 'ativo', 25.00, NULL),
('Matinais', 'Cereais e produtos matinais', '2023-01-22', 'ativo', 15.00, NULL),
('Bebidas Energéticas', 'Energéticos e isotônicos', '2023-01-23', 'ativo', 25.00, NULL),
('Importados', 'Produtos importados', '2023-01-24', 'ativo', 35.00, NULL);

-- Inserir dados na tabela tb_produtos
INSERT INTO tb_produtos (nome, descricao, preco, quantidade_estoque, id_categoria, data_fabricacao) VALUES
('Coca-Cola', 'Refrigerante de cola 2L', 7.50, 100, 1, '2023-01-01'),
('Guaraná Antarctica', 'Refrigerante guaraná 2L', 7.00, 120, 1, '2023-01-01'),
('Água Mineral', 'Garrafa de 500ml', 1.50, 200, 1, '2023-01-05'),
('Cerveja Heineken', 'Garrafa de 600ml', 8.90, 80, 11, '2023-01-01'),
('Suco de Laranja', 'Suco natural 1L', 4.50, 70, 1, '2023-01-10'),
('Carne de Frango', 'Peito de frango 1kg', 15.00, 50, 2, '2023-01-08'),
('Carne Bovina', 'Coxão mole 1kg', 30.00, 60, 2, '2023-01-07'),
('Maçã', 'Maçã vermelha 1kg', 5.00, 90, 3, '2023-01-12'),
('Banana', 'Banana prata 1kg', 4.00, 100, 3, '2023-01-11'),
('Pão Francês', 'Pão tipo francês 50g', 0.50, 200, 4, '2023-01-14'),
('Queijo Mussarela', 'Queijo mussarela 1kg', 25.00, 30, 5, '2023-01-10'),
('Detergente', 'Detergente líquido 500ml', 2.50, 150, 6, '2023-01-09'),
('Sabonete', 'Sabonete hidratante 90g', 1.80, 200, 7, '2023-01-08'),
('Arroz', 'Arroz branco 1kg', 5.00, 120, 8, '2023-01-06'),
('Feijão', 'Feijão carioca 1kg', 6.50, 100, 8, '2023-01-07'),
('Pizza Congelada', 'Pizza de mussarela 400g', 12.00, 40, 9, '2023-01-05'),
('Biscoito de Chocolate', 'Biscoito recheado 140g', 3.00, 150, 10, '2023-01-09'),
('Vinho Tinto', 'Garrafa de vinho tinto 750ml', 35.00, 25, 11, '2023-01-02'),
('Ração para Cachorros', 'Ração seca 1kg', 15.00, 80, 12, '2023-01-11'),
('Cereal Matinal', 'Cereal de milho 300g', 8.50, 70, 13, '2023-01-05'),
('Isotônico', 'Isotônico de limão 500ml', 5.00, 50, 14, '2023-01-03'),
('Espaguete', 'Macarrão espaguete 500g', 4.00, 80, 8, '2023-01-10'),
('Achocolatado', 'Achocolatado em pó 400g', 6.00, 100, 13, '2023-01-07'),
('Leite Integral', 'Caixa de leite 1L', 3.50, 120, 5, '2023-01-09'),
('Iogurte Natural', 'Iogurte natural 170g', 2.00, 90, 5, '2023-01-08'),
('Suco de Uva', 'Suco integral de uva 1L', 7.00, 50, 1, '2023-01-03'),
('Bife Suíno', 'Bife de porco 1kg', 18.00, 45, 2, '2023-01-10'),
('Alface', 'Alface americana', 2.50, 60, 3, '2023-01-12'),
('Tomate', 'Tomate 1kg', 6.00, 75, 3, '2023-01-11'),
('Pão de Forma', 'Pão de forma 400g', 4.00, 50, 4, '2023-01-06'),
('Queijo Parmesão', 'Queijo parmesão 200g', 15.00, 30, 5, '2023-01-05'),
('Desinfetante', 'Desinfetante floral 1L', 4.50, 120, 6, '2023-01-03'),
('Shampoo', 'Shampoo hidratante 200ml', 8.00, 80, 7, '2023-01-09'),
('Açúcar', 'Açúcar refinado 1kg', 3.00, 90, 8, '2023-01-06'),
('Óleo de Soja', 'Óleo de soja 900ml', 7.50, 60, 8, '2023-01-08'),
('Sorvete', 'Sorvete de chocolate 1L', 10.00, 40, 9, '2023-01-10'),
('Biscoito Salgado', 'Biscoito salgado 100g', 2.50, 130, 10, '2023-01-04'),
('Vodka', 'Vodka 1L', 25.00, 20, 11, '2023-01-02'),
('Ração para Gatos', 'Ração seca 500g', 12.00, 70, 12, '2023-01-07'),
('Granola', 'Granola com mel 250g', 9.50, 60, 13, '2023-01-04'),
('Energético', 'Lata de energético 250ml', 5.00, 50, 14, '2023-01-06'),
('Farinha de Trigo', 'Farinha de trigo 1kg', 4.00, 100, 8, '2023-01-09'),
('Chocolate em Barra', 'Chocolate ao leite 100g', 4.50, 80, 13, '2023-01-06'),
('Leite Desnatado', 'Caixa de leite desnatado 1L', 3.50, 80, 5, '2023-01-09'),
('Espinafre', 'Espinafre fresco', 2.00, 50, 3, '2023-01-12'),
('Cebola', 'Cebola 1kg', 4.00, 60, 3, '2023-01-11'),
('Refrigerante Limão', 'Refrigerante de limão 2L', 6.50, 90, 1, '2023-01-10'),
('Batata', 'Batata inglesa 1kg', 3.50, 100, 3, '2023-01-12'),
('Presunto', 'Presunto cozido 200g', 5.00, 50, 5, '2023-01-10');

select * from tb_produtos;

select nome,preco from tb_produtos;

select nome,preco from tb_produtos where preco > 10.00;

select * from tb_categorias ;
select nome from tb_produtos
where id_categoria = 1 ;

select * from tb_produtos;
select id_produto, quantidade_estoque
from tb_produtos;

select nome from tb_produtos
where quantidade_estoque < 50;

select tb_produtos.nome 
from tb_produtos join tb_categorias 
on tb_produtos.id_categoria = tb_categorias.id_categoria
where tb_categorias.margem_lucro > 20.00;

select tb_categorias.nome, tb_produtos.nome
from tb_categorias 
left join tb_produtos on tb_categorias.id_categoria = tb_produtos.id_categoria
order by tb_categorias.nome;

select tb_categorias.nome, tb_produtos.nome
from tb_categorias
join  tb_produtos on tb_categorias.id_categoria = tb_produtos.id_categoria
where tb_produtos.preco > 20.00;

select tb_categorias.nome,
avg (tb_produtos.preco)
from tb_categorias 
join tb_produtos on
tb_categorias.id_categoria = tb_produtos.id_categoria
group by tb_categorias.nome;

select tb_categorias.nome
from tb_categorias 
left join tb_produtos on
tb_categorias.id_categoria = tb_produtos.id_categoria
where tb_produtos.id_produto IS NULL;




