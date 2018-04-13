-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 13, 2018 at 02:31 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.1.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `egovt`
--

-- --------------------------------------------------------

--
-- Table structure for table `complaints`
--

CREATE TABLE `complaints` (
  `id` int(6) UNSIGNED ZEROFILL NOT NULL,
  `qid` varchar(8) NOT NULL,
  `prob` text NOT NULL,
  `status` varchar(1) NOT NULL DEFAULT '0',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `uid` varchar(8) NOT NULL,
  `views` int(4) NOT NULL,
  `title` varchar(100) NOT NULL,
  `eid` int(6) NOT NULL,
  `foto` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `complaints`
--

INSERT INTO `complaints` (`id`, `qid`, `prob`, `status`, `time`, `uid`, `views`, `title`, `eid`, `foto`) VALUES
(000001, '3a70b24e', 'Sir, I want to draw your kind attention on the road near GEETA COLONY, SHAMSHAN GHAT, 10 BLOCK, near Valmiki College of Education, and Ambedkar Institute of Advanced Communication Technologies, and other near three governments school. <br />\r\n<br />\r\nThis road has been broken for the last three to four years. So many people have been spoken to our MLA, Ex-Council for the repairing of this road. But no action has been taken so far.<br />\r\n<br />\r\nI want to remind through your portal to concerned MLA / Councilor to prepare this report on urgent basis as the rainy season is going to be start. There are two colleges and three to four school comes near this road and whole traffic become disrupted due to this unrepair road. <br />\r\n<br />\r\nAlso there is unauthorisized parking on both sides on this road, and do jam in afternoon particularly.<br />\r\n<br />\r\nThis road has been broken and so many potholes on this road for the last 3-4 years. Due to broken road potholes, so many accidents have become here but no body is caring.<br />\r\n<br />\r\nPlease take action against the defaulters and give instruction to repair this road on urgent basis.', '0', '2018-01-28 16:18:28', '1', 14, 'BAD ROAD WITH POTHOLES', 25, ''),
(000007, '1a819199', 'Situated far away from each other, the villages of Sain and Gairsain virtually represent two opposite factors of Uttarakhand politics: migration and rehabilitation. <br />\r\n<br />\r\nWhile Sain is the ancestral village of new Army chief General Bipin Singh Rawat, Gairsain is seen as a symbol of the politics of hills in this state. Ironically, the hills are gradually losing their political importance in the state, in view of increasing migration from the region and the resultant fall in the number of vot ..', '0', '2018-04-12 23:35:59', '3', 0, 'Hill areas losing political importance as migration increases', 24, ''),
(000008, '99fd4cc3', 'The young state will complete 16 years this November but it has already seen eight chief ministers, and not more than one staying in power for a full five-year term. Political over-ambitions, intra party rivalry, shameless apparent corruption, inefficiency of the leaders, lack of effective resistance from the civil society and critical media reporting could be some of the possible reasons.', '0', '2018-04-12 23:49:33', '3', 0, 'Uttarakhand is again in the news and for the same old reasons: its political instability and power s', 57, ''),
(000009, '0cec52b4', 'Obtaining sufficient drinking water with acceptable quality under circumstances of lack, such as droughts, is a challenge in drought-prone areas of India. This study examined rural drinking water availability issues during a recent drought (2012) through 22 focus group discussions (FGDs) in a drought-prone catchment of India', '0', '2018-04-12 23:52:11', '3', 0, 'Rural drinking water issues in India\\\'s hilly area: a case of Uttarakhand state', 65, ''),
(000010, '8bb92764', 'Children getting ill , houses are smelling ,our life is on risk but government is doing nothing . they used to do work only when there is election. If the sewage system was good our children were not fell il.<br />\r\nThe Sewages are all full ,they are smelling ,they don\\\'t have the proper flowing system so much waste stoping the flow and nagar palika is not aware of it.<br />\r\nplease<br />\r\ndo something !', '0', '2018-04-12 23:58:41', '1', 3, 'Houses are smelling, children are becoming ill , thats all because of improper sewage system', 65, ''),
(000011, '93fee8bf', 'Children getting ill , houses are smelling ,our life is on risk but government is doing nothing . they used to do work only when there is election. If the sewage system was good our children were not fell il.<br />\r\nThe Sewages are all full ,they are smelling ,they don\\\'t have the proper flowing system so much waste stoping the flow and nagar palika is not aware of it.<br />\r\nplease<br />\r\ndo something !', '0', '2018-04-12 23:59:47', '1', 1, 'Houses are smelling, children are becoming ill , thats all because of improper sewage system', 65, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `complaints`
--
ALTER TABLE `complaints`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `complaints`
--
ALTER TABLE `complaints`
  MODIFY `id` int(6) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
