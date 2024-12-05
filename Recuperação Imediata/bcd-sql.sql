CREATE DATABASE Biblioteca;

USE Biblioteca;

CREATE TABLE Autores (
ID_Autor INT PRIMARY KEY AUTO_INCREMENT,
Nome VARCHAR(100) NOT NULL,
Nacionalidade VARCHAR(50)

);

CREATE TABLE Livros (
ID_livro INT PRIMARY KEY AUTO_INCREMENT,
Titulo VARCHAR(100) NOT NULL,
ID_Autor INT NOT NULL,
Ano_Publicacao YEAR ,
FOREIGN KEY (ID_Autor) REFERENCES Autores(ID_Autor)
);

CREATE TABLE Emprestimos (
ID_Emprestimo INT PRIMARY KEY AUTO_INCREMENT,
ID_Livro INT NOT NULL,
Data_Emprestimo DATE,
Data_Devolucao DATE,
FOREIGN KEY (ID_Livro) REFERENCES Livro(ID_Livro)
);


INSERT INTO Autores (Nome,Nacionalidade) VALUES 
('J.K. Rowling', 'Britanica'),
('George R.R Martin', ' Americano'),
('Agatha Christie', 'Britanica'),
('J.R.R. Tolkien','Britanica');

INSERT INTO Livros (Titulo, ID_Autor, Ano_Publicacao) VALUES
('Harry Potter e a Pedra Filosofal', 1, 1997),
('A Guerra dos Tronos', 2, 1996),
('Assasinato no Expresso do Oriente',3, 1934),
('O senhor dos Aneis',4, 1954);

INSERT INTO Emprestimo (ID_Livro, Data_Emprestimo, Data_Devolucao) VALUES 
(1, '2023-01-15', '2023-01-22'),
(2, '2023-01-16', NULL),
(3, '2023-01-17', '2023-01-24'),
(4, '2023-01-18', NULL);

UPDATE Autores
SET Nome = 'J.K. Rowling (Atualizado)'
WHERE ID_Autor = 1;

UPDATE Livros 
SET Titulo = 'Harry Potter e a Pedra Filisofal (Edicao Atualizada)'
WHERE ID_Livro = 1;


SELECT L.Titulo, A.nome
FROM Livros L
JOIN Autores A ON L.ID_Autor = A.ID_Autor;

CREATE VIEW ViewEmprestimos AS
SELECT 
      E.ID_Emprestimo,
      L.Titulo,
      A.Nome AS Autor,
      E.Data_Emprestimo,
      E.Data_Devolucao
       
FROM
Emprestimos E 
JOIN
Livros L on E.ID_Livro = L.ID_Livro
JOIN
Autores A ON L.ID_Autor = A.ID_Autor;

