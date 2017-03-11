-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 11, 2017 at 01:35 PM
-- Server version: 5.6.25
-- PHP Version: 5.5.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `regsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

DROP TABLE IF EXISTS `ci_sessions`;
CREATE TABLE IF NOT EXISTS `ci_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `slug` varchar(128) NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `slug`, `text`) VALUES
(1, 'News Article 1', 'news_article_1', '\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Cras at elit fermentum, maximus lorem non, commodo quam. Nam suscipit arcu purus, in finibus ligula elementum id. Praesent a congue justo, ac maximus odio. Proin blandit massa tortor, rhoncus laoreet metus porttitor non. Etiam venenatis erat sed elit ultrices porta. Aliquam feugiat dui risus, id pulvinar sem ultrices non. Suspendisse laoreet efficitur ullamcorper. Fusce quis posuere ex. Praesent lobortis lorem ullamcorper nibh ultricies tempus. Morbi commodo consequat magna, eu sagittis velit fringilla ac. Proin convallis ligula vitae est viverra condimentum. Pellentesque ipsum risus, mollis vel dolor fringilla, tincidunt molestie eros. Morbi ullamcorper eleifend malesuada.\r\n\r\nVivamus dictum ullamcorper aliquam. Suspendisse potenti. Fusce ligula neque, sagittis sed imperdiet ut, luctus et dui. Cras blandit metus ac lectus tristique rhoncus. Aenean rhoncus eu felis eu faucibus. Nam sed ex nec odio porttitor interdum in non turpis. Nulla eget orci porta, lobortis tellus ut, efficitur arcu. Vivamus aliquet ex eu libero semper euismod et ac ante. Etiam ultrices eros nec blandit tincidunt. Nulla tincidunt nisl id arcu dictum, at ultricies turpis elementum. Phasellus sit amet sem dolor. Suspendisse potenti.\r\nNew 1 Ut tincidunt eros nec erat hendrerit, sit amet auctor odio consequat. Sed efficitur mauris ut enim euismod, ut fermentum eros ullamcorper. Cras feugiat lorem odio, et fermentum tellus sodales nec. Curabitur nec ex ac erat hendrerit cursus. Phasellus in feugiat magna. Vivamus placerat vel sapien vel laoreet. Vivamus id ornare elit, vitae pellentesque est. Donec posuere volutpat neque, quis venenatis mi iaculis ultricies. Nulla in enim at diam ornare aliquet. Ut eleifend sodales eleifend. '),
(2, 'News Article 2', 'news_article_2', '\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Cras at elit fermentum, maximus lorem non, commodo quam. Nam suscipit arcu purus, in finibus ligula elementum id. Praesent a congue justo, ac maximus odio. Proin blandit massa tortor, rhoncus laoreet metus porttitor non. Etiam venenatis erat sed elit ultrices porta. Aliquam feugiat dui risus, id pulvinar sem ultrices non. Suspendisse laoreet efficitur ullamcorper. Fusce quis posuere ex. Praesent lobortis lorem ullamcorper nibh ultricies tempus. Morbi commodo consequat magna, eu sagittis velit fringilla ac. Proin convallis ligula vitae est viverra condimentum. Pellentesque ipsum risus, mollis vel dolor fringilla, tincidunt molestie eros. Morbi ullamcorper eleifend malesuada.\r\n\r\nVivamus dictum ullamcorper aliquam. Suspendisse potenti. Fusce ligula neque, sagittis sed imperdiet ut, luctus et dui. Cras blandit metus ac lectus tristique rhoncus. Aenean rhoncus eu felis eu faucibus. Nam sed ex nec odio porttitor interdum in non turpis. Nulla eget orci porta, lobortis tellus ut, efficitur arcu. Vivamus aliquet ex eu libero semper euismod et ac ante. Etiam ultrices eros nec blandit tincidunt. Nulla tincidunt nisl id arcu dictum, at ultricies turpis elementum. Phasellus sit amet sem dolor. Suspendisse potenti.\r\n\r\nUt tincidunt eros nec erat hendrerit, sit amet auctor odio consequat. Sed efficitur mauris ut enim euismod, ut fermentum eros ullamcorper. Cras feugiat lorem odio, et fermentum tellus sodales nec. Curabitur nec ex ac erat hendrerit cursus. Phasellus in feugiat magna. Vivamus placerat vel sapien vel laoreet. Vivamus id ornare elit, vitae pellentesque est. Donec posuere volutpat neque, quis venenatis mi iaculis ultricies. Nulla in enim at diam ornare aliquet. Ut eleifend sodales eleifend. '),
(3, 'News Article 3', 'news_article_3', '\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Cras at elit fermentum, maximus lorem non, commodo quam. Nam suscipit arcu purus, in finibus ligula elementum id. Praesent a congue justo, ac maximus odio. Proin blandit massa tortor, rhoncus laoreet metus porttitor non. Etiam venenatis erat sed elit ultrices porta. Aliquam feugiat dui risus, id pulvinar sem ultrices non. Suspendisse laoreet efficitur ullamcorper. Fusce quis posuere ex. Praesent lobortis lorem ullamcorper nibh ultricies tempus. Morbi commodo consequat magna, eu sagittis velit fringilla ac. Proin convallis ligula vitae est viverra condimentum. Pellentesque ipsum risus, mollis vel dolor fringilla, tincidunt molestie eros. Morbi ullamcorper eleifend malesuada.\r\n\r\nVivamus dictum ullamcorper aliquam. Suspendisse potenti. Fusce ligula neque, sagittis sed imperdiet ut, luctus et dui. Cras blandit metus ac lectus tristique rhoncus. Aenean rhoncus eu felis eu faucibus. Nam sed ex nec odio porttitor interdum in non turpis. Nulla eget orci porta, lobortis tellus ut, efficitur arcu. Vivamus aliquet ex eu libero semper euismod et ac ante. Etiam ultrices eros nec blandit tincidunt. Nulla tincidunt nisl id arcu dictum, at ultricies turpis elementum. Phasellus sit amet sem dolor. Suspendisse potenti.\r\n\r\nUt tincidunt eros nec erat hendrerit, sit amet auctor odio consequat. Sed efficitur mauris ut enim euismod, ut fermentum eros ullamcorper. Cras feugiat lorem odio, et fermentum tellus sodales nec. Curabitur nec ex ac erat hendrerit cursus. Phasellus in feugiat magna. Vivamus placerat vel sapien vel laoreet. Vivamus id ornare elit, vitae pellentesque est. Donec posuere volutpat neque, quis venenatis mi iaculis ultricies. Nulla in enim at diam ornare aliquet. Ut eleifend sodales eleifend. '),
(4, 'News Article 4', 'news_article_4', '\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Cras at elit fermentum, maximus lorem non, commodo quam. Nam suscipit arcu purus, in finibus ligula elementum id. Praesent a congue justo, ac maximus odio. Proin blandit massa tortor, rhoncus laoreet metus porttitor non. Etiam venenatis erat sed elit ultrices porta. Aliquam feugiat dui risus, id pulvinar sem ultrices non. Suspendisse laoreet efficitur ullamcorper. Fusce quis posuere ex. Praesent lobortis lorem ullamcorper nibh ultricies tempus. Morbi commodo consequat magna, eu sagittis velit fringilla ac. Proin convallis ligula vitae est viverra condimentum. Pellentesque ipsum risus, mollis vel dolor fringilla, tincidunt molestie eros. Morbi ullamcorper eleifend malesuada.\r\n\r\nVivamus dictum ullamcorper aliquam. Suspendisse potenti. Fusce ligula neque, sagittis sed imperdiet ut, luctus et dui. Cras blandit metus ac lectus tristique rhoncus. Aenean rhoncus eu felis eu faucibus. Nam sed ex nec odio porttitor interdum in non turpis. Nulla eget orci porta, lobortis tellus ut, efficitur arcu. Vivamus aliquet ex eu libero semper euismod et ac ante. Etiam ultrices eros nec blandit tincidunt. Nulla tincidunt nisl id arcu dictum, at ultricies turpis elementum. Phasellus sit amet sem dolor. Suspendisse potenti.\r\n\r\nUt tincidunt eros nec erat hendrerit, sit amet auctor odio consequat. Sed efficitur mauris ut enim euismod, ut fermentum eros ullamcorper. Cras feugiat lorem odio, et fermentum tellus sodales nec. Curabitur nec ex ac erat hendrerit cursus. Phasellus in feugiat magna. Vivamus placerat vel sapien vel laoreet. Vivamus id ornare elit, vitae pellentesque est. Donec posuere volutpat neque, quis venenatis mi iaculis ultricies. Nulla in enim at diam ornare aliquet. Ut eleifend sodales eleifend. '),
(5, 'News Item 5', 'news-item-5', ' Vivamus dictum ullamcorper aliquam. Suspendisse potenti. Fusce ligula neque, sagittis sed imperdiet ut, luctus et dui. Cras blandit metus ac lectus tristique rhoncus. Aenean rhoncus eu felis eu faucibus. Nam sed ex nec odio porttitor interdum in non turpis. Nulla eget orci porta, lobortis tellus ut, efficitur arcu. Vivamus aliquet ex eu libero semper euismod et ac ante. Etiam ultrices eros nec blandit tincidunt. Nulla tincidunt nisl id arcu dictum, at ultricies turpis elementum. Phasellus sit amet sem dolor. Suspendisse potenti.\r\n\r\nUt tincidunt eros nec erat hendrerit, sit amet auctor odio consequat. Sed efficitur mauris ut enim euismod, ut fermentum eros ullamcorper. Cras feugiat lorem odio, et fermentum tellus sodales nec. Curabitur nec ex ac erat hendrerit cursus. Phasellus in feugiat magna. Vivamus placerat vel sapien vel laoreet. Vivamus id ornare elit, vitae pellentesque est. Donec posuere volutpat neque, quis venenatis mi iaculis ultricies. Nulla in enim at diam ornare aliquet. Ut eleifend sodales eleifend. '),
(6, 'News Item 6', 'news-item-6', ' Vivamus dictum ullamcorper aliquam. Suspendisse potenti. Fusce ligula neque, sagittis sed imperdiet ut, luctus et dui. Cras blandit metus ac lectus tristique rhoncus. Aenean rhoncus eu felis eu faucibus. Nam sed ex nec odio porttitor interdum in non turpis. Nulla eget orci porta, lobortis tellus ut, efficitur arcu. Vivamus aliquet ex eu libero semper euismod et ac ante. Etiam ultrices eros nec blandit tincidunt. Nulla tincidunt nisl id arcu dictum, at ultricies turpis elementum. Phasellus sit amet sem dolor. Suspendisse potenti.\r\n\r\nUt tincidunt eros nec erat hendrerit, sit amet auctor odio consequat. Sed efficitur mauris ut enim euismod, ut fermentum eros ullamcorper. Cras feugiat lorem odio, et fermentum tellus sodales nec. Curabitur nec ex ac erat hendrerit cursus. Phasellus in feugiat magna. Vivamus placerat vel sapien vel laoreet. Vivamus id ornare elit, vitae pellentesque est. Donec posuere volutpat neque, quis venenatis mi iaculis ultricies. Nulla in enim at diam ornare aliquet. Ut eleifend sodales eleifend. ');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `username` varchar(3000) NOT NULL,
  `password` varchar(300) NOT NULL,
  `email` varchar(300) NOT NULL,
  `active` int(11) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `active`, `created`) VALUES
(1, 'charles', 'password', 'charles@gmail.com', 1, '2017-03-11 12:41:08'),
(2, 'brian', 'password', 'briangmail.com', 1, '2017-03-11 14:08:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slug` (`slug`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;