-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 01/04/2024 às 04:57
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
(13, 'Crepúsculo', 'Stephenie Meyer', '9788580570304', 'The Twilight Saga é uma série de cinco filmes, dos gêneros fantasia e romance, lançados entre 2008 e 2012, pela Summit Entertainment, baseados nos quatro romances da série Twilight, da autora norte-americana Stephenie Meyer. Os filmes estrelam Kristen Stewart, Robert Pattinson e Taylor Lautner.', 'Romance', 52.00, 'novo', 'disponivel', '../assets/capa-livro/romance/crepusculo.jpg'),
(14, 'É Assim Que Acaba', 'Collen Hoover', '9788501113498', '\"É assim que acaba\" é uma narrativa poderosa sobre a força necessária para fazer escolhas certas nas situações mais difíceis. A obra explora a complexidade das relações tóxicas e como amor e abuso muitas vezes coexistem em uma confusão de sentimentos.', 'Romance', 45.00, 'novo', 'disponivel', '../assets/capa-livro/romance/e assim que acaba.jpg'),
(15, 'É Assim Que Começa', 'Collen hoover', '9786559812219', 'Um inesquecível drama da autora de Verity e É assim que acaba sobre um casamento conturbado e uma promessa esquecida que pode ser capaz de salvá-lo. Todas as suas imperfeições narra a história de Quinn e Graham.', 'Romance', 34.00, 'novo', 'disponivel', '../assets/capa-livro/romance/e assim que começa.jpg'),
(16, 'Verity', 'collen hoover', '9788501119667', 'Verity é um romance e thriller psicológico da autora norte-americana Colleen Hoover, foi inicialmente publicado pela própria autora em 2018 e teve a sua 1º edição em Portugal publicada pela TopSeller a 11 de novembro de 2019.', 'Romance', 35.00, 'usado', 'nao_disponivel', '../assets/capa-livro/romance/verity.jpg'),
(17, 'A Cinco Passos De Você', 'Rachael Lippincott', '9788525068378', 'Stella Grant gosta de estar no controle. Ela parece ser uma adolescente típica, mas em sua rotina há listas de tarefas e inúmeros remédios que ela deve tomar para controlar a fibrose cística, uma doença crônica que impede que seus pulmões funcionem como deveriam.', 'Romance', 54.00, 'usado', 'disponivel', '../assets/capa-livro/romance/a cinco passos de voce.jpg'),
(18, 'It A Coisa', 'Stephen king', '9788581051529', 'Durante as férias de 1958, em uma pacata cidadezinha chamada Derry, um grupo de sete amigos começa a ver coisas estranhas. Um conta que viu um palhaço, outro que viu uma múmia. Finalmente, acabam descobrindo que estavam todos vendo a mesma coisa: um ser sobrenatural e maligno que pode assumir várias formas.', 'Terror', 68.00, 'usado', 'disponivel', '../assets/capa-livro/terror/it a coisa.jpg'),
(19, 'Ed & Lorraine Warren: Luz nas Trevas', 'Gerald Brittle', '6555982446', 'O livro documento com os arquivos completos do caso que inspirou Invocação do Mal 3 e vai muito além do filme\r\n\r\nO casal de investigadores paranormais mais amado do mundo está de volta em Ed & Lorraine Warren: Luz nas Trevas, mais uma edição sobrenatural que nos leva ao Invocaverso dos Warren. A DarkSide® Books orgulhosamente convida todos os investigadores do oculto a conhecer a verdade por trás de um dos casos mais assustadores do arquivo da dupla: a trágica história de possessão em uma pacata família de Connecticut, que culminou em um crime sórdido e diabólico.', 'Terror', 55.00, 'novo', 'disponivel', '../assets/capa-livro/teror/Ed e Lorraine Warren Luz nas Trevas.jpg'),
(20, 'Lady Killers: Assassinas em Série', 'Tori Telfer', '8594541473', 'Com um texto informativo e espirituoso, a autora recapitula a vida de catorze mulheres com apetite para destruição, suas atrocidades e o legado de dor deixado por cada uma delas. As histórias são narradas através de um necessário viés feminista.', 'Terror', 55.00, 'novo', 'nao_disponivel', '../assets/capa-livro/teror/lady killers.jpg'),
(21, 'The Collector', 'John Fowles', ' 9788594541086', 'O Colecionador é um romance de suspense de 1963 escrito pelo autor inglês John Fowles. Foi o seu primeiro livro e estreia literária.', 'Terror', 54.00, 'usado', 'nao_disponivel', '../assets/capa-livro/teror/the collector.jpg'),
(22, 'Drácula - Dark Edition', 'Bram Stoker', '8566636236', 'Drácula, um clássico que ainda corre quente na veia de inúmeras gerações de leitores por todo o mundo e a mais celebrada narrativa de vampiros, continua a transcender fronteiras de tempo, espaço, história e memória.', 'Terror', 72.00, 'usado', 'disponivel', '../assets/capa-livro/teror/dracula.jpg'),
(23, 'A menina que roubava livros', 'Markus Zusak', '9788580570182', 'The Book Thief é um drama do escritor australiano Markus Zusak, publicado em 2005 pela editora Picador. No Brasil e em Portugal, foi lançado pela Intrínseca e a Presença, respetivamente. O livro é sobre Liesel Meminger, uma garota que encontra a Morte três vezes durante 1939–43 na Alemanha nazista.', 'Ficção juvenil', 53.00, 'usado', 'disponivel', '../assets/capa-livro/juvenil/a menina que roubava livros.jpg'),
(24, 'Quem é Você, Alasca?', 'John Green', '8580576830', 'Looking for Alaska é um romance publicado em 2005, sendo o primeiro do escritor estadunidense John Green. Ganhou o Prêmio Michael L. Printz de 2006 da American Library Association. Tornou-se um best-seller na 10º posição da semana de 29 de julho de 2012 no The New York Times', 'Ficção Juvenil', 55.00, 'novo', 'nao_disponivel', '../assets/capa-livro/juvenil/Quem é Você, Alasca.jpg'),
(25, 'Extraordinário ', ' R. J. Palacio ', '8580573017', 'August Pullman nasceu com uma síndrome genética cuja sequela é uma severa deformidade facial, que lhe impôs diversas cirurgias e complicações médicas. Essa característica o transformou em uma criança tímida, que prefere sair de casa usando um capacete de astronauta para que ninguém veja seu rosto.', 'Ficção Juvenil', 50.00, 'novo', 'disponivel', '../assets/capa-livro/juvenil/Extraordinário.jpg'),
(26, 'Coraline', ' Neil Gaiman ', '8551006754', 'Coraline\' é um conto de fadas às avessas no qual a jovem descobre uma porta para um misterioso apartamento no prédio para onde acabou de se mudar. Uma história que vai além dos tradicionais dragões, príncipes encantados, frágeis princesas ou gigantes padronizados que habitam o universo infantil.', 'Ficção Juvenil', 55.00, 'novo', 'nao_disponivel', '../assets/capa-livro/juvenil/Coraline.jpg'),
(27, 'O menino do pijama listrado', 'John Boyne', '853591112X', 'Em uma de suas andanças Bruno conhece Shmuel, um garoto do outro lado da cerca que curiosamente nasceu no mesmo dia que ele. O menino do pijama listrado é uma fábula sobre amizade em tempos de guerra, e sobre o que acontece quando a inocência é colocada diante de um monstro terrível e inimaginável.', 'Ficção Juvenil', 42.00, 'usado', 'disponivel', '../assets/capa-livro/juvenil/O menino do pijama listrado.jpg'),
(28, 'Assim Falou Zaratustra', 'Friedrich Nietzsche', '9788552101222', 'Assim falou Zaratustra: um livro para todos e para ninguém é um livro escrito entre 1883 e 1885 pelo filósofo alemão Friedrich Nietzsche, que influenciou significativamente o mundo moderno. O livro foi escrito originalmente como três volumes separados em um período de vários anos.', 'Filosofía', 29.00, 'novo', 'disponivel', '../assets/capa-livro/filosofia/Assim Falou Zaratustra.jpg'),
(29, 'O Príncipe', 'Nicolau Maquiavel', '9788532645722', 'O Príncipe é um livro escrito por Nicolau Maquiavel em 1513, cuja primeira edição foi publicada postumamente, em 1532. ', 'Filosofía', 14.00, 'usado', 'disponivel', '../assets/capa-livro/filosofia/O Príncipe.jpg'),
(30, 'Meditações', 'Marco Aurélio', '9788552100928', 'Meditações é o título de uma série de escritos pessoais do imperador romano Marco Aurélio onde ele apresentou suas ideias sobre a filosofia estoica. Marco Aurélio escreveu os doze livros das Meditações em grego, como uma fonte para sua própria orientação e para se melhorar como pessoa.', 'Filosofía', 28.00, 'novo', 'nao_disponivel', '../assets/capa-livro/filosofia/Meditações.jpg'),
(31, 'O Ser E O Nada', 'Jean-Paul Sartre', '853261762X', 'L\'être et le néant: Essai d\'ontologie phénoménologique é um tratado filosófico de 1943 escrito por Jean-Paul Sartre que é tido como marco para o início do crescimento do existencialismo no século XX. Seu foco principal é definir a consciência como transcendente.', 'Filosofía', 80.00, 'usado', 'disponivel', '../assets/capa-livro/filosofia/O Ser E O Nada.jpg'),
(32, 'Porque Fazemos O Que Fazemos?', ' Mario Sergio Cortella', '9788542208160', 'Por que Fazemos o que Fazemos? - Aflições vitais sobre trabalho, carreira e realização é um livro escrito pelo filósofo e professor Mario Sergio Cortella lançado em julho de 2016.', 'Filosofía', 44.00, 'novo', 'nao_disponivel', '../assets/capa-livro/filosofia/Porque Fazemos O Que Fazemos.jpg'),
(33, 'Uma Confissão', 'Liev Tolstói', '9788543301846', 'Esta breve obra autobiográfica trata sobre a luta de Tolstói durante uma crise existencial de meia-idade. Descreve sua busca por respostas à questões filosóficas ligadas à existência de Deus, o significado e o sentido da vida.Nesta obra do peso-pesado da literatura russa, o autor faz um forte confronto sobre suicídio e sobre o alcance da fé.', 'Biografia', 38.00, 'novo', 'disponivel', '../assets/capa-livro/biografia/Uma Confissão.jpg'),
(35, 'Uma Terra Prometida', 'Barack Obama', '9786557820322', 'Em UMA TERRA PROMETIDA, Barack Obama narra, na primeira pessoa, a história da sua improvável odisseia, de jovem em busca da própria identidade a líder do mundo livre, descrevendo com uma minúcia extraordinariamente pessoal quer a sua educação política quer os marcos do primeiro mandato da sua histórica presidência - um tempo de dramática transformação e turbulência.', 'Biografia', 42.00, 'novo', 'nao_disponivel', '../assets/capa-livro/biografia/Uma Terra Prometida.jpg'),
(36, 'As Cartas De J.R.R.Tolkien', ' Christopher Tolkien', '9786560050914', 'As Cartas de J. R. R. Tolkien é um livro em que se reúne uma compilação de trechos de cartas escritas por John Ronald Reuel Tolkien, originalmente publicado em 1981, organizado por Humphrey Carpenter e com a assistência de Christopher Tolkien.', 'Biografia', 109.00, 'usado', 'nao_disponivel', '../assets/capa-livro/biografia/As Cartas De J.R.R.Tolkien.jpg'),
(37, 'O Diário De Anne Frank', 'Anne Frank', '8501044458', 'O Diário de Anne Frank é um livro escrito por Anne Frank entre 12 de junho de 1942 e 1.º de agosto de 1944 durante a Segunda Guerra Mundial. É conhecido por narrar momentos vivenciados pelo grupo de judeus confinados em um esconderijo durante a ocupação nazista dos Países Baixos.', 'Biografia', 40.00, 'novo', 'disponivel', '../assets/capa-livro/biografia/O Diário De Anne Frank.jpg'),
(38, 'One Piece Vol.105', 'Eiichiro Oda', '652592359X', 'A formação dos Quatro Imperadores mudou e, agora, Luffy é o novo membro desse seleto grupo de piratas! Contudo, com a chegada de uma nova era, o mundo começa a mudar drasticamente enquanto o bando deixa o País de Wano... Que aventuras estão esperando por eles?! Uma nova viagem começa agora!!', 'Mangás', 26.00, 'novo', 'disponivel', '../assets/capa-livro/mangás/One Piece Vol.105.jpg'),
(39, 'Decadência', '‎ Inio Asano', '‎ 6555945257', '\"O que acontece quando sua primeira série de mangá acabou e você não tem ideia de como começar a próxima, seu casamento está desmoronando, seu amor puro por quadrinhos foi destruído pela realidade cruel da indústria e nada parece preencher o seu vazio interior? Encontre a combinação secreta para uma nova série de mangá de sucesso e tudo ficará bem, certo? Ou será que, não?\"', 'Mangás', 37.00, 'usado', 'nao_disponivel', '../assets/capa-livro/mangás/Decadência.jpg'),
(40, 'Yu Yu Hakusho', ' Yoshihiro Togashi', ' ‎ 8577879097', 'Yusuke Urameshi – um jovem delinquente rude, violento e impaciente – parece só dar dor de cabeça para sua mãe, professores e vizinhança. Até que, um dia, depois de salvar um garotinho, acaba morrendo atropelado por um carro. Porém, como sua morte não era esperada pelo Mundo Espiritual, a ele é dada a chance de voltar à vida caso consiga passar pelo Teste da Ressureição. Acompanhado de Botan, a guia do Mundo Espiritual, Yusuke irá viver aventuras sobrenaturais até poder retornar ao seu corpo. AUTOR: Yoshihiro,Togashi No. ', 'Mangás', 27.00, 'novo', 'nao_disponivel', '../assets/capa-livro/mangás/Yu Yu Hakusho.jpg'),
(41, 'Chainsaw Man Vol. 1 ', 'Tatsuki Fujimoto', ' 6555127333', 'Denji é um jovem extremamente pobre que junto de Pochita, seu demônio de estimação, trabalha feito um condenado como Caçador de Demônios para pagar a imensa dívida que possui. Mas sua vida de miséria está prestes a mudar graças a uma traição brutal!! Aqui começa a história de um novo anti-herói que com um demônio em seu corpo, caça demônios!!', 'Mangás', 28.00, 'usado', 'disponivel', '../assets/capa-livro/mangás/Chainsaw Man.jpg'),
(42, 'Naruto Gold Vol.1', ' Masashi Kishimoto', '9788542602418', 'Esta é a Vila Oculta da Folha. Naruto é o garoto mais problemático da Academia Ninja e está sempre aprontando todas!! Seu grande sonho é se tornar um shinobi digno do título de Hokage, o mais forte e respeitado ninja da vila, e superar todos os Hokages anteriores...!! Mas um segredo em torno de seu nascimento o mantém distante tanto de seu sonho quanto das pessoas...!! Não perca mais uma chance de acompanhar a empolgante jornada de Naruto, o garoto ninja que conquistou o mundo inteiro, nesta nova edição de luxo com pôsteres, freetalks exclusivos do autor e muito mais!\r\n\r\n', 'Mangás', 37.00, 'novo', 'disponivel', '../assets/capa-livro/mangás/Naruto Gold Vol.1.jpg'),
(49, 'Watchmen', 'Alan Moore', '857351549X', 'Uma das Graphic Novels mais influentes de todos os tempos e um eterno bestseller, WATCHMEN só cresceu em estatura desde sua publicação original, como minissérie, em 1986. Esta edição de luxo, com capa dura, papel especial e formato diferenciado, traz a lendária saga escrita por Alan Moore e desenhada por Dave Gibbons, totalmente recolorida digitalmente por John Higgings, o colorista original. Não apenas isso, o volume de 460 páginas também apresenta uma quantidade de extras jamais vista no Brasil, trazendo trechos do roteiro original, esboços de Gibbons, comentários sobre os personagens, textos dos criadores e mais. Uma edição primorosa que não pode faltar na estante de nenhum colecionador. Uma edição primorosa que não pode faltar na estante de nenhum colecionador.O ano é 1985. Os Estados Unidos são uma nação totalitária e fechada, isolada do resto do mundo. A presença de arsenais nucleares e dos chamados super-heróis mantém um certo equilíbrio entre as forças do planeta... até que o relógio do fim do mundo começa a marchar para a meia-noite e a raça humana para um abismo sem-fim. A sombria e inigualável trama tem início com ilusões paranóicas do supostamente insano herói Rorschach, um dos Watchmen que patrulhavam os EUA décadas atrás. Mas ele estaria realmente insano ou na verdade teria descoberto uma sórdida conspiração para assassinar super-heróis -- ou, pior ainda, milhões de civis inocentes? Fugindo da lei, Rorschach junta-se a ex-companheiros do passado em uma desesperada tentativa de salvar suas próprias vidas... e o que acabam descobrindo, além de abalar suas estruturas, poderá alterar o próprio destino do planeta Terra! Seguindo duas gerações de heróis mascarados, desde a Segunda Guerra até os tensos anos da Guerra Fria, surge esta pioneira epopéia de ódio, amor, reencontros impossíveis, grandes reviravoltas e muita ação, como só a criatividade de Alan Moore e Dave Gibbons poderia conceber! WATCHMEN foi considerada pela revista TIME uma das cem melhores obras em língua inglesa de todos os tempos.', 'HQ', 89.00, 'novo', 'disponivel', '../assets/capa-livro/HQ/Watchmen.jpg'),
(50, 'Batman - A Piada Mortal', 'Alan Moore', '8573515473', 'Do premiado roteirista Alan Moore (Watchmen, V de Vingança) conta como um dia ruim na vida de um homem pode significar a linha que separa a sanidade da loucura. Principalmente quando se trata do Coringa, o maior e mais conhecido vilão do mundo dos quadrinhos. Os desenhos de Brian Bolland (Camelot 3000), um dos maiores ilustradores dos quadrinhos, elevaram a história praticamente à perfeição retratando com maestria o mundo imaginado por Alan Moore. Mas faltava um detalhe para completar a obra. Bolland não pôde colorir a edição original, e agora, vinte anos depois, isso foi corrigido e as cores foram completamente refeitas pelo artista, seguindo fielmente a sua imaginação. Edição obrigatória para os fãs do Coringa, do Batman e dos quadrinhos.', 'HQ', 82.00, 'novo', 'disponivel', '../assets/capa-livro/HQ/Batman - A Piada Mortal.jpg'),
(51, 'GUERRA CIVIL - MARVEL', 'Stuart Moore', '9788542804126', 'Nessa versão em prosa da graphic novel, Stuart Moore adapta uma das histórias mais famosas do universo Marvel para um livro de tirar o fôlego.\r\n\r\nHomem de Ferro e Capitão América são dois membros essenciais para os Vingadores, a maior equipe de super-heróis do mundo. Quando uma trágica batalha deixa um buraco na cidade de Stamford, matando centenas de pessoas, o governo americano exige que todos os super-heróis revelem sua identidade e registrem seus poderes.\r\n\r\nPara Tony Stark – o Homem de Ferro – é um passo lamentável, porém necessário, o que o leva a apoiar a lei. Para o Capitão América, é uma intolerável agressão à liberdade cívica.', 'HQ', 39.00, 'usado', 'nao_disponivel', '../assets/capa-livro/HQ/Guerra Civil.jpg'),
(52, 'Homem-aranha - A última caçada de Kraven', 'Neil Kleid', ' 8542812069', 'Peter Parker, o Espetacular Homem-Aranha, está prestes a dar um grande passo em sua vida:revelar sua identidade para Mary Jane Watson, sua namorada de longa data. No entanto, o relacionamento dos pombinhos é posto à prova quando Peter descobre que um velho amigo não era exatamente quem ele pensava. Para piorar, uma terrível ameaça toma forma: Kraven, o Caçador, que se autodenomina o maior caçador do mundo. Após anos e anos de humilhantes derrotas, Kraven, filho de aristocratas russos, lança sobre o Homem-Aranha uma investida final. Ele jura destruir Peter Parker. Para ele, no entanto, alvejar sua presa não é o suficiente. Ele quer mesmo é tomar o lugar de seu inimigo. Assim que ele estiver morto. Apresentado ao leitor brasileiro com exclusividade pela Novo Século, Homem-Aranha: A última caçada de Kraven é uma incrível – e esperadíssima – adaptação do já clássico conto de loucura e tragédia originalmente assinado por J.M. Dematteis & Mike Zeck.', 'HQ', 16.00, 'novo', 'disponivel', '../assets/capa-livro/HQ/Homem-aranha - A última caçada de Kraven.jpg'),
(53, 'Superman - Grandes Astros', 'Grant Morrison', '8565484068', 'Setenta anos após ser criado e apresentado ao planeta por Joe Shuster e Jerry Siegel, Superman ganhou, em meados da década passada, uma reinterpretação surpreendente que chocou completa e positivamente o mundo das HQs e redefiniu todos os limites de um personagem icônico, que acreditava-se ser inalterável. Por cortesia da genial e excêntrica mente do roteirista Grant Morrison e do traço incomparável do desenhista Frank Quitely, o Homem de Aço (e seus milhões de fãs pelo mundo) foram presenteados com uma obra-prima sem precedentes, publicada em doze partes sob o título Grandes Astros Superman. Agora, essa imperdível obra volta a ser publicada no Brasil pela Panini Books, em uma edição única e com o tratamento condizente à sua relevância e qualidade. Grandes Astros Superman Ed. Definitiva traz a história na integra em acabamento e formato diferenciados, e acompanhada por extras inéditos no Brasil!', 'HQ', 100.00, 'novo', 'disponivel', '../assets/capa-livro/HQ/Superman - Grandes Astros.jpg');

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
(19, ' jonatan ', ' angelim ', ' jonatanangelimmm@gmail.com ', '9e2ea51c88cb50d60cbbff8d267cd93f', '2024-03-19 20:09:04', NULL, NULL, 'usuario_regular'),
(20, 'izaias', 'silva', 'izaias@teste.com', '123', '2024-03-20 19:04:15', NULL, NULL, 'usuario_regular'),
(21, 'kayk', 'silva', 'kayk@gmail.com', '123', '2024-03-20 19:06:11', NULL, NULL, 'usuario_regular'),
(22, 'rond', 'ferreira', 'rond@teste.com', '123', '2024-03-29 13:29:03', NULL, NULL, 'usuario_regular'),
(23, 'rondinele', 'angelim', 'rond123@gmail.com', '123', '2024-03-30 23:06:49', NULL, NULL, 'usuario_regular');

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
  MODIFY `ID_livro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

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
  MODIFY `ID_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

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
