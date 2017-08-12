CREATE TABLE IF NOT EXISTS `codopm_messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `thread_hash` varchar(30) NOT NULL,
  `msg_from` int(11) NOT NULL,
  `msg_from_name` varchar(255) NOT NULL,
  `msg_to` int(11) NOT NULL,
  `msg_to_name` varchar(255) NOT NULL,
  `message` text,
  `attachments` text,
  `owner` int(11) NOT NULL,
  `sent` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `recd` int(10) unsigned NOT NULL DEFAULT '0',
  `time` double(15,4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=0 ;

CREATE TABLE IF NOT EXISTS `codopm_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `option_name` varchar(50) NOT NULL,
  `option_value` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='contains codopm configuration' AUTO_INCREMENT=0 ;

INSERT INTO `codopm_config` (`id`, `option_name`, `option_value`) VALUES
(1, 'max_filename_len', '50'),
(2, 'msgs_per_page', '10'),
(3, 'valid_exts', 'jpeg,jpg,png,gif,doc,docx,zip'),
(4, 'per_filesize_limit', '2000'),
(5, 'total_filesize_limit', '10000'),
(6, 'conv_per_page', '10'),
(7, 'conv_load_offset', '10');
