-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Giu 03, 2020 alle 12:23
-- Versione del server: 10.4.11-MariaDB
-- Versione PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `biblioteca`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `autori`
--

CREATE TABLE `autori` (
  `numero` int(11) NOT NULL,
  `nome` varchar(40) NOT NULL,
  `cognome` varchar(40) NOT NULL,
  `annoN` int(11) NOT NULL,
  `nazionalita` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `autori`
--

INSERT INTO `autori` (`numero`, `nome`, `cognome`, `annoN`, `nazionalita`) VALUES
(1, 'Giovanni', 'Floris', 1967, 'Italiana'),
(2, 'Ray', 'Bradbury', 1920, 'Statunitense'),
(3, 'Leonardo', 'Sciascia', 1921, 'Italiana'),
(4, 'Carlo ', 'Goldoni', 1707, 'Italiana'),
(5, 'Luigi ', 'Pirandello', 1867, 'Italiana'),
(6, 'Khaled', 'Hosseini', 1965, 'Afghana'),
(7, 'Michail Afanas\'evic', 'Bulgakov', 1891, 'Russa'),
(8, 'George ', 'Orwell', 1903, 'Inglese'),
(9, 'Giorgio', 'Fontana', 1981, 'Italiana'),
(10, 'Fedor', 'Dostoevskij', 1821, 'Russa'),
(11, 'Fred', 'Uhlman', 1901, 'Tedesca');

-- --------------------------------------------------------

--
-- Struttura della tabella `categorie`
--

CREATE TABLE `categorie` (
  `sigla` varchar(2) NOT NULL,
  `nome` varchar(17) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `categorie`
--

INSERT INTO `categorie` (`sigla`, `nome`) VALUES
('NV', 'Novella'),
('OT', 'Opera teatrale'),
('RO', 'Romanzo');

-- --------------------------------------------------------

--
-- Struttura della tabella `generi`
--

CREATE TABLE `generi` (
  `sigla` varchar(2) NOT NULL,
  `nome` varchar(17) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `generi`
--

INSERT INTO `generi` (`sigla`, `nome`) VALUES
('CM', 'Commedia'),
('DP', 'Dispotico'),
('DT', 'Drammatico'),
('FP', 'Fantapolitico'),
('FV', 'Formativo'),
('FZ', 'Fantascienza'),
('GL', 'Giallo'),
('PG', 'Psicologico'),
('SI', 'Satirico'),
('SO', 'Storico'),
('SP', 'Speculativo');

-- --------------------------------------------------------

--
-- Struttura della tabella `icone`
--

CREATE TABLE `icone` (
  `numero` int(11) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `percorso` varchar(200) NOT NULL,
  `LIBRO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `icone`
--

INSERT INTO `icone` (`numero`, `nome`, `percorso`, `LIBRO`) VALUES
(1, 'amicoWEB', 'icone/amicoWEB.jpg', 6),
(2, 'aquiloniWEB', 'icone/aquiloniWEB.jpg', 10),
(3, 'bottegaWEB', 'icone/bottegaWEB.jpg', 7),
(4, 'civettaWEB', 'icone/civettaWEB.jpg', 5),
(5, 'fahrenheitWEB', 'icone/fahrenheitWEB.jpg', 4),
(6, 'fattoriaWEB', 'icone/fattoriaWEB.jpg', 12),
(7, 'giocatoreWEB', 'icone/giocatoreWEB.jpg', 8),
(8, 'mattiaWEB', 'icone/mattiaWEB.jpg', 9),
(9, 'morteWEB', 'icone/morteWEB.jpg', 13),
(10, 'nessunoWEB', 'icone/nessunoWEB.jpg', 14),
(11, 'notteWEB', 'icone/notteWEB.jpg', 3),
(12, 'uovaWEB', 'icone/uovaWEB.jpg', 11);

-- --------------------------------------------------------

--
-- Struttura della tabella `immagini`
--

CREATE TABLE `immagini` (
  `numero` int(11) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `percorso` varchar(200) NOT NULL,
  `LIBRO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `immagini`
--

INSERT INTO `immagini` (`numero`, `nome`, `percorso`, `LIBRO`) VALUES
(1, 'amico_1.1.1', 'img/amico_1.1.1.jpg', 6),
(2, 'amico_1.1', 'img/amico_1.1.jpg', 6),
(3, 'amico_1', 'img/amico_1.jpg', 6),
(4, 'aquilone_1.1.1', 'img/aquilone_1.1.1.jpg', 10),
(5, 'aquilone_1.1', 'img/aquilone_1.1.jpg', 10),
(6, 'aquilone_1', 'img/aquilone_1.jpg', 10),
(7, 'bottega_1.1.1', 'img/bottega_1.1.1.jpg', 7),
(8, 'bottega_1.1', 'img/bottega_1.1.jpg', 7),
(9, 'bottega_1', 'img/bottega_1.jpg', 7),
(10, 'civetta_1.1.1', 'img/civetta_1.1.1.jpg', 5),
(11, 'civetta_1.1', 'img/civetta_1.1.jpg', 5),
(12, 'civetta_1', 'img/civetta_1.jpg', 5),
(13, 'fahrenheit_1.1.1', 'img/fahrenheit_1.1.1.jpg', 4),
(14, 'fahrenheit_1.1', 'img/fahrenheit_1.1.jpg', 4),
(15, 'fahrenheit_1', 'img/fahrenheit_1.jpg', 4),
(16, 'fattoria_1.1.1', 'img/fattoria_1.1.1.jpg', 12),
(17, 'fattoria_1.1', 'img/fattoria_1.1.jpg', 12),
(18, 'fattoria_1', 'img/fattoria_1.jpg', 12),
(19, 'giocatore_1.1.1', 'img/giocatore_1.1.1.jpg', 8),
(20, 'giocatore_1.1', 'img/giocatore_1.1.jpg', 8),
(21, 'giocatore_1', 'img/giocatore_1.jpg', 8),
(22, 'nessuno_1.1.1', 'img/nessuno_1.1.1.jpg', 14),
(23, 'nessuno_1.1', 'img/nessuno_1.1.jpg', 14),
(24, 'nessuno_1', 'img/nessuno_1.jpg', 14),
(25, 'notte_1.1.1', 'img/notte_1.1.1.jpg', 3),
(26, 'notte_1.1', 'img/notte_1.1.jpg', 3),
(27, 'notte_1', 'img/notte_1.jpg', 3),
(28, 'pascal_1.1.1', 'img/pascal_1.1.1.jpg', 9),
(29, 'pascal_1.1', 'img/pascal_1.1.jpg', 9),
(30, 'pascal_1', 'img/pascal_1.jpg', 9),
(31, 'uomo_1.1.1', 'img/uomo_1.1.1.jpg', 13),
(32, 'uomo_1.1', 'img/uomo_1.1.jpg', 13),
(33, 'uomo_1', 'img/uomo_1.jpg', 13),
(34, 'uova_1.1.1', 'img/uova_1.1.1.jpg', 11),
(35, 'uova_1.1', 'img/uova_1.1.jpg', 11),
(36, 'uova_1', 'img/uova_1.jpg', 11);

-- --------------------------------------------------------

--
-- Struttura della tabella `libri`
--

CREATE TABLE `libri` (
  `codice` int(11) NOT NULL,
  `titolo` varchar(70) NOT NULL,
  `descrizione` varchar(5000) NOT NULL,
  `dataP` int(11) NOT NULL,
  `file` varchar(2000) NOT NULL,
  `nPagine` int(11) NOT NULL,
  `preferiti` int(1) NOT NULL,
  `CATEGORIA` varchar(2) CHARACTER SET utf8mb4 DEFAULT NULL,
  `AUTORE` int(11) DEFAULT NULL,
  `nCopie` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `libri`
--

INSERT INTO `libri` (`codice`, `titolo`, `descrizione`, `dataP`, `file`, `nPagine`, `preferiti`, `CATEGORIA`, `AUTORE`, `nCopie`) VALUES
(3, 'Quella notte sono io', 'La memoria è un animale strano. Passi una vita a cercare di domarla, a convincerti che ci sei riuscito, e poi basta un attimo per renderti conto che sei solo un illuso. Per Stefano quell’attimo arriva insieme a un telegramma che lo porta indietro di ventisette anni, alla notte che lo ha reso l’uomo che è: una convocazione, di questo si tratta, un appuntamento con il passato che non può più rimandare.', 2016, 'quella_notte_sono_io.pdf', 169, 0, 'RO', 1, 2),
(4, 'Fahrenheit 451', 'Fahrenheit 451 (edito in Italia anche con il titolo Gli anni della fenice) è un romanzo di fantascienza del 1953, scritto da Ray Bradbury.\r\nAmbientato in un imprecisato futuro posteriore al 1960, vi si descrive una società distopica in cui leggere o possedere libri è considerato un reato, per contrastare il quale è stato istituito un apposito corpo di vigili del fuoco impegnato a bruciare ogni tipo di volume.\r\nNel 1966 il libro è stato trasposto in un omonimo film per la regia di François Truffaut e in un omonimo film TV nel 2018 per la regia di Ramin Bahrani. Nel 2004 al libro è stato assegnato il premio Retro Hugo come miglior romanzo 1954.', 1953, 'fahrenheit_451.pdf', 162, 1, 'RO', 2, 2),
(5, 'Il giorno della civetta', 'Il romanzo Il giorno della civetta si apre con un omicidio: mentre sta per salire su un autobus pieno di persone viene ucciso Salvatore Colasberna, piccolo imprenditore locale che possiede un’impresa edile. Di fronte al cadavere, le persone sull’autobus spariscono velocemente, mentre l’autista e il bigliettaio si mostrano reticenti alle domande dei carabinieri. Il capitano Bellodi, proveniente da Parma, ha l’incarico di svolgere l’indagine, ma si sconta con l’omertà. Cerca di rompere il silenzio e l’indifferenza della gente, ma con pochi risultati. Il commissario Bellodi interroga i soci di Colasberna e, nonostante la reticenza di questi, riesce a capire che l’omicidio è legato al fatto che Colasberna con la sua impresa edile non si fosse adattato al sistema di potere della mafia. ', 1960, 'giorno_della_civetta.pdf', 148, 0, 'RO', 3, 1),
(6, 'L’amico ritrovato', 'L’amico ritrovato di Fred Uhlman (1901-1985), pubblicato nel 1971, è un romanzo breve che racconta l’amicizia tra un ragazzino ebreo, di nome Hans Schwarz, e il coetaneo tedesco Konradin von Hohenfels.  Il libro è ambientato durante la dittatura nazista in Germania (1933-1945) ed è ispirato alla vita dell’autore: l’amicizia tra Hans e Konradin è messa a dura prova dalle leggi razziali, tanto che Hans dovrà fuggire all’estero e scoprirà la verità sul destino dell’amico solo dopo la Seconda guerra mondiale.', 1971, 'amico_ritrovato.pdf', 78, 0, 'RO', 11, 3),
(7, 'La bottega del caffè', 'La bottega del caffè, composta nel 1750, è una delle più importanti commedie di Carlo Goldoni, all’interno della quale si sviluppa un intermezzo, dallo stesso titolo, composto da Goldoni nel 1736.  Nato inizialmente come intermezzo in tre parti, l’enorme successo del soggetto spinse il commediografo a tornarci sopra, ampliandolo fino a crearne una commedia in tre atti. È considerata uno dei suoi testi più fortunati tra le sedici commedie nuove. La commedia venne rappresentata per la prima volta a Mantova, il 2 maggio di quell’anno 1750, con gran successo. Fu poi portata a Venezia dove venne replicata per dodici volte.', 1750, 'bottega_caffe.pdf', 208, 0, 'OT', 4, 1),
(8, 'Il giocatore', 'Un giovane precettore viene posseduto dal demone del gioco d’azzardo. Il racconto diventa così la narrazione di un’ossessione descritta con lucida genialità dal giocatore stesso. L’incalzante ritmo narrativo segue passo passo l’incrinarsi del destino. Poi uno stacco temporale e il lettore è proiettato d’improvviso in un’intricata matassa di rapporti di cui il protagonista cerca disperatamente il bandolo. La tecnica narrativa procede per interrogativi, supposizioni, indizi, suscitando un’atmosfera di autentica suspense che si risolve solo alla fine, quando il racconto perde il ritmo convulso e premette al lettore di sciogliere dubbi ed enigmi.', 1866, 'giocatore.pdf', 174, 1, 'RO', 10, 2),
(9, 'Il Fu Mattia Pascal', 'Il romanzo Il fu Mattia Pascal è una delle opere di Luigi Pirandello più conosciute e amate dal pubblico, ed una delle più rilevanti dell’intera produzione dello scrittore siciliano. Scritto nel 1903, sovvenzionato dalla rivista Nuova Antologia, sulle cui pagine venne pubblicato a puntate l’anno successivo, il romanzo, come ci anticipa già il titolo stesso, ruota interamente attorno al tema, fondamentale in Pirandello, dell’identità individuale: quella di Mattia Pascal e del suo alter ego, Adriano Meis. Il romanzo, scritto in prima persona, è infatti il racconto da parte del protagonista della propria vita e delle vicende che l’hanno portato ad essere il \"fu\" di se stesso', 1904, 'mattia_pascal.pdf', 238, 0, 'RO', 5, 3),
(10, 'Cacciatore di aquiloni', 'Si dice che il tempo guarisca ogni ferita. Ma, per Amir, il passato è una bestia dai lunghi artigli, pronta a riacciuffarlo quando meno se lo aspetta. Sono trascorsi molti anni dal giorno in cui la vita del suo amico Hassan è cambiata per sempre in un vicolo di Kabul. Quel giorno, Amir ha commesso una colpa terribile. Così, quando una telefonata inattesa lo raggiunge nella sua casa di San Francisco, capisce di non avere scelta: deve tornare a casa, per trovare il figlio di Hassan e saldare i conti con i propri errori mai espiati. Ma ad attenderlo, a Kabul, non ci sono solo i fantasmi della sua coscienza. C’è una scoperta sconvolgente, in un mondo violento e sinistro dove le donne sono invisibili, la bellezza è fuorilegge e gli aquiloni non volano più.', 2003, 'cacciatore_di_aquiloni.pdf', 394, 0, 'RO', 6, 1),
(11, 'Uova fatali', 'Questo romanzo breve di Michail Bulgakov è la storia tragicomica del professor Vladimir Ipat’evic Pérsikov, insigne scienziato, direttore dell’Istituto Zootecnico di Mosca, autorità indiscussa nel campo dei rettili e degli anfibi, che scopre un \"raggio\" dalle proprietà straordinarie che ne rende rapidissima e gigantesca la crescita; purtroppo, per l’errore di un burocrate ottuso e zelante, finirà per creare una generazione di orrendi mostri. \"Uova fatali\" si legge come un racconto di fantascienza, ma è anche una satira del comunismo degli anni della NEP, sfavillante di luci e intriso di ottusità, di chiusure, di entusiasmi ridicoli, di burocratismi insulsi e un ammonimento per quanto si profilava all’orizzonte della nuova URSS: la dittatura di Stalin.', 1925, 'uova_fatali.pdf', 71, 0, 'RO', 7, 2),
(12, 'La fattoria degli animali', 'Tutti gli animali sono uguali, ma alcuni animali sono più uguali degli altri. Stanchi dei soprusi, gli animali di una fattoria decidono di ribellarsi agli umani e, cacciato il proprietario, danno vita a un nuovo ordine fondato sull’uguaglianza. Ben presto, però, emerge tra loro una nuova classe di burocrati, i maiali, che con astuzia, cupidigia e prepotenza si impongono sugli altri animali. L’acuta satira orwelliana contro il totalitarismo è unita in questo apologo a una felicità inventiva e a un’energia stilistica che pongono \"La fattoria degli animali\" tra le opere più celebri della narrativa del Novecento.', 1945, 'fattoria_degli_animali.pdf', 93, 1, 'NV', 8, 3),
(13, 'Morte di un uomo felice', 'Milano, estate 1981: siamo nella fase più tarda, e più feroce, della stagione terroristica in Italia. Non ancora quarantenne, Giacomo Colnaghi a Milano è un magistrato sulla linea del fronte. Coordinando un piccolo gruppo di inquirenti, indaga da tempo sulle attività di una nuova banda armata, responsabile dell’assassinio di un politico democristiano.', 2014, 'morte_uomo_felice.pdf', 188, 0, 'RO', 9, 1),
(14, 'Uno, nessuno e centomila', 'La storia raccontata nel romanzo Uno, nessuno e centomila inizia con un evento fortuito e apparentemente insignificante. Vitangelo Moscarda, il protagonista, scopre dalla moglie di avere il naso storto, un dettaglio di sé stesso che egli non aveva mai notato. Questa piccola coincidenza innesca un vortice di ragionamenti che lo portano, attraverso vari esperimenti, alla consapevolezza di non essere per gli altri come egli è per sé stesso. ', 1926, 'uno_nessuno_centomila.pdf', 163, 1, 'RO', 5, 2);

-- --------------------------------------------------------

--
-- Struttura della tabella `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Struttura della tabella `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Struttura della tabella `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struttura della tabella `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Struttura della tabella `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Struttura della tabella `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Struttura della tabella `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struttura della tabella `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Struttura della tabella `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struttura della tabella `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

-- --------------------------------------------------------

--
-- Struttura della tabella `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Struttura della tabella `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Struttura della tabella `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Struttura della tabella `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struttura della tabella `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Struttura della tabella `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struttura della tabella `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struttura della tabella `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Struttura della tabella `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

-- --------------------------------------------------------

--
-- Struttura della tabella `prestiti`
--

CREATE TABLE `prestiti` (
  `numero` int(11) NOT NULL,
  `dataP` date NOT NULL,
  `dataR` date NOT NULL,
  `flag` int(11) NOT NULL,
  `fNoDelete` int(11) NOT NULL DEFAULT 1,
  `LIBRO` int(11) NOT NULL,
  `UTENTE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `prestiti`
--

INSERT INTO `prestiti` (`numero`, `dataP`, `dataR`, `flag`, `fNoDelete`, `LIBRO`, `UTENTE`) VALUES
(62, '2020-06-02', '2020-07-02', 0, 1, 14, 2),
(63, '2020-06-02', '2020-07-02', 1, 1, 14, 7),
(64, '2020-07-03', '2020-08-02', 1, 1, 14, 8),
(65, '2020-06-03', '2020-07-03', 1, 1, 13, 2);

-- --------------------------------------------------------

--
-- Struttura della tabella `recensioni`
--

CREATE TABLE `recensioni` (
  `numero` int(11) NOT NULL,
  `testo` varchar(500) NOT NULL,
  `LIBRO` int(11) NOT NULL,
  `UTENTE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `recensioni`
--

INSERT INTO `recensioni` (`numero`, `testo`, `LIBRO`, `UTENTE`) VALUES
(1, 'Libro molto bello!', 4, 2),
(2, 'Molto interessante', 4, 8),
(3, 'Ciao', 9, 2);

-- --------------------------------------------------------

--
-- Struttura della tabella `tipologie`
--

CREATE TABLE `tipologie` (
  `LIBRO` int(11) NOT NULL,
  `GENERE` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `tipologie`
--

INSERT INTO `tipologie` (`LIBRO`, `GENERE`) VALUES
(3, 'GL'),
(4, 'DP'),
(4, 'FP'),
(4, 'FZ'),
(5, 'GL'),
(6, 'DT'),
(7, 'CM'),
(8, 'PG'),
(9, 'PG'),
(10, 'DT'),
(10, 'FV'),
(10, 'SO'),
(11, 'FZ'),
(11, 'SP'),
(12, 'DP'),
(12, 'FP'),
(12, 'SI'),
(13, 'GL'),
(14, 'DT'),
(14, 'PG');

-- --------------------------------------------------------

--
-- Struttura della tabella `utenti`
--

CREATE TABLE `utenti` (
  `numero` int(11) NOT NULL,
  `username` varchar(17) NOT NULL,
  `password` varchar(4000) NOT NULL,
  `email` varchar(25) NOT NULL,
  `nome` varchar(15) NOT NULL,
  `cognome` varchar(15) NOT NULL,
  `telefono` bigint(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `utenti`
--

INSERT INTO `utenti` (`numero`, `username`, `password`, `email`, `nome`, `cognome`, `telefono`) VALUES
(2, 'magih', 'f765b5e94a6fca35c8f2475a1c5672b0ce0ff16668ff089b9201655babccb748', 'magi@gmail.com', 'davin', 'buono', 333),
(7, 'davinino', 'f765b5e94a6fca35c8f2475a1c5672b0ce0ff16668ff089b9201655babccb748', 'davin@gmail.com', 'davin', 'magi', 3337976386),
(8, 'tartarughino', 'f765b5e94a6fca35c8f2475a1c5672b0ce0ff16668ff089b9201655babccb748', 'magi@gmail.com', 'piero', 'fattoretti', 333888),
(9, 'davinm01', 'f765b5e94a6fca35c8f2475a1c5672b0ce0ff16668ff089b9201655babccb748', 'magi@gmail.com', 'davin', 'magi', 333),
(10, 'davuccio', 'f765b5e94a6fca35c8f2475a1c5672b0ce0ff16668ff089b9201655babccb748', 'magi@gmail.com', 'davin', 'magi', 3332),
(11, 'davinm', 'f765b5e94a6fca35c8f2475a1c5672b0ce0ff16668ff089b9201655babccb748', 'dagi@gmail.com', 'davin', 'magi', 6443),
(12, 'magihn', 'f765b5e94a6fca35c8f2475a1c5672b0ce0ff16668ff089b9201655babccb748', 'davin@gmail.com', 'davin', 'magi', 1234),
(13, 'tartaruga', 'f765b5e94a6fca35c8f2475a1c5672b0ce0ff16668ff089b9201655babccb748', 'davin@gmail.com', 'davin', 'magi', 4556),
(14, 'turtle', 'f765b5e94a6fca35c8f2475a1c5672b0ce0ff16668ff089b9201655babccb748', 'davin@gmail.com', 'davin', 'magi', 2123);

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `autori`
--
ALTER TABLE `autori`
  ADD PRIMARY KEY (`numero`);

--
-- Indici per le tabelle `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`sigla`);

--
-- Indici per le tabelle `generi`
--
ALTER TABLE `generi`
  ADD PRIMARY KEY (`sigla`);

--
-- Indici per le tabelle `icone`
--
ALTER TABLE `icone`
  ADD PRIMARY KEY (`numero`),
  ADD KEY `libroo` (`LIBRO`);

--
-- Indici per le tabelle `immagini`
--
ALTER TABLE `immagini`
  ADD PRIMARY KEY (`numero`),
  ADD KEY `libro` (`LIBRO`);

--
-- Indici per le tabelle `libri`
--
ALTER TABLE `libri`
  ADD PRIMARY KEY (`codice`),
  ADD KEY `cat` (`CATEGORIA`),
  ADD KEY `aut` (`AUTORE`);

--
-- Indici per le tabelle `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indici per le tabelle `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indici per le tabelle `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indici per le tabelle `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indici per le tabelle `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indici per le tabelle `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indici per le tabelle `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indici per le tabelle `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indici per le tabelle `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indici per le tabelle `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indici per le tabelle `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indici per le tabelle `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indici per le tabelle `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indici per le tabelle `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indici per le tabelle `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indici per le tabelle `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indici per le tabelle `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indici per le tabelle `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- Indici per le tabelle `prestiti`
--
ALTER TABLE `prestiti`
  ADD PRIMARY KEY (`numero`),
  ADD KEY `lib` (`LIBRO`),
  ADD KEY `utentee` (`UTENTE`);

--
-- Indici per le tabelle `recensioni`
--
ALTER TABLE `recensioni`
  ADD PRIMARY KEY (`numero`),
  ADD KEY `bookk` (`LIBRO`),
  ADD KEY `userss` (`UTENTE`);

--
-- Indici per le tabelle `tipologie`
--
ALTER TABLE `tipologie`
  ADD PRIMARY KEY (`LIBRO`,`GENERE`),
  ADD KEY `gen` (`GENERE`);

--
-- Indici per le tabelle `utenti`
--
ALTER TABLE `utenti`
  ADD PRIMARY KEY (`numero`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `autori`
--
ALTER TABLE `autori`
  MODIFY `numero` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT per la tabella `icone`
--
ALTER TABLE `icone`
  MODIFY `numero` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT per la tabella `immagini`
--
ALTER TABLE `immagini`
  MODIFY `numero` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT per la tabella `libri`
--
ALTER TABLE `libri`
  MODIFY `codice` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT per la tabella `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `prestiti`
--
ALTER TABLE `prestiti`
  MODIFY `numero` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT per la tabella `recensioni`
--
ALTER TABLE `recensioni`
  MODIFY `numero` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT per la tabella `utenti`
--
ALTER TABLE `utenti`
  MODIFY `numero` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `icone`
--
ALTER TABLE `icone`
  ADD CONSTRAINT `libroo` FOREIGN KEY (`LIBRO`) REFERENCES `libri` (`codice`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `immagini`
--
ALTER TABLE `immagini`
  ADD CONSTRAINT `libro` FOREIGN KEY (`LIBRO`) REFERENCES `libri` (`codice`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `libri`
--
ALTER TABLE `libri`
  ADD CONSTRAINT `aut` FOREIGN KEY (`AUTORE`) REFERENCES `autori` (`numero`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `cat` FOREIGN KEY (`CATEGORIA`) REFERENCES `categorie` (`sigla`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Limiti per la tabella `prestiti`
--
ALTER TABLE `prestiti`
  ADD CONSTRAINT `lib` FOREIGN KEY (`LIBRO`) REFERENCES `libri` (`codice`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `utentee` FOREIGN KEY (`UTENTE`) REFERENCES `utenti` (`numero`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `recensioni`
--
ALTER TABLE `recensioni`
  ADD CONSTRAINT `bookk` FOREIGN KEY (`LIBRO`) REFERENCES `libri` (`codice`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `userss` FOREIGN KEY (`UTENTE`) REFERENCES `utenti` (`numero`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `tipologie`
--
ALTER TABLE `tipologie`
  ADD CONSTRAINT `gen` FOREIGN KEY (`GENERE`) REFERENCES `generi` (`sigla`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `libroFK` FOREIGN KEY (`LIBRO`) REFERENCES `libri` (`codice`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
