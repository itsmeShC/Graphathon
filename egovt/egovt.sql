-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 13, 2018 at 02:44 AM
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
-- Table structure for table `assemblymembers`
--

CREATE TABLE `assemblymembers` (
  `eid` int(11) NOT NULL,
  `constituency` varchar(40) NOT NULL,
  `electedMember` varchar(40) NOT NULL,
  `pid` varchar(40) NOT NULL,
  `year` year(4) NOT NULL,
  `did` int(2) NOT NULL,
  `f` int(1) NOT NULL DEFAULT '0',
  `ctotal` int(6) NOT NULL DEFAULT '0',
  `vtotal` int(6) NOT NULL DEFAULT '0',
  `unview` int(6) NOT NULL DEFAULT '0',
  `resolved` int(6) NOT NULL DEFAULT '0',
  `unsatisfied` int(6) NOT NULL DEFAULT '0',
  `pending` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assemblymembers`
--

INSERT INTO `assemblymembers` (`eid`, `constituency`, `electedMember`, `pid`, `year`, `did`, `f`, `ctotal`, `vtotal`, `unview`, `resolved`, `unsatisfied`, `pending`) VALUES
(3, 'purola ', 'raj kumar', '2', 2017, 13, 0, 50, 25, 10, 5, 2, 8),
(4, 'yamunotri', 'kedar singh rawat', '1', 2017, 13, 0, 0, 0, 0, 0, 0, 0),
(5, 'gangotri', 'gopal singh rawat', '1', 2017, 13, 0, 0, 0, 0, 0, 0, 0),
(6, 'badrinath', 'mahendra bhatt', '1', 2017, 3, 0, 0, 0, 0, 0, 0, 0),
(7, 'tharali ', 'magan lal shah', '1', 2017, 3, 0, 0, 0, 0, 0, 0, 0),
(8, 'karnaprayag', 'surendra singh negi', '1', 2017, 3, 0, 0, 0, 0, 0, 0, 0),
(9, 'kedarnath', 'manoj rawat', '2', 2017, 10, 0, 0, 0, 0, 0, 0, 0),
(10, 'rudraprayag', 'bharat singh rawat', '1', 2017, 10, 0, 0, 0, 0, 0, 0, 0),
(11, 'ghansali ', 'shakti lal shah', '1', 2017, 11, 0, 0, 0, 0, 0, 0, 0),
(12, 'devprayag', 'vinod kandari', '1', 2017, 11, 0, 0, 0, 0, 0, 0, 0),
(13, 'narendranagar', 'subodh uniyal ', '1', 2017, 11, 0, 0, 0, 0, 0, 0, 0),
(14, 'pratapnagar', 'vijay singh panwar', '1', 2017, 11, 0, 0, 0, 0, 0, 0, 0),
(15, 'tehri', 'dhan singh negi', '1', 2017, 11, 0, 0, 0, 0, 0, 0, 0),
(16, 'dhanaulti', 'pritam singh panwar', '3', 2017, 11, 0, 0, 0, 0, 0, 0, 0),
(17, 'chakrata', 'pritam singh', '2', 2017, 5, 0, 0, 0, 0, 0, 0, 0),
(18, 'vikasnagar', 'munna singh chauhan', '1', 2017, 5, 0, 0, 0, 0, 0, 0, 0),
(19, 'sahaspur', 'sahdev singh pundir', '1', 2017, 5, 0, 0, 0, 0, 0, 0, 0),
(20, 'dharampur', 'vinod chamoli', '1', 2017, 5, 0, 0, 0, 0, 0, 0, 0),
(21, 'raipur', 'umesh sharma \'kau\'', '1', 2017, 5, 0, 0, 0, 0, 0, 0, 0),
(22, 'rajpur road', 'khajan das', '1', 2017, 5, 0, 0, 0, 0, 0, 0, 0),
(23, 'dehradun cantt', 'harbans kapoor', '1', 2017, 5, 0, 0, 0, 0, 0, 0, 0),
(24, 'mussoorie', 'ganesh joshi', '1', 2017, 5, 0, 0, 0, 0, 0, 0, 0),
(25, 'doiwala', 'trivendra singh rawat', '1', 2017, 5, 2, 0, 0, 0, 0, 0, 0),
(26, 'rishikesh', 'premchand aggarwal', '1', 2017, 5, 1, 0, 0, 0, 0, 0, 0),
(27, 'haridwar', 'madan kaushik ', '1', 2017, 6, 1, 0, 0, 0, 0, 0, 0),
(28, 'bhel ranipur', 'adesh chauhan', '1', 2017, 6, 0, 0, 0, 0, 0, 0, 0),
(29, 'jwalapur', 'suresh rathor', '1', 2017, 6, 0, 0, 0, 0, 0, 0, 0),
(30, 'bhagwanpur', 'mamta rakesh', '2', 2017, 6, 0, 0, 0, 0, 0, 0, 0),
(31, 'jhabrera ', 'deshraj karnwal', '1', 2017, 6, 0, 0, 0, 0, 0, 0, 0),
(32, 'piran kaliyar', 'furqan ahmad', '2', 2017, 6, 0, 0, 0, 0, 0, 0, 0),
(33, 'roorkee', 'pradip batra', '1', 2017, 6, 0, 0, 0, 0, 0, 0, 0),
(34, 'khanpur', 'kunwar pranav singh ', '2', 2017, 6, 0, 0, 0, 0, 0, 0, 0),
(35, 'manglaur', 'qazi muhammad ', '1', 2017, 6, 0, 0, 0, 0, 0, 0, 0),
(36, 'laksar', 'sanjay gupta', '1', 2017, 6, 0, 0, 0, 0, 0, 0, 0),
(37, 'haridwar rural', 'yatishwaranand', '1', 2017, 6, 0, 0, 0, 0, 0, 0, 0),
(38, 'yamkeshwar', 'ritu khanduri bhushan', '1', 2017, 6, 0, 0, 0, 0, 0, 0, 0),
(39, 'pauri ', 'mukesh singh koli', '1', 2017, 8, 0, 0, 0, 0, 0, 0, 0),
(40, 'didihat', 'bishan singh chuphal', '1', 2017, 9, 0, 0, 0, 0, 0, 0, 0),
(41, 'pithoragarh', 'prakash pant ', '1', 2002, 9, 1, 0, 0, 0, 0, 0, 0),
(42, 'gangolihat ', 'mina gangola', '1', 2017, 9, 0, 0, 0, 0, 0, 0, 0),
(43, 'Srinagar', 'Dr. Dhan Singh Rawat', '1', 2017, 8, 1, 0, 0, 0, 0, 0, 0),
(44, 'Chaubattakhal', 'Satpal Maharaj', '1', 2017, 8, 1, 0, 0, 0, 0, 0, 0),
(45, 'Lansdowne', 'Dilip Singh Rawat', '1', 2017, 8, 0, 0, 0, 0, 0, 0, 0),
(46, 'Kotdwar', 'Dr. Harak Singh Rawat', '1', 2017, 8, 1, 0, 0, 0, 0, 0, 0),
(47, 'Dharchula', 'Harish Singh Dhami', '2', 2017, 9, 0, 0, 0, 0, 0, 0, 0),
(48, 'Kapkot', 'Balwant Singh Bhauryal', '1', 2017, 2, 0, 0, 0, 0, 0, 0, 0),
(49, 'Bageshwar ', 'Chandan Ram Das', '1', 2017, 2, 0, 0, 0, 0, 0, 0, 0),
(50, 'Dwarahat	', 'Mahesh Singh Negi', '1', 2017, 1, 0, 0, 0, 0, 0, 0, 0),
(51, 'Salt', 'Surendra Singh Jeena', '1', 2017, 1, 0, 0, 0, 0, 0, 0, 0),
(52, 'Ranikhet', 'Karan Singh Mahra', '2', 2017, 1, 0, 0, 0, 0, 0, 0, 0),
(53, 'Someshwar', 'Rekha Arya', '1', 2017, 1, 1, 0, 0, 0, 0, 0, 0),
(54, 'Almora', 'Raghunath Singh Chauhan', '1', 2017, 1, 0, 0, 0, 0, 0, 0, 0),
(55, 'Jageshwar', 'Govind Singh Kunjwal', '2', 2017, 1, 0, 0, 0, 0, 0, 0, 0),
(56, 'Lohaghat', 'Puran Singh Phartyal', '1', 2017, 4, 0, 0, 0, 0, 0, 0, 0),
(57, 'Champawat', 'Kailash Chandra Gahtori', '1', 2017, 4, 0, 0, 0, 0, 0, 0, 0),
(58, 'Lalkuan', 'Navin Chandra Dumka', '1', 2017, 7, 0, 0, 0, 0, 0, 0, 0),
(59, 'Bhimtal', 'Ram Singh Kaira', '3', 2017, 7, 0, 0, 0, 0, 0, 0, 0),
(60, 'Nainital', 'Sanjiv Arya', '1', 2017, 7, 0, 0, 0, 0, 0, 0, 0),
(61, 'Haldwani', 'Dr. Indira Hridayesh', '2', 2017, 7, 0, 0, 0, 0, 0, 0, 0),
(62, 'Kaladhungi', 'Banshidhar Bhagat', '1', 2017, 12, 0, 0, 0, 0, 0, 0, 0),
(63, 'Ramnagar', 'Diwan Singh Bisht', '1', 2017, 12, 0, 0, 0, 0, 0, 0, 0),
(64, 'Jaspur', 'Adesh Singh Chauhan', '1', 2017, 12, 0, 0, 0, 0, 0, 0, 0),
(65, 'Kashipur', 'Harbhajan Singh Cheema', '1', 2017, 12, 0, 0, 0, 0, 0, 0, 0),
(66, 'Bajpur ', 'Yashpal Arya', '1', 2017, 12, 1, 0, 0, 0, 0, 0, 0),
(67, 'Gadarpur', 'Arvind Pandey ', '1', 2017, 12, 1, 0, 0, 0, 0, 0, 0),
(68, 'Rudrapur', 'Rajkumar Thukral', '1', 2017, 12, 0, 0, 0, 0, 0, 0, 0),
(69, 'Kichha', 'Rajesh Shukla', '1', 2017, 12, 0, 0, 0, 0, 0, 0, 0),
(70, 'Sitarganj', 'Saurabh Bahuguna', '1', 2017, 12, 0, 0, 0, 0, 0, 0, 0),
(71, 'Nanakmatta', 'Dr. Prem Singh Rana', '1', 2017, 12, 0, 0, 0, 0, 0, 0, 0),
(72, 'Khatima', 'Pushkar Singh Dhami', '1', 2017, 12, 0, 0, 0, 0, 0, 0, 0);

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
(000001, '3a70b24e', 'Sir, I want to draw your kind attention on the road near GEETA COLONY, SHAMSHAN GHAT, 10 BLOCK, near Valmiki College of Education, and Ambedkar Institute of Advanced Communication Technologies, and other near three governments school. <br />\r\n<br />\r\nThis road has been broken for the last three to four years. So many people have been spoken to our MLA, Ex-Council for the repairing of this road. But no action has been taken so far.<br />\r\n<br />\r\nI want to remind through your portal to concerned MLA / Councilor to prepare this report on urgent basis as the rainy season is going to be start. There are two colleges and three to four school comes near this road and whole traffic become disrupted due to this unrepair road. <br />\r\n<br />\r\nAlso there is unauthorisized parking on both sides on this road, and do jam in afternoon particularly.<br />\r\n<br />\r\nThis road has been broken and so many potholes on this road for the last 3-4 years. Due to broken road potholes, so many accidents have become here but no body is caring.<br />\r\n<br />\r\nPlease take action against the defaulters and give instruction to repair this road on urgent basis.', '0', '2018-01-28 16:18:28', '1', 15, 'BAD ROAD WITH POTHOLES', 25, ''),
(000007, '1a819199', 'Situated far away from each other, the villages of Sain and Gairsain virtually represent two opposite factors of Uttarakhand politics: migration and rehabilitation. <br />\r\n<br />\r\nWhile Sain is the ancestral village of new Army chief General Bipin Singh Rawat, Gairsain is seen as a symbol of the politics of hills in this state. Ironically, the hills are gradually losing their political importance in the state, in view of increasing migration from the region and the resultant fall in the number of vot ..', '0', '2018-04-12 23:35:59', '3', 0, 'Hill areas losing political importance as migration increases', 24, ''),
(000008, '99fd4cc3', 'The young state will complete 16 years this November but it has already seen eight chief ministers, and not more than one staying in power for a full five-year term. Political over-ambitions, intra party rivalry, shameless apparent corruption, inefficiency of the leaders, lack of effective resistance from the civil society and critical media reporting could be some of the possible reasons.', '0', '2018-04-12 23:49:33', '3', 0, 'Uttarakhand is again in the news and for the same old reasons: its political instability and power s', 57, ''),
(000009, '0cec52b4', 'Obtaining sufficient drinking water with acceptable quality under circumstances of lack, such as droughts, is a challenge in drought-prone areas of India. This study examined rural drinking water availability issues during a recent drought (2012) through 22 focus group discussions (FGDs) in a drought-prone catchment of India', '0', '2018-04-12 23:52:11', '3', 0, 'Rural drinking water issues in India\\\'s hilly area: a case of Uttarakhand state', 65, ''),
(000010, '8bb92764', 'Children getting ill , houses are smelling ,our life is on risk but government is doing nothing . they used to do work only when there is election. If the sewage system was good our children were not fell il.<br />\r\nThe Sewages are all full ,they are smelling ,they don\\\'t have the proper flowing system so much waste stoping the flow and nagar palika is not aware of it.<br />\r\nplease<br />\r\ndo something !', '0', '2018-04-12 23:58:41', '1', 3, 'Houses are smelling, children are becoming ill , thats all because of improper sewage system', 65, ''),
(000011, '93fee8bf', 'Children getting ill , houses are smelling ,our life is on risk but government is doing nothing . they used to do work only when there is election. If the sewage system was good our children were not fell il.<br />\r\nThe Sewages are all full ,they are smelling ,they don\\\'t have the proper flowing system so much waste stoping the flow and nagar palika is not aware of it.<br />\r\nplease<br />\r\ndo something !', '0', '2018-04-12 23:59:47', '1', 1, 'Houses are smelling, children are becoming ill , thats all because of improper sewage system', 65, '');

-- --------------------------------------------------------

--
-- Table structure for table `currentcabinet`
--

CREATE TABLE `currentcabinet` (
  `id` int(4) NOT NULL,
  `name` varchar(100) NOT NULL,
  `eid` int(6) NOT NULL,
  `year` year(4) NOT NULL,
  `did` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `district`
--

CREATE TABLE `district` (
  `did` int(2) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `district`
--

INSERT INTO `district` (`did`, `name`) VALUES
(1, 'almora'),
(2, 'bageshwar'),
(3, 'chamoli'),
(4, 'champawat'),
(5, 'dehradun'),
(6, 'haridwar'),
(7, 'nainital'),
(8, 'pauri garhwal'),
(9, 'pithoragarh'),
(10, 'rudraprayag'),
(11, 'tehri garhwal'),
(12, 'udham singh nagar'),
(13, 'uttarkashi');

-- --------------------------------------------------------

--
-- Table structure for table `party`
--

CREATE TABLE `party` (
  `pid` int(2) NOT NULL,
  `party` varchar(30) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `party`
--

INSERT INTO `party` (`pid`, `party`, `name`) VALUES
(1, 'bharatiya janata party', 'BJP'),
(2, 'indian national congress', 'INC'),
(3, 'independents', 'INDEPENDENTS');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `id` int(11) NOT NULL,
  `details` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `details`) VALUES
(0, 'unseen'),
(1, 'seen'),
(2, 'pending'),
(3, 'resolve');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `uname` varchar(12) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `hash` varchar(256) NOT NULL,
  `active` varchar(1) NOT NULL DEFAULT 'f',
  `role` varchar(6) NOT NULL,
  `email` varchar(100) NOT NULL,
  `aadhar` varchar(12) NOT NULL,
  `confirm_code` int(6) NOT NULL,
  `mobile` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `uname`, `fname`, `hash`, `active`, `role`, `email`, `aadhar`, `confirm_code`, `mobile`) VALUES
(1, 'ashu', 'ashish', '$2y$10$UdCYYjRpJUXQxbXeSrdlLemn9gZPCpbI4ZFvqwnURIxk36Bqfj3tW', 'a', '', 'as19ish@gmail.com', '1519/5829/16', 426801, '8979836671'),
(2, 'dheru', 'dheeraj', '$2y$10$TkdCPPcBOHrJZuICB3EmNurSUsOrZQAZwm.xVAs6BZIVWYnn67Is.', 'a', '', 'as@gmail.com', '526256126255', 554913, '9837613961'),
(3, 'itsmeshc', 'shivam', '$2y$10$PJXP2ILfIv8MVj3C77n2..AUUo1tJxhqFUrKb/HYe2L41cVQlc4Y.', 'a', '', 'shivamchauhanksp@gmail.com', '667788990011', 199889, '7310795100');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assemblymembers`
--
ALTER TABLE `assemblymembers`
  ADD PRIMARY KEY (`eid`);

--
-- Indexes for table `complaints`
--
ALTER TABLE `complaints`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currentcabinet`
--
ALTER TABLE `currentcabinet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `district`
--
ALTER TABLE `district`
  ADD PRIMARY KEY (`did`);

--
-- Indexes for table `party`
--
ALTER TABLE `party`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `aadhar` (`aadhar`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assemblymembers`
--
ALTER TABLE `assemblymembers`
  MODIFY `eid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `complaints`
--
ALTER TABLE `complaints`
  MODIFY `id` int(6) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `currentcabinet`
--
ALTER TABLE `currentcabinet`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `district`
--
ALTER TABLE `district`
  MODIFY `did` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `party`
--
ALTER TABLE `party`
  MODIFY `pid` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
