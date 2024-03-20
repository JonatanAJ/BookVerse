-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 19/03/2024 às 23:00
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bookverse`
--
CREATE DATABASE IF NOT EXISTS `bookverse` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bookverse`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `carrinho_compras`
--

CREATE TABLE `carrinho_compras` (
  `ID_item_carrinho` int(11) NOT NULL,
  `ID_usuario` int(11) DEFAULT NULL,
  `ID_livro` int(11) DEFAULT NULL,
  `Quantidade` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `comentarios`
--

CREATE TABLE `comentarios` (
  `ID_comentario` int(11) NOT NULL,
  `ID_usuario` int(11) DEFAULT NULL,
  `ID_livro` int(11) DEFAULT NULL,
  `Data_comentario` timestamp NOT NULL DEFAULT current_timestamp(),
  `Texto_comentario` text DEFAULT NULL,
  `Classificacao` int(11) DEFAULT NULL CHECK (`Classificacao` >= 1 and `Classificacao` <= 5)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `favoritos`
--

CREATE TABLE `favoritos` (
  `ID_favorito` int(11) NOT NULL,
  `ID_usuario` int(11) DEFAULT NULL,
  `ID_livro` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `livros`
--

CREATE TABLE `livros` (
  `ID_livro` int(11) NOT NULL,
  `Titulo` varchar(255) NOT NULL,
  `Autor` varchar(255) NOT NULL,
  `ISBN` varchar(20) NOT NULL,
  `Descricao` text DEFAULT NULL,
  `Categoria` varchar(50) DEFAULT NULL,
  `Preco` decimal(10,2) DEFAULT NULL,
  `Condicao` enum('novo','usado') DEFAULT NULL,
  `Disponibilidade` enum('disponivel','nao_disponivel') NOT NULL,
  `Imagem_capa` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `livros`
--

INSERT INTO `livros` (`ID_livro`, `Titulo`, `Autor`, `ISBN`, `Descricao`, `Categoria`, `Preco`, `Condicao`, `Disponibilidade`, `Imagem_capa`) VALUES
(1, 'oi', 'oiii', '', '22', NULL, NULL, NULL, '', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `pagamentos`
--

CREATE TABLE `pagamentos` (
  `ID_pagamento` int(11) NOT NULL,
  `ID_usuario` int(11) DEFAULT NULL,
  `ID_pedido` int(11) DEFAULT NULL,
  `Metodo_pagamento` varchar(100) DEFAULT NULL,
  `Valor_pagamento` decimal(10,2) DEFAULT NULL,
  `Data_pagamento` timestamp NOT NULL DEFAULT current_timestamp(),
  `Status_pagamento` enum('pago','pendente','falha') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `pedidos`
--

CREATE TABLE `pedidos` (
  `ID_pedido` int(11) NOT NULL,
  `ID_usuario` int(11) DEFAULT NULL,
  `ID_livro` int(11) DEFAULT NULL,
  `Tipo_transacao` enum('compra','troca') NOT NULL,
  `Data_pedido` timestamp NOT NULL DEFAULT current_timestamp(),
  `Status_pedido` enum('pendente','processando','enviado','entregue') DEFAULT NULL,
  `Metodo_pagamento` varchar(100) DEFAULT NULL,
  `Total_pedido` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `transacoes_financeiras`
--

CREATE TABLE `transacoes_financeiras` (
  `ID_transacao` int(11) NOT NULL,
  `ID_usuario` int(11) DEFAULT NULL,
  `ID_pagamento` int(11) DEFAULT NULL,
  `Tipo_transacao` enum('credito','debito','pix') NOT NULL,
  `Valor` decimal(10,2) DEFAULT NULL,
  `Data_transacao` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `trocas`
--

CREATE TABLE `trocas` (
  `ID_troca` int(11) NOT NULL,
  `ID_usuario_solicitante` int(11) DEFAULT NULL,
  `ID_livro_oferecido` int(11) DEFAULT NULL,
  `ID_livro_desejado` int(11) DEFAULT NULL,
  `Status_troca` enum('pendente','aceita','recusada') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `ID_usuario` int(11) NOT NULL,
  `Nome` varchar(255) NOT NULL,
  `Sobrenome` varchar(255) NOT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Senha` varchar(255) NOT NULL,
  `Data_registro` timestamp NOT NULL DEFAULT current_timestamp(),
  `Endereco_entrega` text DEFAULT NULL,
  `Endereco_cobranca` text DEFAULT NULL,
  `Nivel_permissao` enum('usuario_regular','administrador') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `usuarios`
--

INSERT INTO `usuarios` (`ID_usuario`, `Nome`, `Sobrenome`, `Email`, `Senha`, `Data_registro`, `Endereco_entrega`, `Endereco_cobranca`, `Nivel_permissao`) VALUES
(13, 'jonatan', 'angelimdd', 'jonatanfanfgelimmm@gmail.com', '123', '2024-03-16 20:17:02', NULL, NULL, 'usuario_regular'),
(19, 'jonatan', 'angelim', 'jonatanangelimmm@gmail.com', '123', '2024-03-19 20:09:04', NULL, NULL, 'usuario_regular');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `carrinho_compras`
--
ALTER TABLE `carrinho_compras`
  ADD PRIMARY KEY (`ID_item_carrinho`),
  ADD KEY `ID_usuario` (`ID_usuario`),
  ADD KEY `ID_livro` (`ID_livro`);

--
-- Índices de tabela `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`ID_comentario`),
  ADD KEY `ID_usuario` (`ID_usuario`),
  ADD KEY `ID_livro` (`ID_livro`);

--
-- Índices de tabela `favoritos`
--
ALTER TABLE `favoritos`
  ADD PRIMARY KEY (`ID_favorito`),
  ADD KEY `ID_usuario` (`ID_usuario`),
  ADD KEY `ID_livro` (`ID_livro`);

--
-- Índices de tabela `livros`
--
ALTER TABLE `livros`
  ADD PRIMARY KEY (`ID_livro`),
  ADD UNIQUE KEY `ISBN` (`ISBN`);

--
-- Índices de tabela `pagamentos`
--
ALTER TABLE `pagamentos`
  ADD PRIMARY KEY (`ID_pagamento`),
  ADD KEY `ID_usuario` (`ID_usuario`),
  ADD KEY `ID_pedido` (`ID_pedido`);

--
-- Índices de tabela `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`ID_pedido`),
  ADD KEY `ID_usuario` (`ID_usuario`),
  ADD KEY `ID_livro` (`ID_livro`);

--
-- Índices de tabela `transacoes_financeiras`
--
ALTER TABLE `transacoes_financeiras`
  ADD PRIMARY KEY (`ID_transacao`),
  ADD KEY `ID_usuario` (`ID_usuario`),
  ADD KEY `ID_pagamento` (`ID_pagamento`);

--
-- Índices de tabela `trocas`
--
ALTER TABLE `trocas`
  ADD PRIMARY KEY (`ID_troca`),
  ADD KEY `ID_usuario_solicitante` (`ID_usuario_solicitante`),
  ADD KEY `ID_livro_oferecido` (`ID_livro_oferecido`),
  ADD KEY `ID_livro_desejado` (`ID_livro_desejado`);

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`ID_usuario`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `carrinho_compras`
--
ALTER TABLE `carrinho_compras`
  MODIFY `ID_item_carrinho` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `ID_comentario` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `favoritos`
--
ALTER TABLE `favoritos`
  MODIFY `ID_favorito` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `livros`
--
ALTER TABLE `livros`
  MODIFY `ID_livro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `pagamentos`
--
ALTER TABLE `pagamentos`
  MODIFY `ID_pagamento` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `ID_pedido` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `transacoes_financeiras`
--
ALTER TABLE `transacoes_financeiras`
  MODIFY `ID_transacao` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `trocas`
--
ALTER TABLE `trocas`
  MODIFY `ID_troca` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `ID_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `carrinho_compras`
--
ALTER TABLE `carrinho_compras`
  ADD CONSTRAINT `carrinho_compras_ibfk_1` FOREIGN KEY (`ID_usuario`) REFERENCES `usuarios` (`ID_usuario`),
  ADD CONSTRAINT `carrinho_compras_ibfk_2` FOREIGN KEY (`ID_livro`) REFERENCES `livros` (`ID_livro`);

--
-- Restrições para tabelas `comentarios`
--
ALTER TABLE `comentarios`
  ADD CONSTRAINT `comentarios_ibfk_1` FOREIGN KEY (`ID_usuario`) REFERENCES `usuarios` (`ID_usuario`),
  ADD CONSTRAINT `comentarios_ibfk_2` FOREIGN KEY (`ID_livro`) REFERENCES `livros` (`ID_livro`);

--
-- Restrições para tabelas `favoritos`
--
ALTER TABLE `favoritos`
  ADD CONSTRAINT `favoritos_ibfk_1` FOREIGN KEY (`ID_usuario`) REFERENCES `usuarios` (`ID_usuario`),
  ADD CONSTRAINT `favoritos_ibfk_2` FOREIGN KEY (`ID_livro`) REFERENCES `livros` (`ID_livro`);

--
-- Restrições para tabelas `pagamentos`
--
ALTER TABLE `pagamentos`
  ADD CONSTRAINT `pagamentos_ibfk_1` FOREIGN KEY (`ID_usuario`) REFERENCES `usuarios` (`ID_usuario`),
  ADD CONSTRAINT `pagamentos_ibfk_2` FOREIGN KEY (`ID_pedido`) REFERENCES `pedidos` (`ID_pedido`);

--
-- Restrições para tabelas `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `pedidos_ibfk_1` FOREIGN KEY (`ID_usuario`) REFERENCES `usuarios` (`ID_usuario`),
  ADD CONSTRAINT `pedidos_ibfk_2` FOREIGN KEY (`ID_livro`) REFERENCES `livros` (`ID_livro`);

--
-- Restrições para tabelas `transacoes_financeiras`
--
ALTER TABLE `transacoes_financeiras`
  ADD CONSTRAINT `transacoes_financeiras_ibfk_1` FOREIGN KEY (`ID_usuario`) REFERENCES `usuarios` (`ID_usuario`),
  ADD CONSTRAINT `transacoes_financeiras_ibfk_2` FOREIGN KEY (`ID_pagamento`) REFERENCES `pagamentos` (`ID_pagamento`);

--
-- Restrições para tabelas `trocas`
--
ALTER TABLE `trocas`
  ADD CONSTRAINT `trocas_ibfk_1` FOREIGN KEY (`ID_usuario_solicitante`) REFERENCES `usuarios` (`ID_usuario`),
  ADD CONSTRAINT `trocas_ibfk_2` FOREIGN KEY (`ID_livro_oferecido`) REFERENCES `livros` (`ID_livro`),
  ADD CONSTRAINT `trocas_ibfk_3` FOREIGN KEY (`ID_livro_desejado`) REFERENCES `livros` (`ID_livro`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
