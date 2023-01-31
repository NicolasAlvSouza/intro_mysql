-- Nicolas Alves de Souza
-- Crud para as seguintes entidades:
-- cliente (id, nome, email, telefone)
-- veiculos (id, placa, ano, marca, id_cliente)
-- funcionario (id, nome, funcao, salario, matricula, status)
-- Prof. @profadevairvitorio



-- Criação de uma base de dados
 CREATE DATABASE empresa_localiza;

-- Conectar na base dados
 USE empresa_localiza;

-- Criar as tabelas e adicionar o id automático

-- clientes
 CREATE TABLE clientes(
	id INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50) NOT NULL,
	email VARCHAR(50) NOT NULL,
	telefone VARCHAR(12)
);

-- veiculos
 CREATE TABLE veiculos(
	id INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
	placa VARCHAR(8) NOT NULL,
	ano INTEGER NOT NULL,
	marca VARCHAR(30),
	id_cliente INTEGER NOT NULL,
	FOREIGN KEY (id_cliente) REFERENCES clientes(id)
);


-- funcionarios
 CREATE TABLE funcionarios(
	id INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,	
	nome VARCHAR(50) NOT NULL,
	funcao VARCHAR(8) NOT NULL,
	salario DOUBLE NOT NULL,
	matricula INTEGER,
	status_funcionario INTEGER NOT NULL
);


--  Inserir dados na base de dados usando o comando INSERT
 INSERT INTO table_name (column1, column2, column3)
 VALUES (value1, value2, value3);

-- clientes 
 INSERT INTO clientes (nome, email, telefone) VALUES ("Joãozinho", "joao@uol.com", "27999885586");
 INSERT INTO clientes (nome, email, telefone) VALUES ("Adevair", "adevair@mysql.com.br", "2799997965");
 INSERT INTO clientes (nome, email, telefone) VALUES ("Odeio Bando de dados da silva", "mysql@mysql.com.br", "27999969965");

-- veiculos
 INSERT INTO veiculos (placa, ano, marca, id_cliente) VALUES ("OKP-5558", 2022, "Gol", 1);
 INSERT INTO veiculos (placa, ano, marca, id_cliente) VALUES ("JKL-5569", 2022, "Honda", 2);
 INSERT INTO veiculos (placa, ano, marca, id_cliente) VALUES ("ADE-1234", 2022, "Gol", 3);

-- funcionarios
 INSERT INTO funcionarios (nome, funcao, salario, matricula, status_funcionario) VALUES ("Cleitinho", "Gerente", 5050.50, 12345, 1);
 INSERT INTO funcionarios (nome, funcao, salario, matricula, status_funcionario) VALUES ("Manuelzinho", "Vendedor", 1325.54, 12787, 1);

-- Criar Consultas Usando o comando SELECT

-- todos os campos de todos os clientes:
 SELECT * FROM clientes;

--  email do cliente com id = 2
 SELECT email FROM clientes WHERE id=2;

-- todos os nomes dos clientes
 SELECT nome FROM clientes;

-- todos os emails e telefones dos clientes
 SELECT email,telefone FROM clientes;

-- extra: Lista telefônica
 SELECT nome,telefone FROM clientes;

-- todos os campos de todos os veículos
 SELECT * FROM veiculos;

-- placa do veículo de id = 3
 SELECT placa FROM veiculos WHERE id = 3;

-- todas as placas dos veículos
 SELECT placa FROM veiculos;

-- todos os veículos do cliente com id=1
 SELECT * FROM veiculos WHERE id_cliente = 1;

-- todos os funcionários
 SELECT * FROM funcionarios;

-- todos os funcionários ativos
 SELECT * FROM funcionarios WHERE status_funcionario = 1;

-- matricula de todos os funcionários
 SELECT matricula FROM funcionarios;

-- função e salário de todos os funcionários
 SELECT funcao, salario FROM funcionarios;

-- extra: Função, salário e status de todos os funcionários ativos
 SELECT funcao, salario, status_funcionario FROM funcionarios WHERE status_funcionario = 1;

-- Atualizar os registro existentes usando o comando UPDATE

-- atualize o nome do cliente de id = 6 para “Cliente Atualizado de Oliveira”
 UPDATE clientes SET nome = "Cliente Atualizado de Oliveira" WHERE id = 6;

-- atualize o ano do veículo do cliente de id = 6 para 1997
 UPDATE veiculos SET ano = 1997 WHERE id_cliente = 6;

-- atualize o nome do funcionário de id = 3 para “Amo Crud”
 UPDATE funcionarios SET nome = "Amp Crud" WHERE id = 3;

-- aeletar alguns registros usando o Comando DELETE

-- apagar o veículo de id = 2
 DELETE FROM veiculos WHERE id = 2;

-- apagar todos os veículos do cliente com id = 1
 DELETE FROM veiculos WHERE id_cliente = 1;

-- apagar todos os veículos
 DELETE FROM veiculos WHERE TRUE;

-- apagar o cliente de id = 1
 DELETE FROM clientes WHERE id=1 ;

-- apagar todos os clientes com nome = “Adevair”
 DELETE FROM clientes WHERE nome = "Adevair";

-- apagar todos os clientes
 DELETE FROM clientes WHERE TRUE;

-- apague o funcionário de id = 1
 DELETE FROM funcionarios WHERE id = 1;

-- apague todos os funcionários inativos
 DELETE FROM funcionarios WHERE status_funcionario = 0;
 