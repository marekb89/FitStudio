-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Hostiteľ: 127.0.0.1
-- Čas generovania: Št 16.Júl 2015, 14:40
-- Verzia serveru: 5.6.21
-- Verzia PHP: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Databáza: `db_fitstudio`
--

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `api_key`
--

CREATE TABLE IF NOT EXISTS `api_key` (
`id` int(11) NOT NULL,
  `key` varchar(40) NOT NULL,
  `level` int(2) NOT NULL,
  `ignore_limits` tinyint(1) NOT NULL DEFAULT '0',
  `is_private` tinyint(1) NOT NULL DEFAULT '0',
  `ip_addresses` text,
  `date_created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `api_log`
--

CREATE TABLE IF NOT EXISTS `api_log` (
`id` int(11) NOT NULL,
  `uri` varchar(255) NOT NULL,
  `method` varchar(6) NOT NULL,
  `params` text,
  `api_key` varchar(40) NOT NULL,
  `date_log` datetime DEFAULT NULL,
  `ip_address` varchar(45) NOT NULL,
  `authorized` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `article`
--

CREATE TABLE IF NOT EXISTS `article` (
`id_article` int(11) unsigned NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `author` varchar(55) DEFAULT NULL,
  `updater` varchar(55) DEFAULT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_off` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `logical_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `indexed` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `id_category` int(11) unsigned DEFAULT NULL,
  `comment_allow` char(1) DEFAULT '0',
  `comment_autovalid` char(1) DEFAULT '0',
  `comment_expire` datetime DEFAULT NULL,
  `flag` smallint(1) DEFAULT '0',
  `has_url` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `priority` smallint(1) unsigned NOT NULL DEFAULT '5'
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `article`
--

INSERT INTO `article` (`id_article`, `name`, `author`, `updater`, `created`, `publish_on`, `publish_off`, `updated`, `logical_date`, `indexed`, `id_category`, `comment_allow`, `comment_autovalid`, `comment_expire`, `flag`, `has_url`, `priority`) VALUES
(1, '404', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, '0', '0', NULL, 0, 1, 5),
(2, '401', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, '0', '0', NULL, 0, 1, 5),
(3, '403', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, '0', '0', NULL, 0, 1, 5),
(5, 'sl1', 'cangar.juraj@gmail.com', 'cangar.juraj@gmail.com', '2015-07-02 09:08:03', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-07-02 09:14:05', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(6, 'sl2', 'cangar.juraj@gmail.com', 'cangar.juraj@gmail.com', '2015-07-02 09:08:16', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-07-14 09:02:29', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(7, 'taebo', 'cangar.juraj@gmail.com', 'cangar.juraj@gmail.com', '2015-07-02 09:50:30', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-07-07 08:42:03', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(8, 'pilakalajoga', 'cangar.juraj@gmail.com', 'cangar.juraj@gmail.com', '2015-07-02 09:50:42', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-07-16 13:41:39', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(9, 'kick-box', 'cangar.juraj@gmail.com', 'cangar.juraj@gmail.com', '2015-07-02 09:52:21', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-07-16 13:41:57', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(10, 'iron-body', 'cangar.juraj@gmail.com', 'cangar.juraj@gmail.com', '2015-07-02 09:52:41', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-07-16 13:42:07', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(11, 'trampoliny', 'cangar.juraj@gmail.com', NULL, '2015-07-02 09:53:01', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-07-02 09:53:01', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(12, 'pole-dance', 'cangar.juraj@gmail.com', 'cangar.juraj@gmail.com', '2015-07-02 09:53:55', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-07-16 13:42:54', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(13, 'taebo-1', 'cangar.juraj@gmail.com', 'cangar.juraj@gmail.com', '2015-07-07 07:58:34', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-07-16 13:51:29', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(14, 'kick-box-1', 'cangar.juraj@gmail.com', 'cangar.juraj@gmail.com', '2015-07-07 08:23:25', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-07-16 09:43:18', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(15, 'fit-studio-sportov-klub', 'cangar.juraj@gmail.com', 'cangar.juraj@gmail.com', '2015-07-07 09:22:38', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-07-16 09:13:41', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(16, 'pondelok', 'cangar.juraj@gmail.com', 'cangar.juraj@gmail.com', '2015-07-07 10:01:56', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-07-16 10:33:50', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(17, 'utorok', 'cangar.juraj@gmail.com', 'cangar.juraj@gmail.com', '2015-07-07 11:00:30', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-07-16 10:38:32', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(18, 'streda', 'cangar.juraj@gmail.com', 'cangar.juraj@gmail.com', '2015-07-07 12:16:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-07-16 10:40:22', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(19, 'sl3', 'cangar.juraj@gmail.com', 'cangar.juraj@gmail.com', '2015-07-14 08:59:25', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-07-14 11:56:53', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(20, 'zajtrajsok', 'cangar.juraj@gmail.com', 'cangar.juraj@gmail.com', '2015-07-14 09:22:07', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-07-15 11:11:03', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(21, 'utorok-1', 'cangar.juraj@gmail.com', NULL, '2015-07-14 11:14:35', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-07-14 11:14:35', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(22, 'pilakalajoga-1', 'cangar.juraj@gmail.com', 'cangar.juraj@gmail.com', '2015-07-16 09:30:12', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-07-16 13:38:56', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(23, 'iron-body-1', 'cangar.juraj@gmail.com', 'cangar.juraj@gmail.com', '2015-07-16 09:44:20', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-07-16 10:22:32', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(24, NULL, NULL, NULL, '2015-07-16 10:30:54', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-07-16 10:30:54', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(25, NULL, NULL, NULL, '2015-07-16 10:31:12', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-07-16 10:31:12', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(26, 'stvrtok', 'cangar.juraj@gmail.com', 'cangar.juraj@gmail.com', '2015-07-16 10:39:04', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-07-16 10:42:26', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(27, 'piatok', 'cangar.juraj@gmail.com', 'cangar.juraj@gmail.com', '2015-07-16 10:39:14', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-07-16 10:43:49', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(28, 'nedea', 'cangar.juraj@gmail.com', 'cangar.juraj@gmail.com', '2015-07-16 10:44:06', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-07-16 10:45:00', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(29, NULL, NULL, NULL, '2015-07-16 11:42:39', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-07-16 11:42:39', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(30, 'happy-fit-studio', 'cangar.juraj@gmail.com', NULL, '2015-07-16 13:00:08', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-07-16 13:00:08', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(31, NULL, NULL, NULL, '2015-07-16 13:38:58', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-07-16 13:38:58', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(32, 'trampoliny-1', 'cangar.juraj@gmail.com', 'cangar.juraj@gmail.com', '2015-07-16 13:42:17', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-07-16 13:56:22', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(33, 'pole-dance-1', 'cangar.juraj@gmail.com', NULL, '2015-07-16 13:42:28', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-07-16 13:42:28', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `article_category`
--

CREATE TABLE IF NOT EXISTS `article_category` (
  `id_article` int(11) unsigned NOT NULL,
  `id_category` int(11) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `article_comment`
--

CREATE TABLE IF NOT EXISTS `article_comment` (
`id_article_comment` int(11) unsigned NOT NULL,
  `id_article` int(11) unsigned NOT NULL DEFAULT '0',
  `author` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `site` varchar(255) DEFAULT NULL,
  `content` text,
  `ip` varchar(40) DEFAULT NULL,
  `status` tinyint(3) unsigned DEFAULT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `admin` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'If comment comes from admin, set to 1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `article_lang`
--

CREATE TABLE IF NOT EXISTS `article_lang` (
  `id_article` int(11) unsigned NOT NULL DEFAULT '0',
  `lang` varchar(8) NOT NULL DEFAULT '',
  `url` varchar(100) NOT NULL DEFAULT '',
  `title` varchar(255) DEFAULT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `content` longtext,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `online` tinyint(1) unsigned NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `article_lang`
--

INSERT INTO `article_lang` (`id_article`, `lang`, `url`, `title`, `subtitle`, `meta_title`, `content`, `meta_keywords`, `meta_description`, `online`) VALUES
(1, 'sk', '404', '404', NULL, NULL, '<p>The content you asked for was not found !</p>', NULL, NULL, 1),
(2, 'sk', '401', '401', 'Please login', NULL, '<p>Please login to see this content.</p>', NULL, NULL, 1),
(3, 'sk', '403', '403', 'Forbidden', NULL, '<p>This content is forbidden.</p>', NULL, NULL, 1),
(5, 'sk', 'sl1', 'sl1', '', '', '', '', '', 1),
(6, 'sk', 'sl2', 'sl2', '', '', '', '', '', 1),
(7, 'sk', 'taebo', 'Taebo', '', '', '', '', '', 1),
(8, 'sk', 'pilakalajoga', 'Pilakalajoga', 's Betkou Pástorovou', '', '', '', '', 1),
(9, 'sk', 'kick-box', 'Kick Box', '', '', '', '', '', 1),
(10, 'sk', 'iron-body', 'Iron Body', '', '', '', '', '', 1),
(11, 'sk', 'trampoliny', 'Trampolíny', '', '', '', NULL, NULL, 1),
(12, 'sk', 'pole-dance', 'Pole dance', '', '', '', '', '', 1),
(13, 'sk', 'taebo', 'Taebo', 'Lucia Gallová', '', '<p><b>Taebo</b> je športový systém vychádzajúci z prirodzenosti tela a pohybov. Používa pohyby odlišných druhov bojových športov a umení a v prvom rade je to skupinové cvičenie s rýchlou hudbou. <br /><br /><b>Je určený pre všetkých (od 13 rokov), bez rozdielu pohlavia, kondície, či pohybových schopností. Vďaka dokonale prepracovaným Taebo technikám zabudnete na bolesti chrbtice, kolien a vôbec kĺbov. Práve naopak, v starobe sa Taebo poďakujete.</b> <br /><br />Taebo jednoduché, pretože nepremýšľate nad technikami a ich poradím, dokonale sa uvoľníte, nabijete sa pozitívnou energiou, zmeníte svoj postoj k stresu a k problémom každodenného života. <br /><br />Je to jednoducho potenie sa, uberanie na váhe, posilňovanie, fitnes, vôľa, výdrž, možnosť zistiť kam až siahajú vaše hranice, zábava … a predovšetkým zlepšenie sebavedomia. <br /><br /><b>Get fit – lose weight – have fun – be strong</b> (motto)</p>', '', '', 1),
(14, 'sk', 'kick-box', 'Kick Box', 'Boris Milko - Boxing, Kickboxing, K1 ', '', '<p><b>BM Boxing Club</b> organizuje pre svojich členov Mix tréningy v pravidelných časoch pre všetky vekové a výkonnostné skupiny. Univerzálne a komplexné tréningy zamerané na rozvoj pohybových schopností a zručností. <br /><br />Prídte k nám a pod odborným vedením zlepšite svoje zdravie, naberte sebavedomie, naučte sa brániť a v prípade záujmu sa venujte tomuto náročnému športu súťažne. <br /><br />Na tréningoch je vyžadovaná disciplína v súlade s odkazom starých východoázijských bojových systémov ktoré sa venujú rozvoju nie len tela , ale aj ovládaniu svojho ega a osobnosti. <br /><br /><b>Dlhoročná prax a skúsenosti. Navštívte nás.</b><br />V prípade akýchkoľvek otázok nás prosím kontaktujte. <br /><br /><b>E-mail:</b> milko.boris@gmail.com<br /><b>Telefón:</b> 0944 931 856</p>', '', '', 1),
(15, 'sk', 'fit-studio-sportov-klub', 'Fit Štúdio športový klub', ' Tel: 0905 288 027', '', '<p>Kontakt: 0905 288 027</p>\n<p>Šafárikova 106, 048 01 Rožňava</p>\n<p>www.fitstudiorv.sk</p>', '', '', 1),
(16, 'sk', 'pondelok', 'Pondelok', '', '', '', '', '', 1),
(17, 'sk', 'utorok', 'Utorok', '', '', '', '', '', 1),
(18, 'sk', 'streda', 'Streda', '', '', '', '', '', 1),
(19, 'sk', 'sl3', 'sl3', '', '', '', '', '', 1),
(20, 'sk', 'zajtrajsok', 'Novinky', '', '', '<p>• Pripravujeme hodiny Pole dance Level 1 pre zaciatočníčky<br /> pre viac info: 0905 288 027 <br /><br />• Možnosť prenájmu priestorov Fit štúdia na športové účely. <br /><br />• Sledujte aktuálne info z Fit štúdia na FB<br /><b> Fun page:</b> <a href="https://www.facebook.com/fitstudiorv" target="_blank" class="copy_link">Fit štúdio Rožňava</a><br /><b> Skupina:</b> <a href="https://www.facebook.com/groups/505029556262221" target="_blank" class="copy_link">Trampolíny vo Fit štúdiu</a></p>', '', '', 1),
(21, 'sk', 'utorok', 'Utorok', '', '', '<p>Ideme na to</p>', NULL, NULL, 1),
(22, 'sk', 'pilakalajoga', 'Pilakalajoga', 's Betkou Pástorovou', '', '', '', '', 1),
(23, 'sk', 'iron-body', 'Iron Body', 's Borisom Milkom ', '', '<p><b>Iron Body</b> je v súčastnosti populárna, moderná metóda cvičenia, ktorá sa venuje rozvoju celého tela funkčnými viac kĺbovými cvikmi ktoré sa vykonávajú vysokou intenzitou v časových intervaloch prácou s vlastným telom ako aj náradím. <br /><br />Cviky sú vykonávané v takom poradí aby precvičením dochádzalo k čo najväčšiemu prúdeniu krvi počas cvičenia po celom tele a tým došlo k zlepšeniu vitálnych funkcií a kardiovaskulárnych systémov. <br /><br />Cieľom tréningu je formovanie postavy, posilnenie celého tela atletickými cvikmi, spaľovanie prebytočných kalórií, dosiahnutie psychickej pohody a celkové zlepšenie zdravia. <br /><br />Už z názvu tejto formy cvičenia vyplíva že sa jedná o náročný tréning kde si cvičenec často siahne na dno svojich síl. <br /><br />Nechajte sa strhnúť vytvorenou atmosférou počas cvičenia, vzájomným povzbudzovaním sa cvičiacich a posunte svoje hranice výkonu každým tréningom o krok ďalej. <br /><br /><b>Navštívte nás.</b><br />V prípade akýchkoľvek otázok ohľadom tréningu nás prosím kedykoľvek kontaktujte radi Vám poradíme. <br /><br /><b>E-mail:</b> milko.boris@gmail.com<br /><b>Telefón:</b> 0944 931 856</p>', '', '', 1),
(26, 'sk', 'stvrtok', 'Štvrtok', '', '', '', '', '', 1),
(27, 'sk', 'piatok', 'Piatok', '', '', '', '', '', 1),
(28, 'sk', 'nedea', 'Nedeľa', '', '', '', '', '', 1),
(30, 'sk', 'happy-fit-studio', 'Happy fit studio', '', '', '', NULL, NULL, 1),
(32, 'sk', 'trampoliny', 'Trampolíny', 's Tímeou Takáčovou, Maťou Török, Frankou Bezegovou a Dominikou Potočnou', '', '', '', '', 1),
(33, 'sk', 'pole-dance', 'Pole dance', '', '', '', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `article_media`
--

CREATE TABLE IF NOT EXISTS `article_media` (
  `id_article` int(11) unsigned NOT NULL DEFAULT '0',
  `id_media` int(11) unsigned NOT NULL DEFAULT '0',
  `online` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `ordering` int(11) unsigned DEFAULT '9999',
  `url` varchar(255) DEFAULT NULL,
  `lang_display` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `article_media`
--

INSERT INTO `article_media` (`id_article`, `id_media`, `online`, `ordering`, `url`, `lang_display`) VALUES
(5, 9, 1, 1, NULL, NULL),
(6, 10, 1, 1, NULL, NULL),
(7, 2, 1, 1, NULL, NULL),
(8, 1, 1, 1, NULL, NULL),
(9, 2, 1, 1, NULL, NULL),
(10, 1, 1, 1, NULL, NULL),
(11, 1, 1, 1, NULL, NULL),
(12, 2, 1, 1, NULL, NULL),
(13, 3, 1, 1, NULL, NULL),
(14, 12, 1, 1, NULL, NULL),
(14, 24, 1, 2, NULL, NULL),
(14, 25, 1, 3, NULL, NULL),
(14, 26, 1, 4, NULL, NULL),
(14, 27, 1, 5, NULL, NULL),
(14, 28, 1, 6, NULL, NULL),
(14, 29, 1, 7, NULL, NULL),
(14, 30, 1, 8, NULL, NULL),
(14, 31, 1, 9, NULL, NULL),
(14, 32, 1, 10, NULL, NULL),
(14, 33, 1, 11, NULL, NULL),
(14, 34, 1, 12, NULL, NULL),
(19, 11, 1, 3, NULL, NULL),
(23, 36, 1, 1, NULL, NULL),
(23, 37, 1, 2, NULL, NULL),
(23, 38, 1, 3, NULL, NULL),
(23, 39, 1, 4, NULL, NULL),
(23, 40, 1, 5, NULL, NULL),
(23, 41, 1, 6, NULL, NULL),
(23, 42, 1, 7, NULL, NULL),
(23, 43, 1, 8, NULL, NULL),
(23, 44, 1, 9, NULL, NULL),
(23, 45, 1, 10, NULL, NULL),
(23, 46, 1, 11, NULL, NULL),
(23, 47, 1, 12, NULL, NULL),
(23, 48, 1, 13, NULL, NULL),
(23, 49, 1, 14, NULL, NULL),
(23, 50, 1, 15, NULL, NULL),
(23, 51, 1, 16, NULL, NULL),
(23, 52, 1, 17, NULL, NULL),
(23, 53, 1, 18, NULL, NULL),
(23, 54, 1, 19, NULL, NULL),
(23, 55, 1, 20, NULL, NULL),
(30, 3, 1, 1, NULL, NULL),
(32, 56, 1, 1, NULL, NULL),
(32, 57, 1, 2, NULL, NULL),
(32, 58, 1, 3, NULL, NULL),
(32, 59, 1, 4, NULL, NULL),
(32, 60, 1, 5, NULL, NULL),
(32, 61, 1, 6, NULL, NULL),
(32, 62, 1, 7, NULL, NULL),
(32, 63, 1, 8, NULL, NULL);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `article_tag`
--

CREATE TABLE IF NOT EXISTS `article_tag` (
  `id_article` int(11) unsigned NOT NULL,
  `id_tag` int(11) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `article_type`
--

CREATE TABLE IF NOT EXISTS `article_type` (
`id_type` int(11) unsigned NOT NULL,
  `type` varchar(50) NOT NULL,
  `ordering` int(11) DEFAULT '0',
  `description` text,
  `type_flag` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `article_type`
--

INSERT INTO `article_type` (`id_type`, `type`, `ordering`, `description`, `type_flag`) VALUES
(1, 'block', 0, '', 5);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `captcha`
--

CREATE TABLE IF NOT EXISTS `captcha` (
`id_captcha` int(11) unsigned NOT NULL,
  `question` varchar(255) NOT NULL DEFAULT '',
  `answer` varchar(255) NOT NULL DEFAULT '',
  `lang` varchar(8) NOT NULL DEFAULT '',
  `hash` varchar(32) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `category`
--

CREATE TABLE IF NOT EXISTS `category` (
`id_category` int(11) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  `ordering` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `category_lang`
--

CREATE TABLE IF NOT EXISTS `category_lang` (
  `id_category` int(11) unsigned NOT NULL DEFAULT '0',
  `lang` varchar(8) NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `subtitle` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `element`
--

CREATE TABLE IF NOT EXISTS `element` (
`id_element` int(11) unsigned NOT NULL,
  `id_element_definition` int(11) unsigned NOT NULL,
  `parent` varchar(50) NOT NULL,
  `id_parent` int(11) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `element`
--

INSERT INTO `element` (`id_element`, `id_element_definition`, `parent`, `id_parent`, `ordering`) VALUES
(6, 6, 'article', 16, 3),
(7, 6, 'article', 17, 3),
(8, 6, 'article', 17, 2),
(9, 6, 'article', 18, 4),
(10, 6, 'article', 18, 3),
(12, 6, 'article', 16, 2),
(14, 6, 'article', 16, 4),
(15, 6, 'article', 16, 1),
(16, 6, 'article', 17, 1),
(17, 6, 'article', 17, 4),
(18, 6, 'article', 18, 2),
(19, 6, 'article', 18, 1),
(20, 6, 'article', 26, 1),
(21, 6, 'article', 26, 3),
(22, 6, 'article', 26, 2),
(23, 6, 'article', 26, 4),
(24, 6, 'article', 27, 1),
(25, 6, 'article', 27, 2),
(26, 6, 'article', 27, 3),
(27, 6, 'article', 27, 4),
(28, 6, 'article', 28, 2),
(29, 6, 'article', 28, 1),
(30, 6, 'article', 28, 3),
(31, 6, 'article', 28, 4);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `element_definition`
--

CREATE TABLE IF NOT EXISTS `element_definition` (
`id_element_definition` int(11) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text,
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `element_definition`
--

INSERT INTO `element_definition` (`id_element_definition`, `name`, `description`, `ordering`) VALUES
(6, 'sporty', '', 0);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `element_definition_lang`
--

CREATE TABLE IF NOT EXISTS `element_definition_lang` (
  `id_element_definition` int(11) unsigned NOT NULL,
  `lang` varchar(8) NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `element_definition_lang`
--

INSERT INTO `element_definition_lang` (`id_element_definition`, `lang`, `title`) VALUES
(6, 'sk', 'Sporty');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `event_log`
--

CREATE TABLE IF NOT EXISTS `event_log` (
`id` int(11) unsigned NOT NULL,
  `status` varchar(50) DEFAULT NULL,
  `message` text,
  `id_user` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `seen` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `extend_field`
--

CREATE TABLE IF NOT EXISTS `extend_field` (
`id_extend_field` int(11) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` int(3) unsigned NOT NULL,
  `description` varchar(255) DEFAULT '',
  `parent` varchar(50) NOT NULL,
  `id_parent` int(11) unsigned DEFAULT NULL,
  `ordering` int(11) DEFAULT '0',
  `translated` char(1) DEFAULT '0',
  `value` text,
  `default_value` varchar(255) DEFAULT NULL,
  `global` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `main` smallint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `extend_field`
--

INSERT INTO `extend_field` (`id_extend_field`, `name`, `type`, `description`, `parent`, `id_parent`, `ordering`, `translated`, `value`, `default_value`, `global`, `main`) VALUES
(7, 'nazov-treningu', 6, '', 'element', 0, 0, '0', '1:Taebo\n2:Kick Box', '2', 0, 0),
(12, 'sport', 5, 'sporty', 'element', 6, 0, '0', '1:\n2:Taebo\n3:Iron Body\n4:Trampolíny\n5:Kick Box\n6:Fit and Body', '1', 0, 0),
(13, 'cas-od', 1, 'cas-od', 'element', 6, 0, '0', '', '', 0, 0),
(14, 'cas-do', 1, 'cas-do', 'element', 6, 0, '0', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `extend_fields`
--

CREATE TABLE IF NOT EXISTS `extend_fields` (
`id_extend_fields` int(11) unsigned NOT NULL,
  `id_extend_field` int(11) unsigned NOT NULL,
  `parent` varchar(50) NOT NULL DEFAULT '',
  `id_parent` int(11) unsigned NOT NULL,
  `lang` varchar(8) NOT NULL DEFAULT '',
  `content` text,
  `ordering` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `extend_fields`
--

INSERT INTO `extend_fields` (`id_extend_fields`, `id_extend_field`, `parent`, `id_parent`, `lang`, `content`, `ordering`) VALUES
(16, 12, 'element', 6, '', '4', 0),
(17, 13, 'element', 6, '', '18:00', 0),
(18, 14, 'element', 6, '', '19:00', 0),
(19, 12, 'element', 7, '', '5', 0),
(20, 13, 'element', 7, '', '17:45', 0),
(21, 14, 'element', 7, '', '19:00', 0),
(22, 12, 'element', 8, '', '2', 0),
(23, 13, 'element', 8, '', '16:30', 0),
(24, 14, 'element', 8, '', '17:30', 0),
(25, 12, 'element', 9, '', '3', 0),
(26, 13, 'element', 9, '', '19:15', 0),
(27, 14, 'element', 9, '', '20:15', 0),
(28, 12, 'element', 10, '', '4', 0),
(29, 13, 'element', 10, '', '18:00', 0),
(30, 14, 'element', 10, '', '19:00', 0),
(34, 12, 'element', 12, '', '4', 0),
(35, 13, 'element', 12, '', '16:45', 0),
(36, 14, 'element', 12, '', '17:45', 0),
(40, 12, 'element', 14, '', '3', 0),
(41, 13, 'element', 14, '', '19:15', 0),
(42, 14, 'element', 14, '', '20:15', 0),
(43, 12, 'element', 15, '', '1', 0),
(44, 13, 'element', 15, '', '', 0),
(45, 14, 'element', 15, '', '', 0),
(46, 12, 'element', 16, '', '1', 0),
(47, 13, 'element', 16, '', '', 0),
(48, 14, 'element', 16, '', '', 0),
(49, 12, 'element', 17, '', '6', 0),
(50, 13, 'element', 17, '', '19:15', 0),
(51, 14, 'element', 17, '', '20:15', 0),
(52, 12, 'element', 18, '', '1', 0),
(53, 13, 'element', 18, '', '', 0),
(54, 14, 'element', 18, '', '', 0),
(55, 12, 'element', 19, '', '1', 0),
(56, 13, 'element', 19, '', '', 0),
(57, 14, 'element', 19, '', '', 0),
(58, 12, 'element', 20, '', '1', 0),
(59, 13, 'element', 20, '', '', 0),
(60, 14, 'element', 20, '', '', 0),
(61, 12, 'element', 21, '', '6', 0),
(62, 13, 'element', 21, '', '18:00', 0),
(63, 14, 'element', 21, '', '19:00', 0),
(64, 12, 'element', 22, '', '5', 0),
(65, 13, 'element', 22, '', '16:30', 0),
(66, 14, 'element', 22, '', '17:45', 0),
(67, 12, 'element', 23, '', '4', 0),
(68, 13, 'element', 23, '', '19:15', 0),
(69, 14, 'element', 23, '', '20:15', 0),
(70, 12, 'element', 24, '', '1', 0),
(71, 13, 'element', 24, '', '', 0),
(72, 14, 'element', 24, '', '', 0),
(73, 12, 'element', 25, '', '4', 0),
(74, 13, 'element', 25, '', '16:45', 0),
(75, 14, 'element', 25, '', '17:45', 0),
(76, 12, 'element', 26, '', '4', 0),
(77, 13, 'element', 26, '', '18:00', 0),
(78, 14, 'element', 26, '', '19:00', 0),
(79, 12, 'element', 27, '', '3', 0),
(80, 13, 'element', 27, '', '19:15', 0),
(81, 14, 'element', 27, '', '20:15', 0),
(82, 12, 'element', 28, '', '1', 0),
(83, 13, 'element', 28, '', '', 0),
(84, 14, 'element', 28, '', '', 0),
(85, 12, 'element', 29, '', '1', 0),
(86, 13, 'element', 29, '', '', 0),
(87, 14, 'element', 29, '', '', 0),
(88, 12, 'element', 30, '', '4', 0),
(89, 13, 'element', 30, '', '18:00', 0),
(90, 14, 'element', 30, '', '19:00', 0),
(91, 12, 'element', 31, '', '1', 0),
(92, 13, 'element', 31, '', '', 0),
(93, 14, 'element', 31, '', '', 0);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `extend_field_lang`
--

CREATE TABLE IF NOT EXISTS `extend_field_lang` (
  `id_extend_field` int(11) unsigned NOT NULL,
  `lang` varchar(8) NOT NULL,
  `label` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `extend_field_lang`
--

INSERT INTO `extend_field_lang` (`id_extend_field`, `lang`, `label`) VALUES
(7, 'sk', ''),
(12, 'sk', 'Sport'),
(13, 'sk', 'Cas od'),
(14, 'sk', 'Cas do');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `extend_field_type`
--

CREATE TABLE IF NOT EXISTS `extend_field_type` (
`id_extend_field_type` int(11) unsigned NOT NULL,
  `type_name` varchar(50) NOT NULL DEFAULT '',
  `default_values` smallint(1) NOT NULL DEFAULT '0',
  `values` smallint(1) NOT NULL DEFAULT '0',
  `translated` smallint(1) NOT NULL DEFAULT '0',
  `active` smallint(6) NOT NULL DEFAULT '1',
  `display` smallint(6) NOT NULL DEFAULT '1',
  `validate` varchar(50) DEFAULT NULL,
  `html_element` varchar(20) NOT NULL DEFAULT 'input',
  `html_element_type` varchar(20) NOT NULL DEFAULT 'text',
  `html_element_class` varchar(100) DEFAULT NULL,
  `html_element_pattern` varchar(200) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `extend_field_type`
--

INSERT INTO `extend_field_type` (`id_extend_field_type`, `type_name`, `default_values`, `values`, `translated`, `active`, `display`, `validate`, `html_element`, `html_element_type`, `html_element_class`, `html_element_pattern`) VALUES
(1, 'Input', 1, 0, 1, 1, 1, NULL, 'input', 'text', 'w95p inputtext', NULL),
(2, 'Textarea', 1, 0, 1, 1, 1, NULL, 'textarea', 'textarea', 'w95p autogrow inputtext', NULL),
(3, 'Textarea + Editor', 1, 0, 1, 1, 1, NULL, 'textarea', 'editor', 'w95p smallTinyTextarea inputtext', NULL),
(4, 'Checkbox', 1, 1, 0, 1, 1, NULL, 'input', 'checkbox', 'checkbox', NULL),
(5, 'Radio', 1, 1, 0, 1, 1, NULL, 'input', 'radio', 'radio', NULL),
(6, 'Select', 1, 1, 0, 1, 1, NULL, 'input', 'select', 'select inputtext', NULL),
(7, 'Date Time', 0, 0, 0, 1, 1, NULL, 'input', 'date', 'date w120 inputtext', NULL),
(8, 'Medias', 0, 0, 1, 1, 1, NULL, 'div', 'media', NULL, NULL),
(100, 'Number', 1, 0, 0, 1, 1, 'numeric', 'input', 'number', 'w120 inputtext', NULL),
(110, 'Email', 0, 0, 0, 1, 1, 'email', 'input', 'email', 'w95p inputtext', NULL),
(120, 'Phone', 0, 0, 0, 1, 1, 'digits', 'input', 'tel', 'w140 inputtext', '^((\\+\\d{1,3}(-| )?\\(?\\d\\)?(-| )?\\d{1,5})|(\\(?\\d{2,6}\\)?))(-| )?(\\d{3,4})(-| )?(\\d{4})(( x| ext)\\d{1,5}){0,1}$'),
(130, 'Internal Link', 0, 0, 1, 1, 1, NULL, 'div', 'link', 'droppable', NULL);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ion_sessions`
--

CREATE TABLE IF NOT EXISTS `ion_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(16) NOT NULL DEFAULT '0',
  `user_agent` varchar(50) DEFAULT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `item`
--

CREATE TABLE IF NOT EXISTS `item` (
`id_item` int(11) unsigned NOT NULL,
  `id_item_definition` int(10) unsigned NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` text,
  `ordering` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Item instances';

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `items`
--

CREATE TABLE IF NOT EXISTS `items` (
  `id_item` int(11) unsigned NOT NULL,
  `parent` varchar(50) NOT NULL DEFAULT '',
  `id_parent` int(11) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) unsigned NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `item_definition`
--

CREATE TABLE IF NOT EXISTS `item_definition` (
`id_item_definition` int(11) unsigned NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Items definition table';

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `item_definition_lang`
--

CREATE TABLE IF NOT EXISTS `item_definition_lang` (
  `id_item_definition` int(11) unsigned NOT NULL,
  `lang` varchar(8) NOT NULL DEFAULT '',
  `title_definition` varchar(50) DEFAULT NULL,
  `title_item` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `item_lang`
--

CREATE TABLE IF NOT EXISTS `item_lang` (
  `id_item` int(11) unsigned NOT NULL,
  `lang` varchar(8) NOT NULL DEFAULT '',
  `title` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `lang`
--

CREATE TABLE IF NOT EXISTS `lang` (
  `lang` varchar(8) NOT NULL DEFAULT '',
  `name` varchar(40) DEFAULT NULL,
  `online` char(1) DEFAULT '0',
  `def` char(1) DEFAULT '0',
  `ordering` int(11) DEFAULT NULL,
  `direction` smallint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `lang`
--

INSERT INTO `lang` (`lang`, `name`, `online`, `def`, `ordering`, `direction`) VALUES
('sk', 'Slovak', '1', '1', 1, 1);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `login_tracker`
--

CREATE TABLE IF NOT EXISTS `login_tracker` (
  `ip_address` varchar(32) NOT NULL,
  `first_time` int(11) unsigned NOT NULL,
  `failures` tinyint(2) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `login_tracker`
--

INSERT INTO `login_tracker` (`ip_address`, `first_time`, `failures`) VALUES
('0.0.0.0', 1435763937, 2);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `media`
--

CREATE TABLE IF NOT EXISTS `media` (
`id_media` int(11) unsigned NOT NULL,
  `type` varchar(10) NOT NULL DEFAULT '',
  `file_name` varchar(255) NOT NULL DEFAULT '' COMMENT 'file_name',
  `path` varchar(500) NOT NULL COMMENT 'Complete path to the medium, including media file name, excluding host name',
  `base_path` varchar(500) NOT NULL COMMENT 'medium folder base path, excluding host name',
  `copyright` varchar(128) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Medium date',
  `link` varchar(255) DEFAULT NULL COMMENT 'Link to a resource, attached to this medium',
  `square_crop` enum('tl','m','br') NOT NULL DEFAULT 'm'
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `media`
--

INSERT INTO `media` (`id_media`, `type`, `file_name`, `path`, `base_path`, `copyright`, `provider`, `date`, `link`, `square_crop`) VALUES
(1, 'picture', 'sl1.jpg', 'files/Slideshow/sl1.jpg', 'files/Slideshow/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(2, 'picture', 'sl2.jpg', 'files/Slideshow/sl2.jpg', 'files/Slideshow/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(3, 'video', 'huFqdsOIikM', 'http://www.youtube.com/embed/huFqdsOIikM', 'http://www.youtube.com/embed/', NULL, 'youtube', '0000-00-00 00:00:00', NULL, 'm'),
(4, 'picture', 'sl3.1.png', 'files/Slideshow/sl3.1.png', 'files/Slideshow/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(5, 'picture', 'sl4.1.png', 'files/Slideshow/sl4.1.png', 'files/Slideshow/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(6, 'picture', 'sl5.png', 'files/Slideshow/sl5.png', 'files/Slideshow/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(7, 'picture', 'sl6.png', 'files/Slideshow/sl6.png', 'files/Slideshow/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(8, 'picture', 'sl7.png', 'files/Slideshow/sl7.png', 'files/Slideshow/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(9, 'picture', 'slider.png', 'files/Slideshow/slider.png', 'files/Slideshow/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(10, 'picture', 'slider1.png', 'files/Slideshow/slider1.png', 'files/Slideshow/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(11, 'picture', 'slider2.png', 'files/Slideshow/slider2.png', 'files/Slideshow/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(12, 'picture', '1_1.jpg', 'files/Kick Box/1_1.jpg', 'files/Kick Box/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(13, 'picture', '2s_1.jpg', 'files/Kick Box/2s_1.jpg', 'files/Kick Box/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(14, 'picture', '3s_1.jpg', 'files/Kick Box/3s_1.jpg', 'files/Kick Box/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(15, 'picture', '4s_1.jpg', 'files/Kick Box/4s_1.jpg', 'files/Kick Box/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(16, 'picture', '5s_1.jpg', 'files/Kick Box/5s_1.jpg', 'files/Kick Box/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(17, 'picture', '6s_1.jpg', 'files/Kick Box/6s_1.jpg', 'files/Kick Box/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(18, 'picture', '7s_1.jpg', 'files/Kick Box/7s_1.jpg', 'files/Kick Box/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(19, 'picture', '8s_1.jpg', 'files/Kick Box/8s_1.jpg', 'files/Kick Box/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(20, 'picture', '9s_1.jpg', 'files/Kick Box/9s_1.jpg', 'files/Kick Box/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(21, 'picture', '10s_1.jpg', 'files/Kick Box/10s_1.jpg', 'files/Kick Box/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(22, 'picture', '11s_1.jpg', 'files/Kick Box/11s_1.jpg', 'files/Kick Box/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(23, 'picture', '12s_1.jpg', 'files/Kick Box/12s_1.jpg', 'files/Kick Box/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(24, 'picture', '2_1.jpg', 'files/Kick Box/2_1.jpg', 'files/Kick Box/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(25, 'picture', '3_1.jpg', 'files/Kick Box/3_1.jpg', 'files/Kick Box/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(26, 'picture', '4_1.jpg', 'files/Kick Box/4_1.jpg', 'files/Kick Box/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(27, 'picture', '5_1.jpg', 'files/Kick Box/5_1.jpg', 'files/Kick Box/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(28, 'picture', '6_1.jpg', 'files/Kick Box/6_1.jpg', 'files/Kick Box/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(29, 'picture', '7_1.jpg', 'files/Kick Box/7_1.jpg', 'files/Kick Box/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(30, 'picture', '8_1.jpg', 'files/Kick Box/8_1.jpg', 'files/Kick Box/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(31, 'picture', '9_1.jpg', 'files/Kick Box/9_1.jpg', 'files/Kick Box/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(32, 'picture', '10_1.jpg', 'files/Kick Box/10_1.jpg', 'files/Kick Box/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(33, 'picture', '11_1.jpg', 'files/Kick Box/11_1.jpg', 'files/Kick Box/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(34, 'picture', '12_1.jpg', 'files/Kick Box/12_1.jpg', 'files/Kick Box/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(35, 'file', 'MuPg9LBhVKs', 'https://youtu.be/MuPg9LBhVKs', 'https://youtu.be/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(36, 'video', 'MuPg9LBhVKs', 'http://www.youtube.com/embed/MuPg9LBhVKs', 'http://www.youtube.com/embed/', NULL, 'youtube', '0000-00-00 00:00:00', NULL, 'm'),
(37, 'picture', '1_3.jpg', 'files/Iron Body/1_3.jpg', 'files/Iron Body/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(38, 'picture', '2_1.jpg', 'files/Iron Body/2_1.jpg', 'files/Iron Body/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(39, 'picture', '3_1.jpg', 'files/Iron Body/3_1.jpg', 'files/Iron Body/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(40, 'picture', '4_1.jpg', 'files/Iron Body/4_1.jpg', 'files/Iron Body/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(41, 'picture', '8_1.jpg', 'files/Iron Body/8_1.jpg', 'files/Iron Body/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(42, 'picture', '7_1.jpg', 'files/Iron Body/7_1.jpg', 'files/Iron Body/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(43, 'picture', '6_3.jpg', 'files/Iron Body/6_3.jpg', 'files/Iron Body/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(44, 'picture', '5_1.jpg', 'files/Iron Body/5_1.jpg', 'files/Iron Body/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(45, 'picture', '9_1.jpg', 'files/Iron Body/9_1.jpg', 'files/Iron Body/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(46, 'picture', '11_1.jpg', 'files/Iron Body/11_1.jpg', 'files/Iron Body/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(47, 'picture', '12_1.jpg', 'files/Iron Body/12_1.jpg', 'files/Iron Body/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(48, 'picture', '14_1.jpg', 'files/Iron Body/14_1.jpg', 'files/Iron Body/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(49, 'picture', '20_1.jpg', 'files/Iron Body/20_1.jpg', 'files/Iron Body/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(50, 'picture', '18_1.jpg', 'files/Iron Body/18_1.jpg', 'files/Iron Body/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(51, 'picture', '17_1.jpg', 'files/Iron Body/17_1.jpg', 'files/Iron Body/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(52, 'picture', '21_1.jpg', 'files/Iron Body/21_1.jpg', 'files/Iron Body/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(53, 'picture', '24_1.jpg', 'files/Iron Body/24_1.jpg', 'files/Iron Body/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(54, 'picture', '27_1.jpg', 'files/Iron Body/27_1.jpg', 'files/Iron Body/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(55, 'picture', '31_1.jpg', 'files/Iron Body/31_1.jpg', 'files/Iron Body/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(56, 'picture', '1_1.jpg', 'files/Trampoliny/1_1.jpg', 'files/Trampoliny/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(57, 'picture', '2_1.jpg', 'files/Trampoliny/2_1.jpg', 'files/Trampoliny/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(58, 'picture', '3_1.jpg', 'files/Trampoliny/3_1.jpg', 'files/Trampoliny/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(59, 'picture', '4_1.jpg', 'files/Trampoliny/4_1.jpg', 'files/Trampoliny/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(60, 'picture', '7_3.jpg', 'files/Trampoliny/7_3.jpg', 'files/Trampoliny/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(61, 'picture', '8_1.jpg', 'files/Trampoliny/8_1.jpg', 'files/Trampoliny/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(62, 'picture', '9_1.jpg', 'files/Trampoliny/9_1.jpg', 'files/Trampoliny/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(63, 'picture', '10_3.jpg', 'files/Trampoliny/10_3.jpg', 'files/Trampoliny/', NULL, '', '0000-00-00 00:00:00', NULL, 'm');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `media_lang`
--

CREATE TABLE IF NOT EXISTS `media_lang` (
  `lang` varchar(8) NOT NULL DEFAULT '',
  `id_media` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) DEFAULT NULL,
  `alt` varchar(500) DEFAULT NULL,
  `description` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
`id_menu` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `ordering` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `menu`
--

INSERT INTO `menu` (`id_menu`, `name`, `title`, `ordering`) VALUES
(1, 'main', 'Main menu', NULL),
(2, 'system', 'System menu', NULL);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `module`
--

CREATE TABLE IF NOT EXISTS `module` (
`id_module` int(11) unsigned NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `with_admin` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `version` varchar(10) NOT NULL DEFAULT '',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `info` text NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `module_setting`
--

CREATE TABLE IF NOT EXISTS `module_setting` (
`id_module_setting` int(11) NOT NULL,
  `id_module` int(11) NOT NULL,
  `name` varchar(50) NOT NULL COMMENT 'Setting name',
  `content` varchar(255) NOT NULL COMMENT 'Setting content',
  `lang` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `note`
--

CREATE TABLE IF NOT EXISTS `note` (
`id_note` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `type` varchar(10) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `notification`
--

CREATE TABLE IF NOT EXISTS `notification` (
`id_notification` int(11) unsigned NOT NULL,
  `date_creation` date DEFAULT NULL,
  `code` varchar(50) DEFAULT NULL,
  `category` varchar(25) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `content` text,
  `read` smallint(1) DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `notification`
--

INSERT INTO `notification` (`id_notification`, `date_creation`, `code`, `category`, `title`, `content`, `read`) VALUES
(1, '2015-07-16', 'sitemap_refresh', 'System', 'Sitemap refresh', 'Sitemap needs to be refreshed.<br/> Go to <b>Tools > System Diagnosis > Tools</b> and click on <b>"Refresh Sitemap"</b>.', 0);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `page`
--

CREATE TABLE IF NOT EXISTS `page` (
`id_page` int(11) unsigned NOT NULL,
  `id_parent` int(11) unsigned NOT NULL DEFAULT '0',
  `id_menu` int(11) unsigned NOT NULL DEFAULT '0',
  `id_type` smallint(2) NOT NULL DEFAULT '0',
  `id_subnav` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `ordering` int(11) unsigned DEFAULT '0',
  `level` int(11) unsigned NOT NULL DEFAULT '0',
  `online` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` tinyint(1) NOT NULL DEFAULT '0',
  `author` varchar(55) DEFAULT NULL,
  `updater` varchar(55) DEFAULT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_off` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `logical_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `appears` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `has_url` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `view` varchar(50) DEFAULT NULL COMMENT 'Page view',
  `view_single` varchar(50) DEFAULT NULL COMMENT 'Single Article Page view',
  `article_list_view` varchar(50) DEFAULT NULL COMMENT 'Article list view for each article linked to this page',
  `article_view` varchar(50) DEFAULT NULL COMMENT 'Article detail view for each article linked to this page',
  `article_order` varchar(50) NOT NULL DEFAULT 'ordering' COMMENT 'Article order in this page. Can be "ordering", "date"',
  `article_order_direction` varchar(50) NOT NULL DEFAULT 'ASC',
  `link` varchar(255) DEFAULT '' COMMENT 'Link to internal / external resource',
  `link_type` varchar(25) DEFAULT NULL COMMENT '''page'', ''article'' or NULL',
  `link_id` varchar(20) NOT NULL DEFAULT '',
  `pagination` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'Pagination use ?',
  `priority` int(1) unsigned NOT NULL DEFAULT '5' COMMENT 'Page priority',
  `used_by_module` tinyint(1) unsigned DEFAULT NULL,
  `deny_code` varchar(3) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `page`
--

INSERT INTO `page` (`id_page`, `id_parent`, `id_menu`, `id_type`, `id_subnav`, `name`, `ordering`, `level`, `online`, `home`, `author`, `updater`, `created`, `publish_on`, `publish_off`, `updated`, `logical_date`, `appears`, `has_url`, `view`, `view_single`, `article_list_view`, `article_view`, `article_order`, `article_order_direction`, `link`, `link_type`, `link_id`, `pagination`, `priority`, `used_by_module`, `deny_code`) VALUES
(1, 0, 2, 0, 0, '404', 0, 0, 1, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 1, NULL, NULL, NULL, NULL, 'ordering', 'ASC', '', NULL, '', 0, 0, NULL, NULL),
(2, 0, 2, 0, 0, '401', 0, 0, 1, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 1, NULL, NULL, NULL, NULL, 'ordering', 'ASC', '', NULL, '', 0, 0, NULL, NULL),
(3, 0, 2, 0, 0, '403', 0, 0, 1, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 1, NULL, NULL, NULL, NULL, 'ordering', 'ASC', '', NULL, '', 0, 0, NULL, NULL),
(4, 0, 1, 0, 0, 'home', 1, 0, 1, 1, NULL, 'cangar.juraj@gmail.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-07-13 12:26:40', '0000-00-00 00:00:00', 0, 1, 'page_home', '', NULL, NULL, 'ordering', 'ASC', '', NULL, '', 0, 5, 0, '404'),
(5, 0, 1, 0, 0, 'taebo', 2, 0, 1, 0, 'cangar.juraj@gmail.com', NULL, '2015-07-02 08:46:10', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, '0', NULL, NULL, NULL, 'ordering', 'ASC', '', NULL, '', 0, 5, NULL, NULL),
(6, 0, 1, 0, 0, 'pilakalajoga', 3, 0, 1, 0, 'cangar.juraj@gmail.com', 'cangar.juraj@gmail.com', '2015-07-02 08:46:32', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-07-16 13:38:28', '0000-00-00 00:00:00', 1, 1, '', '', NULL, NULL, 'ordering', 'ASC', '', NULL, '', 0, 5, 0, '404'),
(7, 0, 1, 0, 0, 'kick-box', 4, 0, 1, 0, 'cangar.juraj@gmail.com', NULL, '2015-07-02 08:46:47', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, '0', NULL, NULL, NULL, 'ordering', 'ASC', '', NULL, '', 0, 5, NULL, NULL),
(8, 0, 1, 0, 0, 'iron-body', 5, 0, 1, 0, 'cangar.juraj@gmail.com', NULL, '2015-07-02 08:47:03', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, '0', NULL, NULL, NULL, 'ordering', 'ASC', '', NULL, '', 0, 5, NULL, NULL),
(9, 0, 1, 0, 0, 'trampoliny', 6, 0, 1, 0, 'cangar.juraj@gmail.com', NULL, '2015-07-02 08:47:24', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, '0', NULL, NULL, NULL, 'ordering', 'ASC', '', NULL, '', 0, 5, NULL, NULL),
(10, 4, 1, 0, 0, 'slideshow', 1, 1, 1, 0, 'cangar.juraj@gmail.com', 'cangar.juraj@gmail.com', '2015-07-02 09:07:23', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-07-02 12:04:05', '0000-00-00 00:00:00', 0, 1, 'page_home', '', NULL, NULL, 'ordering', 'ASC', '', NULL, '', 0, 5, 0, '404'),
(11, 4, 1, 0, 0, 'sporty', 2, 1, 1, 0, 'cangar.juraj@gmail.com', 'cangar.juraj@gmail.com', '2015-07-02 09:50:11', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-07-02 12:04:26', '0000-00-00 00:00:00', 0, 1, 'page_home', '', NULL, NULL, 'ordering', 'ASC', '', NULL, '', 0, 5, 0, '404'),
(12, 0, 1, 0, 0, 'kontakt', 8, 0, 1, 0, 'cangar.juraj@gmail.com', NULL, '2015-07-07 09:20:29', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, 'page_contact', NULL, NULL, NULL, 'ordering', 'ASC', '', NULL, '', 0, 5, NULL, NULL),
(13, 4, 1, 0, 0, 'rozvrh', 3, 1, 1, 0, 'cangar.juraj@gmail.com', 'cangar.juraj@gmail.com', '2015-07-07 10:01:37', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-07-07 10:04:32', '0000-00-00 00:00:00', 0, 1, '', '', NULL, NULL, 'ordering', 'ASC', '', NULL, '', 0, 5, 0, '404'),
(14, 0, 1, 0, 0, 'pole-dance', 7, 0, 1, 0, 'cangar.juraj@gmail.com', 'cangar.juraj@gmail.com', '2015-07-13 10:06:58', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-07-13 11:36:39', '0000-00-00 00:00:00', 1, 1, '', '', NULL, NULL, 'ordering', 'ASC', '', NULL, '', 0, 5, 0, '404'),
(15, 4, 1, 0, 0, 'novinky', 9, 1, 1, 0, 'cangar.juraj@gmail.com', 'cangar.juraj@gmail.com', '2015-07-14 09:21:41', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-07-14 09:27:41', '0000-00-00 00:00:00', 1, 1, '', '', NULL, NULL, 'ordering', 'ASC', '', NULL, '', 0, 5, 0, '404'),
(17, 4, 1, 0, 0, 'happy-fit-studio', 10, 1, 1, 0, 'cangar.juraj@gmail.com', 'cangar.juraj@gmail.com', '2015-07-16 11:57:56', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-07-16 12:59:49', '0000-00-00 00:00:00', 1, 1, '', '', NULL, NULL, 'ordering', 'ASC', '', NULL, '', 0, 5, 0, '404');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `page_article`
--

CREATE TABLE IF NOT EXISTS `page_article` (
  `id_page` int(11) unsigned NOT NULL,
  `id_article` int(11) unsigned NOT NULL,
  `online` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `view` varchar(50) DEFAULT NULL,
  `ordering` int(11) DEFAULT '0',
  `id_type` int(11) unsigned DEFAULT NULL,
  `link_type` varchar(25) NOT NULL DEFAULT '',
  `link_id` varchar(20) NOT NULL DEFAULT '',
  `link` varchar(255) NOT NULL DEFAULT '',
  `main_parent` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `page_article`
--

INSERT INTO `page_article` (`id_page`, `id_article`, `online`, `view`, `ordering`, `id_type`, `link_type`, `link_id`, `link`, `main_parent`) VALUES
(1, 1, 1, NULL, 0, NULL, '', '', '', 0),
(2, 2, 1, NULL, 0, NULL, '', '', '', 0),
(3, 3, 1, NULL, 0, NULL, '', '', '', 0),
(5, 13, 1, NULL, 1, NULL, '', '', '', 1),
(6, 22, 1, NULL, 2, NULL, '', '', '', 1),
(7, 14, 1, NULL, 1, NULL, '', '', '', 1),
(8, 23, 1, NULL, 2, NULL, '', '', '', 1),
(9, 32, 1, NULL, 1, NULL, '', '', '', 1),
(10, 5, 1, NULL, 1, NULL, '', '', '', 1),
(10, 6, 1, NULL, 2, NULL, '', '', '', 1),
(10, 19, 1, NULL, 3, NULL, '', '', '', 1),
(11, 7, 1, NULL, 1, NULL, 'page', '5', 'Taebo', 1),
(11, 8, 1, NULL, 2, NULL, 'article', '6.22', 'Pilakalajoga', 1),
(11, 9, 1, NULL, 3, NULL, 'article', '7.14', 'Kick Box', 1),
(11, 10, 1, NULL, 4, NULL, 'article', '8.23', 'Iron Body', 1),
(11, 11, 1, NULL, 5, NULL, 'article', '9.32', 'Trampolíny', 1),
(11, 12, 1, NULL, 6, NULL, 'article', '14.33', 'Pole dance', 1),
(12, 15, 1, NULL, 1, NULL, '', '', '', 1),
(13, 16, 1, NULL, 1, NULL, '', '', '', 1),
(13, 17, 1, NULL, 2, NULL, '', '', '', 1),
(13, 18, 1, NULL, 3, NULL, '', '', '', 1),
(13, 26, 1, NULL, 4, NULL, '', '', '', 1),
(13, 27, 1, NULL, 5, NULL, '', '', '', 1),
(13, 28, 1, NULL, 6, NULL, '', '', '', 1),
(14, 33, 1, NULL, 1, NULL, '', '', '', 1),
(15, 20, 1, NULL, 1, NULL, '', '', '', 1),
(17, 30, 1, NULL, 1, NULL, '', '', '', 1);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `page_lang`
--

CREATE TABLE IF NOT EXISTS `page_lang` (
  `lang` varchar(8) NOT NULL DEFAULT '',
  `id_page` int(11) unsigned NOT NULL DEFAULT '0',
  `url` varchar(100) NOT NULL DEFAULT '',
  `link` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) DEFAULT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `nav_title` varchar(255) NOT NULL DEFAULT '',
  `subnav_title` varchar(255) NOT NULL DEFAULT '',
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `online` tinyint(1) unsigned NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `page_lang`
--

INSERT INTO `page_lang` (`lang`, `id_page`, `url`, `link`, `title`, `subtitle`, `nav_title`, `subnav_title`, `meta_title`, `meta_description`, `meta_keywords`, `online`) VALUES
('sk', 1, '404', '', '404', 'Can''t find requested page.', '', '', NULL, NULL, NULL, 1),
('sk', 2, '401', '', '401', 'Login needed', '', '', NULL, NULL, NULL, 1),
('sk', 3, '403', '', '403', 'Forbidden', '', '', NULL, NULL, NULL, 1),
('sk', 4, 'home', '', 'Home', '', '', '', '', '', '', 1),
('sk', 5, 'taebo', '', 'Taebo', '', '', '', '', NULL, NULL, 1),
('sk', 6, 'pilakalajoga', '', 'Pilakalajoga', '', '', '', '', '', '', 1),
('sk', 7, 'kick-box', '', 'Kick Box', '', '', '', '', NULL, NULL, 1),
('sk', 8, 'iron-body', '', 'Iron Body', '', '', '', '', NULL, NULL, 1),
('sk', 9, 'trampoliny', '', 'Trampolíny', '', '', '', '', NULL, NULL, 1),
('sk', 10, 'slideshow', '', 'Slideshow', '', '', '', '', '', '', 1),
('sk', 11, 'sporty', '', 'Športy', '', '', '', '', '', '', 1),
('sk', 12, 'kontakt', '', 'Kontakt', '', '', '', '', NULL, NULL, 1),
('sk', 13, 'rozvrh', '', 'Rozvrh', '', '', '', '', '', '', 1),
('sk', 14, 'pole-dance', '', 'Pole dance', '', '', '', '', '', '', 1),
('sk', 15, 'novinky', '', 'Novinky', '', '', '', '', '', '', 1),
('sk', 17, 'happy-fit-studio', '', 'Happy fit studio', '', '', '', '', '', '', 1);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `page_media`
--

CREATE TABLE IF NOT EXISTS `page_media` (
  `id_page` int(11) unsigned NOT NULL DEFAULT '0',
  `id_media` int(11) unsigned NOT NULL DEFAULT '0',
  `online` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `ordering` int(11) unsigned DEFAULT '9999',
  `lang_display` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `page_media`
--

INSERT INTO `page_media` (`id_page`, `id_media`, `online`, `ordering`, `lang_display`) VALUES
(10, 1, 1, 1, NULL);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `resource`
--

CREATE TABLE IF NOT EXISTS `resource` (
`id_resource` int(11) NOT NULL,
  `id_parent` int(11) unsigned DEFAULT NULL,
  `resource` varchar(255) NOT NULL DEFAULT '',
  `actions` varchar(500) DEFAULT '',
  `title` varchar(255) DEFAULT '',
  `description` varchar(1000) DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=304 DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `resource`
--

INSERT INTO `resource` (`id_resource`, `id_parent`, `resource`, `actions`, `title`, `description`) VALUES
(1, NULL, 'admin', '', 'Backend login', 'Connect to ionize backend'),
(10, NULL, 'admin/menu', 'create,edit,delete', 'Menu', 'Menus'),
(11, 10, 'admin/menu/permissions/backend', '', 'Permissions', 'Menu > Backend Permissions'),
(20, NULL, 'admin/translations', '', 'Translations', 'Translations'),
(30, NULL, 'admin/filemanager', 'upload,rename,delete,move', 'Filemanager', 'FileManager'),
(35, NULL, 'admin/medialist', '', 'MediaList', 'MediaList'),
(40, NULL, 'admin/page', 'create,edit,delete', 'Page', 'Page'),
(41, 40, 'admin/page/article', 'add', 'Article', 'Page > Article'),
(42, 40, 'admin/page/element', 'add', 'Content Element', 'Page > Content Element'),
(50, 40, 'admin/page/media', 'link,unlink,edit', 'Media', 'Page > Media'),
(60, 40, 'admin/page/permissions', '', 'Permission', 'Page > Permission'),
(61, 60, 'admin/page/permissions/backend', '', 'Backend', 'Page > Permission > Backend'),
(62, 60, 'admin/page/permissions/frontend', '', 'Frontend', 'Page > Permission > Frontend'),
(70, NULL, 'admin/article', 'create,edit,delete,move,copy,duplicate', 'Article', 'Article'),
(80, 70, 'admin/article/media', 'link,unlink,edit', 'Media', 'Article > Media'),
(85, 70, 'admin/article/element', 'add', 'Content Element', 'Article > Content Element'),
(86, 70, 'admin/article/category', '', 'Manage categories', 'Article > Categories'),
(90, 70, 'admin/article/permissions', '', 'Permission', 'Article > Permission'),
(91, 90, 'admin/article/permissions/backend', '', 'Backend', 'Article > Permission > Backend'),
(92, 90, 'admin/article/permissions/frontend', '', 'Frontend', 'Article > Permission > Frontend'),
(93, 70, 'admin/article/tag', '', 'Manage tags', 'Article > Tags'),
(100, NULL, 'admin/tree', '', 'Tree', ''),
(101, 100, 'admin/tree/menu', 'add_page,edit', 'Menus', ''),
(102, 100, 'admin/tree/page', 'status,add_page,add_article,order', 'Pages', ''),
(103, 100, 'admin/tree/article', 'unlink,status,move,copy,order', 'Articles', ''),
(120, NULL, 'admin/article/type', 'create,edit,delete', 'Article Type', 'Article types'),
(150, NULL, 'admin/modules', 'install', 'Modules', 'Modules'),
(151, 150, 'admin/modules/permissions', '', 'Set Permissions', 'Modules > Permissions'),
(180, NULL, 'admin/element', 'create,edit,delete', 'Content Element', 'Content Elements'),
(181, 180, 'admin/element/media', 'link,unlink,edit', 'Media', 'Content Elements > Media'),
(210, NULL, 'admin/extend', 'create,edit,delete', 'Extend Fields', 'Extend Fields'),
(220, NULL, 'admin/item', 'create,edit,delete,add', 'Static Items', 'Static Items'),
(221, 220, 'admin/item/definition', 'edit', 'Definition', 'Static Items > Definition'),
(222, 220, 'admin/item/media', 'link,unlink,edit', 'Media', 'Static Items > Media'),
(240, NULL, 'admin/tools', '', 'Tools', 'Tools'),
(241, 240, 'admin/tools/google_analytics', '', 'Google Analytics', 'Tools > Google Analytics'),
(250, 240, 'admin/tools/system', '', 'System Diagnosis', 'Tools > System'),
(251, 250, 'admin/tools/system/information', '', 'Information', 'Tools > System > Information'),
(252, 250, 'admin/tools/system/repair', '', 'Repair tools', 'Tools > System > Repair'),
(253, 250, 'admin/tools/system/report', '', 'Reports', 'Tools > System > Reports'),
(270, NULL, 'admin/settings', '', 'Settings', 'Settings'),
(271, 270, 'admin/settings/ionize', '', 'Ionize UI', 'Settings > UI Settings'),
(272, 270, 'admin/settings/languages', '', 'Languages Management', 'Settings > Languages'),
(273, 270, 'admin/settings/themes', 'edit', 'Themes', 'Settings > Themes'),
(274, 270, 'admin/settings/website', '', 'Website settings', 'Settings > Website'),
(275, 270, 'admin/settings/technical', '', 'Technical settings', 'Settings > Technical'),
(300, NULL, 'admin/users_roles', '', 'Users / Roles', 'Users / Roles'),
(301, 300, 'admin/user', 'create,edit,delete', 'Users', 'Users'),
(302, 300, 'admin/role', 'create,edit,delete', 'Roles', 'Roles'),
(303, 302, 'admin/role/permissions', '', 'Set Permissions', 'See Role''s permissions');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `role`
--

CREATE TABLE IF NOT EXISTS `role` (
`id_role` smallint(4) unsigned NOT NULL,
  `role_level` int(11) DEFAULT NULL,
  `role_code` varchar(25) NOT NULL,
  `role_name` varchar(100) NOT NULL,
  `role_description` tinytext
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `role`
--

INSERT INTO `role` (`id_role`, `role_level`, `role_code`, `role_name`, `role_description`) VALUES
(1, 10000, 'super-admin', 'Super Admin', ''),
(2, 5000, 'admin', 'Admin', ''),
(3, 1000, 'editor', 'Editor', ''),
(4, 100, 'user', 'User', ''),
(5, 50, 'pending', 'Pending', ''),
(6, 10, 'guest', 'Guest', ''),
(7, -10, 'banned', 'Banned', ''),
(8, -100, 'deactivated', 'Deactivated', '');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `rule`
--

CREATE TABLE IF NOT EXISTS `rule` (
  `id_role` int(11) NOT NULL,
  `resource` varchar(100) NOT NULL DEFAULT '',
  `actions` varchar(100) NOT NULL DEFAULT '',
  `permission` smallint(1) DEFAULT NULL,
  `id_element` int(11) unsigned DEFAULT NULL,
  `id_user` int(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `rule`
--

INSERT INTO `rule` (`id_role`, `resource`, `actions`, `permission`, `id_element`, `id_user`) VALUES
(1, 'all', '', 1, NULL, 0),
(2, 'admin', '', 1, NULL, 0),
(2, 'admin/article', 'create,edit,delete,move,copy,duplicate', 1, NULL, 0),
(2, 'admin/article/category', '', 1, NULL, 0),
(2, 'admin/article/element', 'add', 1, NULL, 0),
(2, 'admin/article/media', 'link,unlink,edit', 1, NULL, 0),
(2, 'admin/article/permissions', '', 1, NULL, 0),
(2, 'admin/article/permissions/backend', '', 1, NULL, 0),
(2, 'admin/article/permissions/frontend', '', 1, NULL, 0),
(2, 'admin/article/tag', '', 1, NULL, 0),
(2, 'admin/article/type', 'create,edit,delete', 1, NULL, 0),
(2, 'admin/element', 'create,edit,delete', 1, NULL, 0),
(2, 'admin/element/media', 'link,unlink,edit', 1, NULL, 0),
(2, 'admin/extend', 'create,edit,delete', 1, NULL, 0),
(2, 'admin/filemanager', 'upload,rename,delete,move', 1, NULL, 0),
(2, 'admin/item', 'create,edit,delete,add', 1, NULL, 0),
(2, 'admin/item/media', 'link,unlink,edit', 1, NULL, 0),
(2, 'admin/medialist', '', 1, NULL, 0),
(2, 'admin/menu', 'create,edit,delete', 1, NULL, 0),
(2, 'admin/modules', 'install', 1, NULL, 0),
(2, 'admin/modules/permissions', '', 1, NULL, 0),
(2, 'admin/page', 'create,edit,delete', 1, NULL, 0),
(2, 'admin/page/article', 'add', 1, NULL, 0),
(2, 'admin/page/element', 'add', 1, NULL, 0),
(2, 'admin/page/media', 'link,unlink,edit', 1, NULL, 0),
(2, 'admin/page/permissions', '', 1, NULL, 0),
(2, 'admin/page/permissions/backend', '', 1, NULL, 0),
(2, 'admin/page/permissions/frontend', '', 1, NULL, 0),
(2, 'admin/role', 'create,edit,delete', 1, NULL, 0),
(2, 'admin/role/permissions', '', 1, NULL, 0),
(2, 'admin/settings', '', 1, NULL, 0),
(2, 'admin/settings/ionize', '', 1, NULL, 0),
(2, 'admin/settings/languages', '', 1, NULL, 0),
(2, 'admin/settings/website', '', 1, NULL, 0),
(2, 'admin/tools', '', 1, NULL, 0),
(2, 'admin/tools/google_analytics', '', 1, NULL, 0),
(2, 'admin/tools/system', '', 1, NULL, 0),
(2, 'admin/tools/system/information', '', 1, NULL, 0),
(2, 'admin/tools/system/repair', '', 1, NULL, 0),
(2, 'admin/tools/system/report', '', 1, NULL, 0),
(2, 'admin/translations', '', 1, NULL, 0),
(2, 'admin/tree', '', 1, NULL, 0),
(2, 'admin/tree/article', 'unlink,status,move,copy,order', 1, NULL, 0),
(2, 'admin/tree/menu', 'add_page,edit', 1, NULL, 0),
(2, 'admin/tree/page', 'status,add_page,add_article,order', 1, NULL, 0),
(2, 'admin/user', 'create,edit,delete', 1, NULL, 0),
(2, 'admin/users_roles', '', 1, NULL, 0),
(3, 'admin', '', 1, NULL, 0),
(3, 'admin/article', 'create,edit,delete,move,copy,duplicate', 1, NULL, 0),
(3, 'admin/article/category', '', 1, NULL, 0),
(3, 'admin/article/element', 'add', 1, NULL, 0),
(3, 'admin/article/media', 'link,unlink,edit', 1, NULL, 0),
(3, 'admin/article/permissions', '', 1, NULL, 0),
(3, 'admin/article/permissions/backend', '', 1, NULL, 0),
(3, 'admin/article/permissions/frontend', '', 1, NULL, 0),
(3, 'admin/article/tag', '', 1, NULL, 0),
(3, 'admin/element/media', 'link,unlink,edit', 1, NULL, 0),
(3, 'admin/filemanager', 'upload,rename,delete,move', 1, NULL, 0),
(3, 'admin/item', 'create,edit,delete,add', 1, NULL, 0),
(3, 'admin/item/media', 'link,unlink,edit', 1, NULL, 0),
(3, 'admin/medialist', '', 1, NULL, 0),
(3, 'admin/menu', 'create,edit,delete', 1, NULL, 0),
(3, 'admin/modules', '', 1, NULL, 0),
(3, 'admin/page', 'create,edit,delete', 1, NULL, 0),
(3, 'admin/page/article', 'add', 1, NULL, 0),
(3, 'admin/page/element', 'add', 1, NULL, 0),
(3, 'admin/page/media', 'link,unlink,edit', 1, NULL, 0),
(3, 'admin/page/permissions', '', 1, NULL, 0),
(3, 'admin/page/permissions/backend', '', 1, NULL, 0),
(3, 'admin/page/permissions/frontend', '', 1, NULL, 0),
(3, 'admin/settings', '', 1, NULL, 0),
(3, 'admin/settings/ionize', '', 1, NULL, 0),
(3, 'admin/settings/languages', '', 1, NULL, 0),
(3, 'admin/settings/website', '', 1, NULL, 0),
(3, 'admin/tools', '', 1, NULL, 0),
(3, 'admin/tools/google_analytics', '', 1, NULL, 0),
(3, 'admin/tools/system', '', 1, NULL, 0),
(3, 'admin/tools/system/information', '', 1, NULL, 0),
(3, 'admin/tools/system/report', '', 1, NULL, 0),
(3, 'admin/translations', '', 1, NULL, 0),
(3, 'admin/tree', '', 1, NULL, 0),
(3, 'admin/tree/article', 'unlink,status,move,copy,order', 1, NULL, 0),
(3, 'admin/tree/menu', 'add_page,edit', 1, NULL, 0),
(3, 'admin/tree/page', 'status,add_page,add_article,order', 1, NULL, 0),
(3, 'admin/user', 'create,edit,delete', 1, NULL, 0),
(3, 'admin/users_roles', '', 1, NULL, 0);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `setting`
--

CREATE TABLE IF NOT EXISTS `setting` (
`id_setting` int(11) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `lang` varchar(8) NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `setting`
--

INSERT INTO `setting` (`id_setting`, `name`, `content`, `lang`) VALUES
(1, 'ionize_version', '1.0.7', ''),
(2, 'site_email', '', ''),
(3, 'files_path', 'files', ''),
(4, 'theme', 'fitstudiorv', ''),
(5, 'theme_admin', 'admin', ''),
(6, 'google_analytics', '', ''),
(7, 'filemanager', 'mootools-filemanager', ''),
(8, 'show_help_tips', '1', ''),
(9, 'display_connected_label', '1', ''),
(10, 'display_dashboard_shortcuts', '1', ''),
(11, 'display_dashboard_modules', '1', ''),
(12, 'display_dashboard_users', '1', ''),
(13, 'display_dashboard_content', '1', ''),
(14, 'display_front_offline_content', '', ''),
(15, 'display_dashboard_quick_settings', '1', ''),
(16, 'texteditor', 'tinymce', ''),
(17, 'media_thumb_size', '120', ''),
(18, 'tinybuttons1', 'pdw_toggle,|,bold,italic,strikethrough,|,justifyleft,justifycenter,justifyright,justifyfull,|,formatselect,|,bullist,numlist,|,link,unlink,image,|,spellchecker', ''),
(19, 'tinybuttons2', 'fullscreen, undo,redo,|,pastetext,selectall,removeformat,|,media,charmap,hr,blockquote,|,template,|,codemirror', ''),
(20, 'tinybuttons3', 'tablecontrols', ''),
(21, 'smalltinybuttons1', 'bold,italic,|,bullist,numlist,|,link,unlink,image,|,nonbreaking', ''),
(22, 'smalltinybuttons2', '', ''),
(23, 'smalltinybuttons3', '', ''),
(24, 'displayed_admin_languages', 'en', ''),
(25, 'date_format', '%Y.%m.%d', ''),
(26, 'force_lang_urls', '0', ''),
(27, 'tinyblockformats', 'p,h2,h3,h4,h5,pre,div', ''),
(28, 'article_allowed_tags', 'h2,h3,h4,h5,h6,em,img,iframe,table,object,thead,tbody,tfoot,tr,th,td,param,embed,map,p,a,ul,ol,li,br,b,strong', ''),
(29, 'filemanager_file_types', 'gif,jpe,jpeg,jpg,png,flv,mpeg,mpg,mp3,pdf', ''),
(30, 'default_admin_lang', 'en', ''),
(31, 'upload_autostart', '1', ''),
(32, 'resize_on_upload', '1', ''),
(33, 'picture_max_width', '1200', ''),
(34, 'picture_max_height', '1200', ''),
(35, 'upload_mode', '', ''),
(36, 'no_source_picture', 'default.png', ''),
(37, 'enable_backend_tracker', '0', ''),
(38, 'backend_ui_style', 'original', ''),
(39, 'notification', '1', ''),
(40, 'notification_date', '', ''),
(41, 'site_title', 'My website', 'sk'),
(42, 'last_notification_refresh', '2015-07-16 11:57:41', ''),
(43, 'last_version', '1.0.7', '');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `tag`
--

CREATE TABLE IF NOT EXISTS `tag` (
`id_tag` int(11) unsigned NOT NULL,
  `tag_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `tracker`
--

CREATE TABLE IF NOT EXISTS `tracker` (
  `id_user` int(11) unsigned NOT NULL,
  `ip_address` varchar(32) DEFAULT NULL,
  `element` varchar(50) DEFAULT NULL,
  `id_element` int(11) DEFAULT NULL,
  `last_time` datetime DEFAULT NULL,
  `elements` varchar(3000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `type`
--

CREATE TABLE IF NOT EXISTS `type` (
`id_type` int(11) unsigned NOT NULL,
  `code` varchar(50) NOT NULL,
  `parent` char(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(3000) DEFAULT NULL,
  `ordering` smallint(6) NOT NULL,
  `view` varchar(50) DEFAULT NULL COMMENT 'view',
  `flag` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ui_element`
--

CREATE TABLE IF NOT EXISTS `ui_element` (
`id_ui_element` int(11) unsigned NOT NULL,
  `id_company` int(11) unsigned DEFAULT NULL,
  `type` enum('tab','table','list') DEFAULT NULL,
  `panel` varchar(25) DEFAULT NULL COMMENT 'UI context',
  `title` varchar(50) DEFAULT NULL,
  `ordering` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ui_element_lk_extend`
--

CREATE TABLE IF NOT EXISTS `ui_element_lk_extend` (
  `id_ui_element` int(11) unsigned NOT NULL,
  `id_extend` int(11) NOT NULL DEFAULT '0',
  `ordering` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `url`
--

CREATE TABLE IF NOT EXISTS `url` (
`id_url` int(11) unsigned NOT NULL,
  `id_entity` int(11) unsigned NOT NULL,
  `type` varchar(10) NOT NULL,
  `canonical` smallint(1) NOT NULL DEFAULT '0',
  `active` smallint(1) NOT NULL DEFAULT '0',
  `lang` varchar(8) NOT NULL,
  `path` varchar(255) NOT NULL DEFAULT '',
  `path_ids` varchar(50) DEFAULT NULL,
  `full_path_ids` varchar(50) DEFAULT NULL,
  `creation_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `url`
--

INSERT INTO `url` (`id_url`, `id_entity`, `type`, `canonical`, `active`, `lang`, `path`, `path_ids`, `full_path_ids`, `creation_date`) VALUES
(1, 5, 'page', 1, 1, 'sk', 'taebo', '5', '5', '2015-07-02 08:46:11'),
(3, 7, 'page', 1, 1, 'sk', 'kick-box', '7', '7', '2015-07-02 08:46:47'),
(4, 8, 'page', 1, 1, 'sk', 'iron-body', '8', '8', '2015-07-02 08:47:03'),
(5, 9, 'page', 1, 1, 'sk', 'trampoliny', '9', '9', '2015-07-02 08:47:24'),
(34, 13, 'article', 1, 1, 'sk', 'taebo/taebo', '5/13', '5/13', '2015-07-07 07:58:34'),
(35, 14, 'article', 1, 1, 'sk', 'kick-box/kick-box', '7/14', '7/14', '2015-07-07 08:23:25'),
(36, 12, 'page', 1, 1, 'sk', 'kontakt', '12', '12', '2015-07-07 09:20:29'),
(37, 15, 'article', 1, 1, 'sk', 'kontakt/fit-studio-sportov-klub', '12/15', '12/15', '2015-07-07 09:22:38'),
(51, 14, 'page', 1, 1, 'sk', 'pole-dance', '14', '14', '2015-07-13 11:36:39'),
(52, 4, 'page', 1, 1, 'sk', 'home', '4', '4', '2015-07-13 12:26:40'),
(53, 10, 'page', 1, 1, 'sk', 'home/slideshow', '4/10', '4/10', '2015-07-13 12:26:41'),
(54, 5, 'article', 1, 1, 'sk', 'home/slideshow/sl1', '4/10/5', '4/10/5', '2015-07-13 12:26:41'),
(55, 6, 'article', 1, 1, 'sk', 'home/slideshow/sl2', '4/10/6', '4/10/6', '2015-07-13 12:26:41'),
(56, 11, 'page', 1, 1, 'sk', 'home/sporty', '4/11', '4/11', '2015-07-13 12:26:41'),
(57, 7, 'article', 1, 1, 'sk', 'home/sporty/taebo', '4/11/7', '4/11/7', '2015-07-13 12:26:41'),
(58, 8, 'article', 1, 0, 'sk', 'home/sporty/pilakajoga', '4/11/8', '4/11/8', '2015-07-13 12:26:41'),
(59, 9, 'article', 1, 1, 'sk', 'home/sporty/kick-box', '4/11/9', '4/11/9', '2015-07-13 12:26:41'),
(60, 10, 'article', 1, 1, 'sk', 'home/sporty/iron-body', '4/11/10', '4/11/10', '2015-07-13 12:26:42'),
(61, 11, 'article', 1, 1, 'sk', 'home/sporty/trampoliny', '4/11/11', '4/11/11', '2015-07-13 12:26:42'),
(62, 12, 'article', 1, 1, 'sk', 'home/sporty/pole-dance', '4/11/12', '4/11/12', '2015-07-13 12:26:42'),
(63, 13, 'page', 1, 1, 'sk', 'home/rozvrh', '4/13', '4/13', '2015-07-13 12:26:42'),
(64, 16, 'article', 1, 1, 'sk', 'home/rozvrh/pondelok', '4/13/16', '4/13/16', '2015-07-13 12:26:42'),
(65, 17, 'article', 1, 1, 'sk', 'home/rozvrh/utorok', '4/13/17', '4/13/17', '2015-07-13 12:26:42'),
(66, 18, 'article', 1, 1, 'sk', 'home/rozvrh/streda', '4/13/18', '4/13/18', '2015-07-13 12:26:42'),
(67, 19, 'article', 1, 1, 'sk', 'home/slideshow/sl3', '4/10/19', '4/10/19', '2015-07-14 08:59:26'),
(70, 15, 'page', 1, 1, 'sk', 'home/novinky', '4/15', '4/15', '2015-07-14 09:27:41'),
(71, 20, 'article', 1, 1, 'sk', 'home/novinky/zajtrajsok', '4/15/20', '4/15/20', '2015-07-14 09:27:41'),
(73, 23, 'article', 1, 1, 'sk', 'iron-body/iron-body', '8/23', '8/23', '2015-07-16 09:44:20'),
(74, 8, 'article', 1, 0, 'sk', 'home/sporty/fit-and-body', '4/11/8', '4/11/8', '2015-07-16 10:29:08'),
(77, 26, 'article', 1, 1, 'sk', 'home/rozvrh/stvrtok', '4/13/26', '4/13/26', '2015-07-16 10:39:04'),
(78, 27, 'article', 1, 1, 'sk', 'home/rozvrh/piatok', '4/13/27', '4/13/27', '2015-07-16 10:39:15'),
(79, 28, 'article', 1, 1, 'sk', 'home/rozvrh/nedea', '4/13/28', '4/13/28', '2015-07-16 10:44:06'),
(87, 17, 'page', 1, 1, 'sk', 'home/happy-fit-studio', '4/17', '4/17', '2015-07-16 12:59:50'),
(88, 30, 'article', 1, 1, 'sk', 'home/happy-fit-studio/happy-fit-studio', '4/17/30', '4/17/30', '2015-07-16 13:00:08'),
(89, 8, 'article', 1, 1, 'sk', 'home/sporty/pilakalajoga', '4/11/8', '4/11/8', '2015-07-16 13:38:02'),
(90, 6, 'page', 1, 1, 'sk', 'pilakalajoga', '6', '6', '2015-07-16 13:38:28'),
(91, 22, 'article', 1, 1, 'sk', 'pilakalajoga/pilakalajoga', '6/22', '6/22', '2015-07-16 13:38:28'),
(92, 32, 'article', 1, 1, 'sk', 'trampoliny/trampoliny', '9/32', '9/32', '2015-07-16 13:42:17'),
(93, 33, 'article', 1, 1, 'sk', 'pole-dance/pole-dance', '14/33', '14/33', '2015-07-16 13:42:28');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`id_user` int(11) unsigned NOT NULL,
  `id_role` smallint(4) unsigned NOT NULL,
  `join_date` timestamp NULL DEFAULT NULL,
  `last_visit` timestamp NULL DEFAULT NULL,
  `username` varchar(50) NOT NULL,
  `screen_name` varchar(50) DEFAULT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `birthdate` datetime DEFAULT NULL,
  `gender` smallint(1) DEFAULT NULL COMMENT '1: Male, 2 : Female',
  `password` varchar(255) NOT NULL,
  `email` varchar(120) NOT NULL,
  `salt` varchar(50) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `user`
--

INSERT INTO `user` (`id_user`, `id_role`, `join_date`, `last_visit`, `username`, `screen_name`, `firstname`, `lastname`, `birthdate`, `gender`, `password`, `email`, `salt`) VALUES
(1, 1, '2015-07-01 15:18:30', '2015-07-01 15:19:01', 'marek.boros@gmail.com', 'Marek Boroš', 'Marek', 'Boroš', NULL, NULL, 'HMh9JbUBoFk8GNBMhIJh7Qg=', 'marek.boros@gmail.com', 'd00ef1c72104234f'),
(2, 1, '2015-07-02 05:59:02', '2015-07-02 06:19:44', 'cangar.juraj@gmail.com', '', 'Juraj', 'Cangár', NULL, NULL, 'vQxen27hFEpklLy2QNMXCg==', 'cangar.juraj@gmail.com', '58a0006b205d968a');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `api_key`
--
ALTER TABLE `api_key`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `api_log`
--
ALTER TABLE `api_log`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `article`
--
ALTER TABLE `article`
 ADD PRIMARY KEY (`id_article`);

--
-- Indexes for table `article_comment`
--
ALTER TABLE `article_comment`
 ADD PRIMARY KEY (`id_article_comment`);

--
-- Indexes for table `article_lang`
--
ALTER TABLE `article_lang`
 ADD PRIMARY KEY (`id_article`,`lang`);

--
-- Indexes for table `article_media`
--
ALTER TABLE `article_media`
 ADD PRIMARY KEY (`id_article`,`id_media`);

--
-- Indexes for table `article_tag`
--
ALTER TABLE `article_tag`
 ADD PRIMARY KEY (`id_article`,`id_tag`);

--
-- Indexes for table `article_type`
--
ALTER TABLE `article_type`
 ADD PRIMARY KEY (`id_type`);

--
-- Indexes for table `captcha`
--
ALTER TABLE `captcha`
 ADD PRIMARY KEY (`id_captcha`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
 ADD PRIMARY KEY (`id_category`);

--
-- Indexes for table `category_lang`
--
ALTER TABLE `category_lang`
 ADD PRIMARY KEY (`id_category`,`lang`);

--
-- Indexes for table `element`
--
ALTER TABLE `element`
 ADD PRIMARY KEY (`id_element`), ADD KEY `idx_element_id_element_definition` (`id_element_definition`), ADD KEY `idx_element_id_parent` (`id_parent`), ADD KEY `idx_element_parent` (`parent`);

--
-- Indexes for table `element_definition`
--
ALTER TABLE `element_definition`
 ADD PRIMARY KEY (`id_element_definition`);

--
-- Indexes for table `element_definition_lang`
--
ALTER TABLE `element_definition_lang`
 ADD PRIMARY KEY (`id_element_definition`,`lang`);

--
-- Indexes for table `event_log`
--
ALTER TABLE `event_log`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `extend_field`
--
ALTER TABLE `extend_field`
 ADD PRIMARY KEY (`id_extend_field`), ADD KEY `idx_extend_field_parent` (`parent`), ADD KEY `idx_extend_field_id_parent` (`id_parent`);

--
-- Indexes for table `extend_fields`
--
ALTER TABLE `extend_fields`
 ADD PRIMARY KEY (`id_extend_fields`), ADD KEY `idx_extend_fields_id_parent` (`id_parent`), ADD KEY `idx_extend_fields_lang` (`lang`), ADD KEY `idx_extend_fields_id_extend_field` (`id_extend_field`);

--
-- Indexes for table `extend_field_lang`
--
ALTER TABLE `extend_field_lang`
 ADD PRIMARY KEY (`id_extend_field`,`lang`);

--
-- Indexes for table `extend_field_type`
--
ALTER TABLE `extend_field_type`
 ADD PRIMARY KEY (`id_extend_field_type`);

--
-- Indexes for table `ion_sessions`
--
ALTER TABLE `ion_sessions`
 ADD PRIMARY KEY (`session_id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
 ADD PRIMARY KEY (`id_item`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
 ADD PRIMARY KEY (`id_item`,`parent`,`id_parent`);

--
-- Indexes for table `item_definition`
--
ALTER TABLE `item_definition`
 ADD PRIMARY KEY (`id_item_definition`);

--
-- Indexes for table `item_definition_lang`
--
ALTER TABLE `item_definition_lang`
 ADD PRIMARY KEY (`id_item_definition`,`lang`);

--
-- Indexes for table `item_lang`
--
ALTER TABLE `item_lang`
 ADD PRIMARY KEY (`id_item`,`lang`);

--
-- Indexes for table `lang`
--
ALTER TABLE `lang`
 ADD PRIMARY KEY (`lang`);

--
-- Indexes for table `login_tracker`
--
ALTER TABLE `login_tracker`
 ADD PRIMARY KEY (`ip_address`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
 ADD PRIMARY KEY (`id_media`);

--
-- Indexes for table `media_lang`
--
ALTER TABLE `media_lang`
 ADD PRIMARY KEY (`id_media`,`lang`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
 ADD PRIMARY KEY (`id_menu`), ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `module`
--
ALTER TABLE `module`
 ADD PRIMARY KEY (`id_module`), ADD KEY `i_module_name` (`name`);

--
-- Indexes for table `module_setting`
--
ALTER TABLE `module_setting`
 ADD PRIMARY KEY (`id_module_setting`);

--
-- Indexes for table `note`
--
ALTER TABLE `note`
 ADD PRIMARY KEY (`id_note`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
 ADD PRIMARY KEY (`id_notification`);

--
-- Indexes for table `page`
--
ALTER TABLE `page`
 ADD PRIMARY KEY (`id_page`), ADD KEY `idx_page_id_parent` (`id_parent`), ADD KEY `idx_page_level` (`level`), ADD KEY `idx_page_menu` (`id_menu`);

--
-- Indexes for table `page_article`
--
ALTER TABLE `page_article`
 ADD PRIMARY KEY (`id_page`,`id_article`), ADD KEY `idx_page_article_id_type` (`id_type`);

--
-- Indexes for table `page_lang`
--
ALTER TABLE `page_lang`
 ADD PRIMARY KEY (`id_page`,`lang`);

--
-- Indexes for table `page_media`
--
ALTER TABLE `page_media`
 ADD PRIMARY KEY (`id_page`,`id_media`);

--
-- Indexes for table `resource`
--
ALTER TABLE `resource`
 ADD PRIMARY KEY (`id_resource`), ADD UNIQUE KEY `resource_key` (`resource`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
 ADD PRIMARY KEY (`id_role`), ADD UNIQUE KEY `role_code` (`role_code`);

--
-- Indexes for table `rule`
--
ALTER TABLE `rule`
 ADD PRIMARY KEY (`id_role`,`resource`,`actions`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
 ADD PRIMARY KEY (`id_setting`), ADD UNIQUE KEY `idx_unq_setting` (`name`,`lang`);

--
-- Indexes for table `tag`
--
ALTER TABLE `tag`
 ADD PRIMARY KEY (`id_tag`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
 ADD PRIMARY KEY (`id_type`);

--
-- Indexes for table `ui_element`
--
ALTER TABLE `ui_element`
 ADD PRIMARY KEY (`id_ui_element`);

--
-- Indexes for table `ui_element_lk_extend`
--
ALTER TABLE `ui_element_lk_extend`
 ADD PRIMARY KEY (`id_ui_element`,`id_extend`);

--
-- Indexes for table `url`
--
ALTER TABLE `url`
 ADD PRIMARY KEY (`id_url`), ADD KEY `idx_url_type` (`type`), ADD KEY `idx_url_active` (`active`), ADD KEY `idx_url_lang` (`lang`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`id_user`), ADD UNIQUE KEY `username` (`username`), ADD KEY `id_role` (`id_role`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `api_key`
--
ALTER TABLE `api_key`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `api_log`
--
ALTER TABLE `api_log`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
MODIFY `id_article` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `article_comment`
--
ALTER TABLE `article_comment`
MODIFY `id_article_comment` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `article_type`
--
ALTER TABLE `article_type`
MODIFY `id_type` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `captcha`
--
ALTER TABLE `captcha`
MODIFY `id_captcha` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
MODIFY `id_category` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `element`
--
ALTER TABLE `element`
MODIFY `id_element` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `element_definition`
--
ALTER TABLE `element_definition`
MODIFY `id_element_definition` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `event_log`
--
ALTER TABLE `event_log`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `extend_field`
--
ALTER TABLE `extend_field`
MODIFY `id_extend_field` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `extend_fields`
--
ALTER TABLE `extend_fields`
MODIFY `id_extend_fields` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=94;
--
-- AUTO_INCREMENT for table `extend_field_type`
--
ALTER TABLE `extend_field_type`
MODIFY `id_extend_field_type` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=131;
--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
MODIFY `id_item` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `item_definition`
--
ALTER TABLE `item_definition`
MODIFY `id_item_definition` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
MODIFY `id_media` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=64;
--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `module`
--
ALTER TABLE `module`
MODIFY `id_module` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `module_setting`
--
ALTER TABLE `module_setting`
MODIFY `id_module_setting` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `note`
--
ALTER TABLE `note`
MODIFY `id_note` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
MODIFY `id_notification` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `page`
--
ALTER TABLE `page`
MODIFY `id_page` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `resource`
--
ALTER TABLE `resource`
MODIFY `id_resource` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=304;
--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
MODIFY `id_role` smallint(4) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
MODIFY `id_setting` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `tag`
--
ALTER TABLE `tag`
MODIFY `id_tag` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `type`
--
ALTER TABLE `type`
MODIFY `id_type` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ui_element`
--
ALTER TABLE `ui_element`
MODIFY `id_ui_element` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `url`
--
ALTER TABLE `url`
MODIFY `id_url` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=94;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `id_user` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
