-- --------------------------------------------------------

--
-- Table structure for table `jos_chronoengine_connections`
--

CREATE TABLE IF NOT EXISTS `#__forms6` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `alias` varchar(200) NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `public` tinyint(1) NOT NULL DEFAULT '1',
  `description` text NOT NULL,
  `params` text NOT NULL,
  `events` text NOT NULL,
  `sections` text NOT NULL,
  `views` longtext NOT NULL,
  `functions` longtext NOT NULL,
  `locales` longtext NOT NULL,
  `rules` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `alias` (`alias`)
) DEFAULT CHARSET=utf8;

ALTER TABLE `#__forms6` CHANGE `views` `views` LONGTEXT CHARACTER SET utf8 NOT NULL;
ALTER TABLE `#__forms6` CHANGE `functions` `functions` LONGTEXT CHARACTER SET utf8 NOT NULL;
ALTER TABLE `#__forms6` CHANGE `locales` `locales` LONGTEXT CHARACTER SET utf8 NOT NULL;