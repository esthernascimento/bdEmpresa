CREATE DATABASE bdEmpresa;
GO

USE bdEmpresa;
GO

-- Tabela de Funcion�rios
CREATE TABLE tbFuncionario (
    idFuncionario INT PRIMARY KEY IDENTITY(1,1)
    ,nomeFuncionario VARCHAR(50) NOT NULL
    ,ufFuncionario CHAR(2)
    ,idadeFuncionario INT
    ,quantidadeFilhosFuncionario INT
);

-- Tabela de Dados Funcionais
CREATE TABLE tbFuncional (
    idFuncional INT PRIMARY KEY IDENTITY(1,1)
    ,cargoFuncional VARCHAR(50) NOT NULL
    ,salarioFuncional MONEY
    ,tempoEmpresaFuncional INT
    ,tempoCargoFuncional INT
    ,sindicalizadoFuncional CHAR(3)
    ,idFuncionario INT FOREIGN KEY REFERENCES tbFuncionario(idFuncionario)
);

-- Tabela de Pedido
CREATE TABLE tbPedido (
	idPedido INT PRIMARY KEY IDENTITY(1,1)
	,nomeClientePedido VARCHAR(50) NOT NULL
	,idadeClientePedido INT
	,cidadeClientePedido VARCHAR(50)
	,dataPedido DATE
	,valorPedido MONEY
);



INSERT INTO tbFuncionario (nomeFuncionario, ufFuncionario, idadeFuncionario, quantidadeFilhosFuncionario)
VALUES 
('HUMBERTO ANTONIO MENDONCA', 'SP', 42, 1),
('ELVIRA ALVES DA CONCEICAO', 'RJ', 42, 2),
('RITA DE CASSIA SOARES DA SILVA', 'MG', 35, 1),
('RAFAEL GIOVAN', 'PA', 27, 1),
('MARIA APARECIDA DE ALENCAR MOREIRA', 'SP', 30, 0),
('JO�O ALCIDES REIS DE FREITAS', 'SP', 40, 2),
('FIDELIS ALCIDES REIS DE FREITAS', 'MG', 41, 3),
('IRENIA BRITO DA PALMA', 'MG', 39, 4),
('ELIETE DAS VIRGES NOGUEIRA SILVA', 'PI', 47, 2),
('MARIA JOSE BARBOSA PAIVA', 'MA', 18, 1),
('JOS� ROM�O FILHO', 'CE', 25, 0),
('JOS� ROM�O FILHO', 'CE', 30, 6);

INSERT INTO tbFuncional (cargoFuncional, salarioFuncional, tempoEmpresaFuncional, tempoCargoFuncional, sindicalizadoFuncional, idFuncionario)
VALUES 
('TI', 3500, 9, 2, 1, 1),
('RH', 2500, 2, 2, 0, 2),
('Assistente', 1700, 1, 1, 1, 3),
('Encarregado', 5000, 25, 2, 1, 4),
('Atendente', 2300, 3, 2, 0, 5),
('Motorista', 2700, 14, 4, 0, 6),
('Gerente', 6000, 8, 5, 1, 7),
('Porteiro', 2000, 15, 4, 1, 8),
('Motorista', 2400, 3, 3, 0, 9),
('Analista', 4500, 4, 4, 1, 10);


INSERT INTO tbPedido (nomeClientePedido, idadeClientePedido, cidadeClientePedido, dataPedido, valorPedido) 
VALUES
('Jo�o', 35, 'S�o Paulo', '2021-01-05', 250),
('Jo�o', 35, 'S�o Paulo', '2021-02-08', 100),
('Maria', 28, 'Rio de Janeiro', '2021-02-10', 150),
('Ana', 42, 'Belo Horizonte', '2021-03-20', 300),
('Pedro', 21, 'Porto Alegre', '2021-04-05', 80),
('Carolina', 29, 'Recife', '2021-05-15', 200),
('Carolina', 29, 'Recife', '2021-06-10', 120),
('Jo�o', 35, 'S�o Paulo', '2021-06-15', 180),
('Maria', 28, 'Rio de Janeiro', '2021-07-01', 90),
('Ana', 42, 'Belo Horizonte', '2021-07-20', 220);


-- 1) a soma de todos os c�digos dos funcion�rios
SELECT SUM (idFuncionario) AS 'Somat�ria de c�digos de todos os funcion�rios' FROM tbFuncionario ;

-- 2) a soma de todas as idades dos funcion�rios
SELECT SUM (idadeFuncionario)  AS 'Somat�ria das idade dos funcion�rios' FROM tbFuncionario;

-- 3) a soma de todos os filhos dos funcion�rios
SELECT SUM (quantidadeFilhosFuncionario)  AS 'Somat�ria de filhos dos funcion�rios' FROM tbFuncionario;

-- 4) a soma de todos os sal�rios dos funcion�rios 
SELECT SUM (salarioFuncional) AS 'Soma total sal�rio dos funcion�rios' FROM tbFuncional;

-- 5) a soma do tempo de empresa de todos os funcion�rios
SELECT SUM (tempoEmpresaFuncional)  AS 'Soma tempo de empresa dos funcion�rios (anos)' FROM tbFuncional;

-- 6) apresente o maior c�digo
SELECT MAX (idFuncionario) AS 'Maior c�digo funcionarios' FROM tbFuncionario;

-- 7) apresente o menor c�digo
SELECT MIN (idFuncionario) AS 'Menor c�digo funcionarios' FROM tbFuncionario;

-- 8) apresente a maior idade
SELECT MAX (idadeFuncionario)  AS 'Idade funcion�rio mais velho' FROM tbFuncionario;

-- 9) apresente a menor idade 
SELECT MIN (idadeFuncionario)  AS 'Idade funcion�rio mais novo' FROM tbFuncionario;

--10) apresente a maior quantidade de filhos
SELECT MAX (quantidadeFilhosFuncionario)  AS 'Maior quantidade de filhos funcion�rios' FROM tbFuncionario;

--11) apresente a menor quantidade de filhos
SELECT MIN (quantidadeFilhosFuncionario)  AS 'Menor quantidade de filhos funcion�rios' FROM tbFuncionario;

--12) apresente o maior sal�rio
SELECT MAX (salarioFuncional)  AS 'Maior sal�rio funcion�rios' FROM tbFuncional;

--13) apresente o menor sal�rio
SELECT MIN (salarioFuncional)  AS 'Menor sal�rio funcion�rios' FROM tbFuncional;

--14) apresente o maior tempo de empresa 
SELECT MAX (tempoEmpresaFuncional)  AS 'Maior tempo de empresa dos funcion�rios (anos)' FROM tbFuncional;

--15) apresente o menor tempo de empresa
SELECT MIN (tempoEmpresaFuncional)  AS 'Menor tempo de empresa dos funcion�rios (anos)' FROM tbFuncional;

--16) apresente o maior tempo no cargo
SELECT MAX (tempoCargoFuncional)  AS 'Maior tempo de cargo dos funcion�rios (anos)' FROM tbFuncional;

--17) apresente o menor tempo no cargo
SELECT MIN (tempoCargoFuncional)  AS 'Menor tempo de cargo dos funcion�rios (anos)' FROM tbFuncional;

--18) a m�dia de todos os c�digos dos funcion�rios
SELECT AVG (idFuncionario) AS 'M�dia c�digo funcionarios' FROM tbFuncionario;

--19) a m�dia da idade dos funcion�rios
SELECT AVG (idadeFuncionario)  AS 'M�dia idade funcion�rios' FROM tbFuncionario;

--20) a m�dia de filhos dos funcion�rios
SELECT AVG (quantidadeFilhosFuncionario)  AS 'M�dia quantidade filhos dos funcion�rios' FROM tbFuncionario;

--21) a m�dia dos sal�rios dos funcion�rios
SELECT AVG (salarioFuncional) AS 'M�dia sal�rial funcion�ros' FROM tbFuncional;

--22) a m�dia de tempo na empresa dos funcion�rios
SELECT AVG (tempoEmpresaFuncional) AS 'M�dia de tempo dos funcion�rios na empresa (anos)' FROM tbFuncional;

--23) a m�dia de tempo no cargo dos funcion�rios
SELECT AVG (tempoCargoFuncional) AS 'M�dia de tempo dos funcion�rios no cargo (anos)' FROM tbFuncional;

--24) apresente a quantidade de funcion�rios que ganham mais de 800 reais
SELECT COUNT (idFuncionario) AS 'Quantidade de funcion�rios que ganham mais de R$800,00' FROM tbFuncional
WHERE (salarioFuncional) > 800.00;

--25) Apresente a quantidade de funcion�rios que ganham mais de 1000 reais
SELECT COUNT (idFuncionario) AS 'Quantidade de funcion�rios que ganham mais de R$1000,00' FROM tbFuncional
WHERE (salarioFuncional) > 1000.00;

--26) apresente a quantidade de funcion�rios que ganham menos que 400 reais
SELECT COUNT (idFuncionario) AS 'Quantidade de funcion�rios que ganham menos de R$400,00' FROM tbFuncional
WHERE (salarioFuncional) < 400.00;

--27) apresente a quantidade de funcion�rios que ganham menos de 2000 reais
SELECT COUNT (idFuncionario) AS 'Quantidade de funcion�rios que ganham menos de R$2000,00' FROM tbFuncional
WHERE (salarioFuncional) < 2000.00;

--28) apresente a quantidade de funcion�rios que ganham mais de 8000 reais 
SELECT COUNT (idFuncionario) AS 'Quantidade de funcion�rios que ganham mais de R$8000,00' FROM tbFuncional
WHERE (salarioFuncional) > 8000.00;

--29) apresente a quantidade de funcion�rios que ganham menos de 1000 reais
SELECT COUNT (idFuncionario)  AS 'Quantidade de funcion�rios que ganham menos de R$1000,00' FROM tbFuncional
WHERE (salarioFuncional) < 1000.00;


--GROUP BY E ORDER BY
--1) Listar o n�mero de pedidos feitos por cada cliente, ordenando do maior para o menor n�mero de pedidos.
SELECT COUNT (idPedido) AS 'Total pedidos (maior para o menor)', nomeClientePedido FROM tbPedido
GROUP BY nomeClientePedido
ORDER BY COUNT (idPedido) DESC;

--2) Listar o valor total de pedidos feitos em cada cidade, ordenando do maior para o menor valor.
SELECT SUM (valorPedido)AS 'Total pedidos em cada cidade (maior para o menor)', cidadeClientePedido FROM tbPedido
GROUP BY cidadeClientePedido
ORDER BY SUM (valorPedido) DESC;

--3) Listar a m�dia de idade dos clientes que fizeram pedidos, agrupados por cidade, ordenando do menor para o maior valor.
SELECT AVG (idadeClientePedido) AS 'M�dia idade clientes (menor para o maior)', cidadeClientePedido FROM tbPedido
GROUP BY cidadeClientePedido
ORDER BY AVG (idadeClientePedido) ASC;
 
--4) Listar o valor total de pedidos feitos em cada m�s de 2021, ordenando por m�s.
SELECT SUM (valorPedido), MONTH (dataPedido) FROM tbPedido  
WHERE YEAR(dataPedido) = 2021
GROUP BY MONTH(dataPedido)
ORDER BY MONTH(dataPedido) DESC;

--5) Listar as cidades em que foram feitos pedidos de valor m�ximo e m�nimo, ordenando alfabeticamente:
SELECT cidadeClientePedido, valorPedido FROM tbPedido
WHERE valorPedido = (SELECT MAX(valorPedido) FROM tbPedido)
ORDER BY cidadeClientePedido

SELECT cidadeClientePedido, valorPedido FROM tbPedido
WHERE valorPedido = (SELECT MIN(valorPedido) FROM tbPedido)
ORDER BY cidadeClientePedido
