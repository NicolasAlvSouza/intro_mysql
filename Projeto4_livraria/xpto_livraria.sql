-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 07-Fev-2023 às 19:40
-- Versão do servidor: 10.4.11-MariaDB
-- versão do PHP: 7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `xpto_livraria`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `autores`
--

CREATE TABLE `autores` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `autores`
--

INSERT INTO `autores` (`id`, `nome`, `email`) VALUES
(1, 'jorge jesus', 'jorgejj@gmail.com'),
(2, 'João', 'joao@joao.com'),
(3, 'Pedro', 'pedrinho@gmail.com'),
(4, 'marcos', 'marcos@marcos.com'),
(5, 'Aurélio', 'aurelio@marcos.com'),
(6, 'Rick', 'rick@rick.com'),
(7, 'paulo', 'paulo@gmail.com'),
(8, 'Matias', 'matias@gmail.com'),
(9, 'Vinicius', 'vinicius@gmail.com');

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `cpf` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `clientes`
--

INSERT INTO `clientes` (`id`, `nome`, `email`, `cpf`) VALUES
(1, 'Fiona Mendoza', 'pellentesque.tincidunt@icloud.couk', '11054233933'),
(2, 'Camden Potts', 'rutrum.urna@icloud.net', '79813242032'),
(3, 'Fallon Peck', 'consectetuer.mauris.id@protonmail.org', '45164035129'),
(4, 'Maia Davis', 'ut.nec.urna@aol.couk', '96397582375'),
(5, 'Basia Coffey', 'mattis.semper@aol.com', '73361492557'),
(6, 'Yasir Chan', 'nostra.per.inceptos@outlook.org', '29579047154'),
(7, 'Baxter Blair', 'cras.dictum@protonmail.org', '46942686138'),
(8, 'Jolene Rodriquez', 'elit.fermentum@icloud.net', '13149313968'),
(9, 'Garth Roth', 'vivamus.nisi@hotmail.edu', '84355025624'),
(10, 'Rogan Walker', 'donec.elementum@google.org', '12927929698'),
(11, 'Jocelyn Kirk', 'nunc.lectus.pede@google.couk', '76539204837'),
(12, 'Keaton Bird', 'ac.mi.eleifend@protonmail.edu', '30465711394'),
(13, 'Tanek Myers', 'dui.fusce.aliquam@outlook.com', '46959101412'),
(14, 'Oscar Yang', 'molestie.orci@protonmail.ca', '55735212979'),
(15, 'Arden Wyatt', 'auctor.odio@outlook.ca', '82270557115'),
(16, 'Aurora Guerra', 'nulla.dignissim@protonmail.edu', '18272311799'),
(17, 'Priscilla Clemons', 'donec@aol.com', '71341728082'),
(18, 'Arthur Livingston', 'cursus.purus.nullam@icloud.edu', '46385236767'),
(19, 'Carter Johnston', 'ac.urna@hotmail.com', '38910550424'),
(20, 'Addison Gilbert', 'fermentum.convallis.ligula@hotmail.org', '37207904129');

-- --------------------------------------------------------

--
-- Estrutura da tabela `editoras`
--

CREATE TABLE `editoras` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `cnpj` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telefone` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `editoras`
--

INSERT INTO `editoras` (`id`, `nome`, `cnpj`, `email`, `telefone`) VALUES
(1, 'senac', '125-5426-5', 'senac@senac.com', '2721365498'),
(2, 'coca cola', '564-5211-5', 'cocacola@gmail.com', '2753694532'),
(3, 'adevair vitorio', '544-5114-5', 'adevairvitorio@otlook.com', '2712364752'),
(4, 'michel', '254-7442-6', 'michel@gmail.com', '2736541213'),
(5, 'paulo cesar coelho', '451-5444-3', 'paulocesar@gmail.com', '2796541265'),
(6, 'olavo de carvalho', '145-5414-6', 'olavomorreu@gmail.com', '2796321659'),
(7, 'thinkcentre', '545-4424-6', 'thincentr@google.com', '2796531465'),
(8, 'positivo', '541-6541-5', 'positivo2321@gmail.com', '2765321655'),
(9, 'fanta', '135-4457-5', 'contatofanta@gmail.com', '2739645344');

-- --------------------------------------------------------

--
-- Estrutura da tabela `estoques`
--

CREATE TABLE `estoques` (
  `id` int(11) NOT NULL,
  `quantidade` int(11) DEFAULT NULL,
  `id_livro` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `estoques`
--

INSERT INTO `estoques` (`id`, `quantidade`, `id_livro`) VALUES
(1, 100, 1),
(5, 63, 5),
(6, 56, 6),
(7, 87, 7),
(8, 45, 8),
(9, 21, 9),
(10, 65, 10),
(11, 98, 11),
(12, 92, 12),
(13, 14, 13),
(14, 56, 14),
(15, 23, 15),
(16, 56, 16),
(17, 65, 17),
(18, 34, 18),
(19, 82, 19),
(20, 37, 20),
(21, 51, 21),
(22, 59, 22),
(23, 65, 23),
(24, 54, 24),
(25, 85, 25),
(26, 52, 26),
(27, 36, 27),
(28, 37, 28),
(29, 84, 29),
(30, 95, 30),
(31, 62, 31),
(32, 14, 32),
(33, 27, 33),
(34, 35, 34),
(35, 62, 35),
(36, 35, 36),
(37, 24, 37),
(38, 25, 38),
(39, 29, 39),
(40, 28, 40),
(41, 26, 41),
(42, 36, 42),
(43, 85, 43),
(44, 86, 44);

-- --------------------------------------------------------

--
-- Estrutura da tabela `formas_de_pagamento`
--

CREATE TABLE `formas_de_pagamento` (
  `id` int(11) NOT NULL,
  `tipo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionarios`
--

CREATE TABLE `funcionarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `funcao` varchar(50) NOT NULL,
  `status_funcionario` varchar(50) NOT NULL,
  `salario` double NOT NULL,
  `turno` varchar(50) NOT NULL,
  `matricula` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `funcionarios`
--

INSERT INTO `funcionarios` (`id`, `nome`, `funcao`, `status_funcionario`, `salario`, `turno`, `matricula`) VALUES
(1, 'Pedro da silva', 'gerente', '1', 5000, 'matutino', '12343'),
(2, 'Marcos da silva', 'vendedor', '1', 2000, 'vespetino', '31241'),
(3, 'João Silvestre ', 'segurança', '1', 3000, 'matutino', '41231'),
(4, 'Augusto Pereira', 'vendedor', '1', 2000, 'noturno', '54532'),
(5, 'Adevair Vitorio', 'auxiliar de limpeza', '1', 2500, 'noturno', '12431'),
(6, 'Ezequiel Barcellos', 'assistente ', '0', 2300, 'noturno', '42242'),
(7, 'Thiago Andreão', 'vendedor ', '1', 2000, 'matutino', '23332'),
(8, 'Junior Silva', 'segurança', '1', 3000, 'vespetino ', '56332'),
(9, '', '', '', 0, '', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcoes`
--

CREATE TABLE `funcoes` (
  `id` int(11) NOT NULL,
  `descricao` varchar(50) NOT NULL,
  `salario` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `generos`
--

CREATE TABLE `generos` (
  `id` int(11) NOT NULL,
  `descricao` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `generos`
--

INSERT INTO `generos` (`id`, `descricao`) VALUES
(1, 'narrativo'),
(2, 'narrativo'),
(3, 'lírico'),
(4, 'dramático'),
(5, 'épico'),
(6, 'romantico'),
(7, 'conto');

-- --------------------------------------------------------

--
-- Estrutura da tabela `livros`
--

CREATE TABLE `livros` (
  `id` int(11) NOT NULL,
  `titulo` varchar(30) NOT NULL,
  `isbn` varchar(13) NOT NULL,
  `codigo_de_barras` varchar(50) NOT NULL,
  `preco` double NOT NULL,
  `data_de_cadastro` varchar(12) NOT NULL,
  `id_editora` int(11) NOT NULL,
  `id_autor` int(11) NOT NULL,
  `id_generos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `livros`
--

INSERT INTO `livros` (`id`, `titulo`, `isbn`, `codigo_de_barras`, `preco`, `data_de_cadastro`, `id_editora`, `id_autor`, `id_generos`) VALUES
(1, 'abc', '21344', '24242', 12, '', 1, 1, 1),
(5, 'PATATI PATATA EM FAMÍLIA', '6409233573', '38567242352', 4, '2022-01-31', 2, 6, 1),
(6, 'INTROÇÃO AO MYSQL', '4133810231', '42059427634', 45, '2022-01-30', 2, 7, 1),
(7, 'JAVA 8', '9239997621', '32637019714', 78, '2022-01-21', 1, 3, 2),
(8, 'HEROI POR UM DIA', '4525767108', '93111460475', 36, '2022-01-28', 2, 4, 2),
(9, 'MÃE GANHEI A COPA', '1376648637', '44656438062', 69, '2022-01-01', 2, 3, 3),
(10, 'MENTE MILIONÁRIA', '554379976', '10151259801', 61, '2022-01-16', 1, 4, 2),
(11, '1 MILHÃO EM 60 DIAS', '4862801448', '33629646444', 62, '2022-01-27', 1, 2, 1),
(12, 'PAI RICO FILHO POBRE', '6040861313', '92408908319', 33, '2022-02-28', 2, 3, 1),
(13, 'DIÁRIO DE UM BANANA', '8713309107', '98549016009', 40, '2022-01-29', 2, 8, 4),
(14, 'ANABELE A HISTÓRIA NÃO CONTADA', '3433283880', '41375702770', 37, '2022-01-30', 1, 3, 5),
(15, 'VONTADE DE VENCER', '3484100484', '33919957628', 70, '2022-01-21', 1, 6, 2),
(16, 'ROCK ESTILO DE VIDA', '516010772', '54370307170', 20, '2022-01-12', 2, 3, 2),
(17, 'CÁCLULO 1 - SW', '3715766542', '51564962337', 81, '2022-01-13', 1, 7, 1),
(18, 'CÁLCULO 2 -JWL', '256205462', '94961813528', 10, '2022-01-14', 1, 3, 3),
(19, 'GEOMETRIA', '3025013731', '57837178375', 35, '2022-01-25', 1, 5, 3),
(20, 'INTRODUÇÃO A LÓGICA', '9406304542', '83574001258', 29, '2022-01-26', 1, 5, 1),
(21, 'ABC DA PROGRAMAÇÃO V1', '2945847474', '87781256511', 17, '2022-01-17', 1, 2, 1),
(22, 'ABC DA PROGRAMAÇÃO V2', '9558040266', '46061764365', 58, '2022-01-28', 1, 3, 4),
(23, 'ABC DA PROGRAMAÇÃO V3', '5035122051', '18222623621', 34, '2022-01-29', 3, 4, 1),
(24, 'ABC DA PROGRAMAÇÃO V4', '1889235348', '5909368764', 30, '2022-01-20', 3, 4, 4),
(25, 'ABC DA PROGRAMAÇÃO V5', '9240713393', '35250086127', 89, '2022-01-11', 2, 2, 5),
(26, 'ABC DA PROGRAMAÇÃO V6', '5212665304', '95136212603', 48, '2022-01-22', 1, 6, 5),
(27, 'HELLO WORD EM 50 LINGUAGENS', '5492188378', '47659916266', 30, '2022-01-13', 3, 5, 2),
(28, 'ODEIO BANCO DE DADOS V1', '2990418436', '77440868731', 61, '2022-01-14', 2, 7, 4),
(29, 'ODEIO BANCO DE DADOS V2', '4361942761', '28145386053', 66, '2022-01-25', 2, 1, 2),
(30, 'A VIDA ALÉM DO BANCO DE DADOS', '9276322316', '49126484831', 42, '2022-06-26', 1, 1, 3),
(31, '123 RUA - LAYOFF BRASIL', '1927241582', '72051394852', 73, '2022-03-17', 2, 5, 1),
(32, 'BRASIL UM PAÍS DE DEV\'S', '1218001174', '12070357853', 72, '2022-12-18', 2, 4, 3),
(33, 'SEM PACIÊNCIA PARA NOME', '1759947864', '46632949184', 76, '2022-11-19', 3, 8, 2),
(34, 'HARRY POTTER 1', '3717502934', '59308158066', 48, '2022-05-20', 2, 7, 1),
(35, 'HARRY POTTER 2', '6037103689', '99895704364', 39, '2022-01-21', 2, 8, 3),
(36, 'HARRY POTTER 3', '7997100562', '40745635495', 27, '2022-06-22', 2, 5, 4),
(37, 'HARRY POTTER 4', '9624849758', '84837016126', 53, '2022-05-23', 3, 3, 5),
(38, 'HARRY POTTER 5', '9472899286', '92250388426', 60, '2022-01-24', 3, 4, 5),
(39, 'HARRY POTTER 6', '8528600203', '12539927956', 56, '2022-01-25', 3, 7, 2),
(40, 'HARRY POTTER 7', '6014655524', '57174752904', 30, '2022-01-26', 3, 5, 3),
(41, 'SENHOR DOS ANÉIS 1', '9621192921', '84782979020', 67, '2022-09-27', 2, 8, 2),
(42, 'SENHOR DOS ANÉIS 2', '3752986104', '56562969981', 66, '2022-10-28', 2, 1, 4),
(43, 'SENHOR DOS ANÉIS 3', '2321211855', '83235742401', 21, '2022-01-29', 3, 5, 4),
(44, 'SENHOR DOS ANÉIS 4', '933426280', '73978948413', 70, '2022-01-30', 3, 3, 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `turnos`
--

CREATE TABLE `turnos` (
  `id` int(11) NOT NULL,
  `descricao` varchar(50) NOT NULL,
  `carga_horaria` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `vendas`
--

CREATE TABLE `vendas` (
  `id` int(11) NOT NULL,
  `data_venda` date NOT NULL,
  `quantidade_livros` int(11) NOT NULL,
  `id_livro` int(11) NOT NULL,
  `id_clientes` int(11) NOT NULL,
  `id_forma_de_pagamento` int(11) NOT NULL,
  `id_funcionario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `autores`
--
ALTER TABLE `autores`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Índices para tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `cpf` (`cpf`);

--
-- Índices para tabela `editoras`
--
ALTER TABLE `editoras`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `estoques`
--
ALTER TABLE `estoques`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_livro` (`id_livro`);

--
-- Índices para tabela `formas_de_pagamento`
--
ALTER TABLE `formas_de_pagamento`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `funcionarios`
--
ALTER TABLE `funcionarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `matricula` (`matricula`);

--
-- Índices para tabela `funcoes`
--
ALTER TABLE `funcoes`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `generos`
--
ALTER TABLE `generos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `livros`
--
ALTER TABLE `livros`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `isbn` (`isbn`),
  ADD UNIQUE KEY `codigo_de_barras` (`codigo_de_barras`),
  ADD KEY `id_editora` (`id_editora`),
  ADD KEY `id_autor` (`id_autor`),
  ADD KEY `id_generos` (`id_generos`);

--
-- Índices para tabela `turnos`
--
ALTER TABLE `turnos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `vendas`
--
ALTER TABLE `vendas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_livro` (`id_livro`),
  ADD KEY `id_clientes` (`id_clientes`),
  ADD KEY `id_forma_de_pagamento` (`id_forma_de_pagamento`),
  ADD KEY `id_funcionario` (`id_funcionario`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `autores`
--
ALTER TABLE `autores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `editoras`
--
ALTER TABLE `editoras`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `estoques`
--
ALTER TABLE `estoques`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

--
-- AUTO_INCREMENT de tabela `formas_de_pagamento`
--
ALTER TABLE `formas_de_pagamento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `funcionarios`
--
ALTER TABLE `funcionarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `funcoes`
--
ALTER TABLE `funcoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `generos`
--
ALTER TABLE `generos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `livros`
--
ALTER TABLE `livros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT de tabela `turnos`
--
ALTER TABLE `turnos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `vendas`
--
ALTER TABLE `vendas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `estoques`
--
ALTER TABLE `estoques`
  ADD CONSTRAINT `estoques_ibfk_1` FOREIGN KEY (`id_livro`) REFERENCES `livros` (`id`);

--
-- Limitadores para a tabela `livros`
--
ALTER TABLE `livros`
  ADD CONSTRAINT `livros_ibfk_1` FOREIGN KEY (`id_editora`) REFERENCES `editoras` (`id`),
  ADD CONSTRAINT `livros_ibfk_2` FOREIGN KEY (`id_autor`) REFERENCES `autores` (`id`),
  ADD CONSTRAINT `livros_ibfk_3` FOREIGN KEY (`id_generos`) REFERENCES `generos` (`id`);

--
-- Limitadores para a tabela `vendas`
--
ALTER TABLE `vendas`
  ADD CONSTRAINT `vendas_ibfk_1` FOREIGN KEY (`id_livro`) REFERENCES `livros` (`id`),
  ADD CONSTRAINT `vendas_ibfk_2` FOREIGN KEY (`id_clientes`) REFERENCES `clientes` (`id`),
  ADD CONSTRAINT `vendas_ibfk_3` FOREIGN KEY (`id_forma_de_pagamento`) REFERENCES `formas_de_pagamento` (`id`),
  ADD CONSTRAINT `vendas_ibfk_4` FOREIGN KEY (`id_funcionario`) REFERENCES `funcionarios` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
