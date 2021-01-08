-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 08, 2021 at 05:27 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `galal`
--

-- --------------------------------------------------------

--
-- Table structure for table `all_p`
--

CREATE TABLE `all_p` (
  `id_P` int(11) NOT NULL,
  `type_P` varchar(100) NOT NULL,
  `sub_P` varchar(100) NOT NULL,
  `title_P` varchar(155) NOT NULL,
  `body_P` varchar(255) NOT NULL,
  `link_P` longtext NOT NULL,
  `time` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `all_p`
--

INSERT INTO `all_p` (`id_P`, `type_P`, `sub_P`, `title_P`, `body_P`, `link_P`, `time`) VALUES
(117, 'kharaba1', 'link', 'الروابط الاساسية', 'الروابط الاساسية', 'الروابط الاساسية', NULL),
(118, 'kharaba1', 'link1', 'مادة دوائر رقمية', 'مادة دوائر رقمية', 'مادة دوائر رقمية', NULL),
(121, 'kharaba1', 'link4', 'مادة الكهرومغناطيسية', 'مادة الكهرومغناطيسية', 'مادة الكهرومغناطيسية', NULL),
(122, 'kharaba1', 'link5', 'مادة الهندسة الميكانيكية (الثرمو)', 'مادة الهندسة الميكانيكية (الثرمو)', 'مادة الهندسة الميكانيكية (الثرمو)', NULL),
(123, 'kharaba1', 'link3', 'مادة الالكترونات', 'مادة الالكترونات', 'مادة الالكترونات', NULL),
(124, 'kharaba1', 'link2', 'مادة الدوائر الكهربية (سيركت 2)', 'مادة الدوائر الكهربية (سيركت 2)', 'مادة الدوائر الكهربية (سيركت 2)', NULL),
(125, 'kharaba1', 'link', 'k1', 'k1', 'k1', NULL),
(126, 'kharaba1', 'link1', 'a1', 'a1', 'a1', NULL),
(127, 'kharaba1', 'link', ' 2الروابط الاساسية', ' 2الروابط الاساسية', 'الروابط الاساسية 2', NULL),
(137, 'kharaba2', 'link', 'اساسي كهربا', 'اساسي كهربا', 'اساسي كهربا', NULL),
(138, 'kharaba2', 'link1', 'دوائر كهربائية 3 2', '2 دوائر كهربائية 3', ' دوائر كهربائية 33', NULL),
(140, 'kharaba2', 'link3', 'كتروني', 'كتروني', 'كتروني', NULL),
(143, 'kharaba2', 'link5', 'مال و الاحصاء', 'مال و الاحصاء', 'مال و الاحصاء', NULL),
(145, 'kharaba2', 'link4', ' 4تحليل نظم', ' 4تحليل نظم', 'تحليل نظم 4', NULL),
(146, 'kharaba2', 'link2', 'هرومغناطيسي', 'هرومغناطيسي', 'هرومغناطيسي', NULL),
(147, 'madany2', 'link', 'روابط الاساسي', 'روابط الاساسي', 'روابط الاساسي', NULL),
(148, 'madany2', 'link1', 'ظرية انشاءات ', 'ظرية انشاءات ', 'ظرية انشاءات ', NULL),
(149, 'madany2', 'link2', 'صميم منشأت خرسانية ', 'صميم منشأت خرسانية ', 'صميم منشأت خرسانية ', NULL),
(150, 'madany2', 'link3', 'ساحة', 'ساحة', 'ساحة', NULL),
(151, 'madany2', 'link4', 'ص و مقاومة م', 'ص و مقاومة م', 'ص و مقاومة م', NULL),
(152, 'madany2', 'link5', 'هيدرولي', 'هيدرولي', 'هيدرولي', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `all_pp`
--

CREATE TABLE `all_pp` (
  `id_P` int(11) NOT NULL,
  `type_P` varchar(100) CHARACTER SET utf8 NOT NULL,
  `sub_P` varchar(100) CHARACTER SET utf8 NOT NULL,
  `title_P` varchar(155) CHARACTER SET utf8 NOT NULL,
  `body_P` varchar(155) CHARACTER SET utf8 NOT NULL,
  `link_P` varchar(350) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `all_pp`
--

INSERT INTO `all_pp` (`id_P`, `type_P`, `sub_P`, `title_P`, `body_P`, `link_P`) VALUES
(31, 'kharaba', 'feld', 'المحاضرة الاولي', 'potential', ' https://drive.google.com/file/d/12PQJQ2KMo9ACaQuKU33SqmiCo1a279lX/view'),
(2, 'madane', 'alya', 'المحاضرة الثانية كهربية ', 'فيديو', 'https://drive.google.com/file/d/1KitphWOvR2gzYX-AB3FSeacvvMAHoASm/view'),
(4, 'madane', 'alya', 'المحاضرة الاولي كهربية ', 'فيديو', 'https://drive.google.com/file/d/1NN5HgLoY5I8FMD4CD439ctoj0jijclbO/view'),
(5, 'madane', 'alya', 'المحاضرة الاولي الية ', 'فيديو', 'https://drive.google.com/file/d/1CleH56hLORBDnYo0ohUEGir99UDc-6_b/view'),
(6, 'madane', 'alya', 'المحاضرة الثانية الية ', 'فيديو', 'https://drive.google.com/file/d/1mgihzyMokQoF2YCAE-yNLdT5FfNvtNY5/view'),
(7, 'madane', 'alya', 'المحاضرة الثالثة الية ', 'فيديو', 'https://drive.google.com/file/d/1pNffAx3Tdk83stWK-S55NnEn-15DjxQj/view'),
(8, 'madane', 'alya', 'ساكشن الكهربية ', 'بي دي اف ', 'https://drive.google.com/drive/folders/1wqRfF6MdTlQAdUoxrkdMtJyMpjGC50eh'),
(9, 'madane', 'inch', 'المحاضرة الاولي نظرية انشاءات ', 'فيديو', 'https://drive.google.com/file/d/1V4XpREjJCffRDgV2DNjUHAUNyqXRezci/view'),
(15, 'madane', 're', 'المحاضرة الاولي ري وصرف ', 'فيديو', 'https://drive.google.com/file/d/1ID9ZU383S0ugpr2pkdr7_mzd_h9jL1-k/view'),
(14, 'madane', 'inch', 'المحاضرةالثانية نظرية انشاءات ', 'فيديو', 'https://drive.google.com/file/d/1t27Q3y5_kKFArSbUWPJDUR8nLd5ecWkB/view'),
(13, 'madane', 'inch', 'المحاضرة الثالثة نظرية انشاءات ', 'فيديو', 'https://drive.google.com/file/d/1URlIIrhnqkP41qKMvPysLTkt39Q7Dxdn/view'),
(16, 'madane', 'mate', 'المحاضرة الاولي خواص ومقاومة المواد ', 'بي دي اف', 'https://www.dropbox.com/s/kh9pomcw6g5n0c5/first%20year%20Civil%20-%20Properties%20and%20Strength%20of%20Materials%20-%20Lecture%203.pdf?dl=0'),
(17, 'madane', 'asas', 'موقع الكلية ', 'محاضرات الكنترونية', 'http://www.sohag-univ.edu.eg/faceng/?page_id=4858'),
(18, 'madane', 'asas', 'جروب واتس الالية ', 'اسئلة لدكتور شريف ادهم', 'https://chat.whatsapp.com/FUg90cHxv7244gvUJ94mqu?fbclid=IwAR08j2qXs0FM1RgM-_rXUqby0RmTND6ErISJapRAp0FFKfTd5E2NOq4GYdc'),
(19, 'kharaba', 'asas', 'صفحة الكلية', 'جميع المحاضرات', ' http://www.sohag-univ.edu.eg/faceng/?page_id=4888'),
(20, 'kharaba', 'asas', 'موقع بيازا', 'محاضرات كهرومغناطيسية', 'www.piazza.com'),
(21, 'kharaba', 'ele', 'المحاضرة الاولي ', 'تكملة الدايود', 'https://drive.google.com/file/d/1HCE2Et4y5Mni6L1UKHSaik-x_E3gkg5-/view?usp=sharing&fbclid=IwAR384Rl8U14QiwNCaYJ46rkLpCyycwkCXuBjsCpQJMtBr6PnOMK9kmsWUQ4'),
(22, 'kharaba', 'ele', 'السكاشن', 'جميع السكاشن', 'https://drive.google.com/drive/folders/1s8pINvoEPbWJ2IIZFDtJRgI84rvyL-dU'),
(30, 'kharaba', 'ram', 'المحاضرة الثانية', 'Decoder', ' https://drive.google.com/file/d/1OQ4Zg_nv--yjkDCT7IpZyDhgj1itE8M4/view'),
(29, 'kharaba', 'ram', 'المحاضرة الاولي', 'Encoder', 'https://drive.google.com/file/d/1-9Xhnr9PNpj0UAVGaXL6JOb3iHx757FQ/view?usp=drive_open&fbclid=IwAR0KoGEzItlYz5chADuxcG2VHif3f1Ul8DWRtincoZXRhE5MOtk0g72YGxM'),
(25, 'kharaba', 'ram', 'سكشن 1', 'K-map', 'https://www.youtube.com/watch?v=VzOOqESsgRk&t=13s&fbclid=IwAR2scLP7SxVomU11Kx1EfVVt8khjfGONk_g6wlIsITRoqZYQAmFZcZAd4DA'),
(26, 'kharaba', 'thrmo', 'المحاضرة الاولي', 'closed system', ' https://drive.google.com/file/d/1pNffAx3Tdk83stWK-S55NnEn-15DjxQj/view'),
(27, 'kharaba', 'thrmo', 'المحاضرة الثانية', 'examples 1', 'https://drive.google.com/open?id=1amNxjtsQ1mkhCsj0dFBtAJ2O5zuO0Qie'),
(28, 'kharaba', 'thrmo', 'المحاضرة الثالثة', 'examples 2', 'https://drive.google.com/open?id=1Q-DoWPIHgMJtD-NSeLIz34k0H7D1kD-s'),
(32, 'kharaba', 'feld', 'المحاضرة الثانية', 'Energy', 'https://drive.google.com/file/d/1rGbIUDYooOoIGzNbdOzqPtO-e5nNJdEi/view'),
(33, 'kharaba', 'feld', 'سكشن 1', 'sheet 4 _part 1', ' https://drive.google.com/file/d/1gtcmOOD0ez_YS2gc0mHAKW-zJQrrLTfI/view?usp=sharing'),
(34, 'kharaba', 'feld', 'سكشن 2', 'sheet 4_part 2', ' https://drive.google.com/file/d/1LD_RcDLIhZUrzFQLIdN3JeYNztkLwRhO/view'),
(41, 'kharaba', 'asas', 'جروب الكترونكس واتس ', 'واتس', ' https://chat.whatsapp.com/IfEHN8Ya94gL6nW2tJBleE'),
(36, 'kharaba', 'crkt', 'المحاضرة الاولي', 'two port network', ' https://drive.google.com/file/d/1b9ils6rSiL5A2yotbfHyy-6AUw1r7VgG/view'),
(38, 'kharaba', 'crkt', 'معمل 1', 'RL', ' https://drive.google.com/file/d/1khZTDV52DrbWfcm7gyRNx5HOzXIscIGz/view?usp=sharing&fbclid=IwAR2e8qbFzmgAHhBFEoZvpYlMXmrfMMImNzTCtCDy7jzhJWgLVNrZJhW15fQ'),
(40, 'kharaba', 'crkt', 'معمل 2', 'RLC', ' https://drive.google.com/file/d/1zwXtxGP7OhnFqGvU45L7fn8UcmV_Rkyv/view?usp=sharing&fbclid=IwAR18kzkBIMZXr43ZcsytMLXy9zMHwagpVVidoo_56kryD_VMhf4okWDh6jU'),
(42, 'kharaba', 'asas', 'جروب ديجيتال واتس', 'واتس', ' https://chat.whatsapp.com/FhOpHbs678xIPQhAxO6i5r'),
(43, 'kharaba', 'asas', 'جروب ثيرمو واتس', 'واتس', ' https://chat.whatsapp.com/FvUKWk1oc3L0Im48kY0EP0'),
(44, 'kharaba', 'asas', 'جروب سيركت فيس', 'فيس', ' https://www.facebook.com/groups/677443209749076/'),
(45, 'kharaba', 'asas', 'جروب ديجيتال فيس', 'فيس', ' https://www.facebook.com/groups/1093932277621308/'),
(46, 'kharaba', 'feld', 'سكشن 3', 'sheet 4 _part 3', 'https://drive.google.com/file/d/16nBTxFYhXcJ-ZqD21l8UG2iscaZp7s5h/view'),
(47, 'kharaba', 'crkt', 'شيت3', 'second order', 'https://drive.google.com/drive/folders/1TYAbSTnjP4k3aXX91trETNlfJOhvqOcB?usp=sharing'),
(48, 'kharaba', 'crkt', 'المحاضرة الثانية ', 'تابع', 'https://m.youtube.com/watch?v=QUij0yCGH4I '),
(49, 'madane', 'rsm', 'المحاضرة الاولي رسم مدني', 'فيديو', 'https://www.youtube.com/watch?v=yLmi-fFNd6c&feature=youtu.be&app=desktop'),
(50, 'kharaba', 'crkt', 'ملف صوتي للمحاضرة الثانية', 'mp3', 'https://drive.google.com/open?id=1v7yhzi4tsNImyqO6OYuP8vR7wwKazgNG&fbclid=IwAR3dgCQ_2hhQE2DYDM2TCOydOmw582sWbNKSnHrW5vOoIoAHXGcTwVEl8zs'),
(51, 'madane', 'alya', 'المحاضرة الثالثة كهربية', 'فيديو ', 'https://drive.google.com/file/d/1urrcY6UaN-8MmZddJYVG0MogEFi4hNjL/view?usp=sharing'),
(57, 'baby', 'hand', '( هندسه تحليليه (د /الوجيه أحمد ', '(محاضره رقم 1 (فيديو', 'https://youtu.be/zwedrV1Z298?fbclid=IwAR0G7W2y6TGnIL2Sk-kw9DZEyzCqSBL_4jbmyiqtZnB8jNueRaEB_5uI78I'),
(58, 'baby', 'hand', '( هندسه تحليليه (د /الوجيه أحمد', '(محاضره رقم 2 (فيديو ', 'https://www.youtube.com/watch?v=rxj1j7mq8TI&fbclid=IwAR0KAtlRA4XVed2yuKS2irM1VrVmicD42wTOdYHtibRf3-fQlabHj1y48Ec'),
(116, 'madane', 're', 'المحاضرة الثانية ري وصرف ', 'فيديو', 'https://drive.google.com/open?id=1M9sCO5dzOCDFRUOeebbiqqh7fVyIy2ta'),
(60, 'baby', 'hand', ' ( تكامل (د / أحمد أبو المجد ', '(محاضره رقم 2 (فيديو', 'https://www.youtube.com/watch?v=0PNcoSJWhA4&list=PL2uFJrtnkYB8CMNfIoGz4gB0qIfwPCU7O&index=2'),
(62, 'baby', 'fesa', '( محاضره 1 (د /محروس ', '(كهربيه ومغناطيسيه (فيديو ', 'https://youtu.be/xpHy9lVvByY?fbclid=IwAR1ZZUQze8cWBujreZ02uWyOv4geLqAEug9-h7mhDwcuyY0nqnpTrGbg2_E'),
(63, 'baby', 'fesa', ' ( محاضره 2 (د /محروس ', '(مكثفات (فيديو', 'https://youtu.be/37us-lJMR4o?fbclid=IwAR3N8MTuUEihhfdyh30kaClabuveqZ-XzRvtI0s_QadT-tJquUDYA6dhmOY'),
(71, 'emara', 'asas', 'Sohag university - architecture department student - 2023', 'جروب اساتذة المواد', 'https://www.facebook.com/groups/3091769827714024/'),
(68, 'madane', 'mate', 'المحاضرة الثانية خواص ومقاومة المواد', 'بي دي اف', 'https://drive.google.com/file/d/12Qlyv2WcJ7m7exHs0jID55-5mdxY_TXW/view'),
(72, 'emara', 'asas', 'دفعة اولى عمارة هندسة سوهاج 2023', 'جروب خاص بالطلاب', 'https://www.facebook.com/groups/511474612983814/'),
(73, 'emara', 'nzrea', 'المحاضرة الرابعة نظريات عماره', 'التصميم الوظيفي للمباني جزء 1', 'https://drive.google.com/file/d/1hK1NoNj8ZHiyZLbnzflZJ0RUEPzhnlSv/view?usp=drivesdk'),
(74, 'emara', 'nzrea', 'المحاضرة الخامسة نظريات عمارة', 'التصميم الوظيفي للمباني جزء2', 'https://drive.google.com/file/d/1xyAToSFmsYbZzGv9dWTnfLC79OpO02Rq/view?usp=drivesdk'),
(75, 'emara', 'manz', 'التمرين الرابع ', 'سكشن', 'https://drive.google.com/file/d/1stRlpptVeU6c8y-QO7A4-mUk8ka7W0UA/view?usp=drivesdk'),
(76, 'emara', 'manz', 'التمرين الرابع ', 'واجب', 'https://drive.google.com/file/d/1wfSD6dKesz88d8Ds1hjYcLwZpzue4EGb/view?usp=drivesdk'),
(77, 'emara', 'manz', 'التمرين الخامس', 'سكشن', 'https://drive.google.com/file/d/1xuDeILj7YWu26vlN6Fe9V7kJ1qOV9G2f/view?usp=drivesdk'),
(78, 'emara', 'tsmem', 'المحاضرة الاولي', 'الفراغ المعماري جزء1', 'https://drive.google.com/file/d/1xDXVjCFWPey3o4rTrnBuXWOwOmy56icV/view'),
(79, 'emara', 'tsmem', 'المحاضرة الثانية', 'الفراغ المعماري جزء2', 'https://drive.google.com/file/d/15csTvvQd0BvFmqJsEcxJEOepi3_CoPIo/view'),
(80, 'emara', 'ench', 'المحاضرة الثامنة ', 'النظم التقليدية _اعمدة و كمرات ', 'https://drive.google.com/file/d/1m-RxQz6Y1yaBlUalbOjUKrRrIddWPHMf/view?fbclid=IwAR3NUbp1-1-zcSqiC-vOcU1lY-OXBi7Y6aZerX2hfzv0w7YEhbtwOU6plk8'),
(82, 'emara', 'ench', 'المحاضرة السادسة ', ' النظام االنشائي structure Fabric', 'file:///E:/A%20H%20M%20E%20D/A%20H%20M%20E%20D/%D8%A7%D9%86%D8%B4%D8%A7%D8%A1%20(2)%206%202.pdf'),
(83, 'emara', 'ench', 'المحاضرة الخامسة', ' النظام االنشائي structure Cantilever', 'file:///E:/A%20H%20M%20E%20D/A%20H%20M%20E%20D/%D8%A7%D9%86%D8%B4%D8%A7%D8%A1%20(2)%205%20.pdf'),
(84, 'kharaba', 'ele', 'المحاضرة الثانية', 'مضغوطة', 'https://drive.google.com/file/d/17Qc7achy3x44VgRJvIV30qUWsR7Gzx55/view'),
(85, 'kharaba', 'ele', 'سكشن', 'transistor', 'https://drive.google.com/file/d/1mBanvgfwv5zKhrRd6xZ58NbwMISCFfiY/view'),
(86, 'kharaba', 'ele', 'sheet 6', 'answer', 'https://drive.google.com/file/d/1yU5vID8Ay3t2O0Ol1q-ayM_vDyTRXKm-/view'),
(87, 'kharaba', 'ram', 'محاضرة 3', 'شرح', 'https://drive.google.com/file/d/1LOO607NXm8T33SzNPHa4yNbyCfxQyQZz/view'),
(88, 'kharaba', 'crkt', 'قناة اليوتيوب', 'محاضرات', 'https://www.youtube.com/channel/UCzDACTvJhCVQqmnAE_gjbog'),
(104, 'baby', 'fesa', '( محاضره 4 (د /محروس ', '(ضوئيه 2 (فيديو', 'https://youtu.be/z29_xXtU1hk'),
(99, 'madane', 'alya', ' المحاضرة الخامسة الية ', 'فيديو ', 'https://drive.google.com/open?id=1rhIlQmhsecYY7ApPe5_jsVrgIxEBf1ys'),
(94, 'baby', 'kemya', '( سكشن 1 (د /أحمد عبد الحميد ', '(الكثافه (فيديو ', 'https://www.youtube.com/watch?v=r2OXoJmllLc'),
(105, 'baby', 'fesa', '( محاضره 3 (د /محروس', '(ضوئيه 1 (فيديو', 'https://www.youtube.com/watch?v=o12FH_hHZR4&list=PLw0AoWUUz4NpsxLmUklZtLOCvUiEaqDZb&index=3'),
(95, 'baby', 'kemya', '( محاضرة عضويه (د /أسماء ', 'soap and detergents (power point)', 'https://cutt.us/z5yfq'),
(98, 'madane', 'alya', 'المحاضرة الرابعة الية', 'فيديو ', 'https://drive.google.com/open?id=1KuScGoLJXhz0PpY4HQm7aDunnfLVXJYD'),
(100, 'baby', 'brsm', '( محاضره 2 (د /شريف أدهم ', '(قطاعات 2 (فيديو', 'https://cutt.us/vkkZZ'),
(103, 'baby', 'brsm', '( محاضره 1 (د /شريف أدهم ', '(قطاعات 1 (فيديو ', 'https://cutt.us/yqjM1'),
(117, 'madane', 're', 'السكشن الاول ري وصرف الجزء الاول', 'فيديو', 'https://drive.google.com/file/d/1TIGsg1sqO8rqeyEvpi3xDBOI6EWARnZc/view'),
(110, 'kharaba', 'ram', 'شرح محاضرات', 'pdf', 'https://drive.google.com/drive/folders/1b2ZQKYbzWzc8qZJC8BJZyD5YMea2Ee1U?usp=sharing'),
(111, 'kharaba', 'ram', 'section_documents', 'pdf', 'https://drive.google.com/drive/folders/1tr4JCXPiDiUYlXKTZ-An16X6-jCBR4ic?usp=sharing'),
(114, 'baby', 'prma', '( محاضرة (د /محمد أبو الزهاد', '(رقم 1 (فيديو', 'https://cutt.us/Tr5LT'),
(115, 'baby', 'prma', '( محاضرة (د /محمد أبو الزهاد', '(رقم 2 (فيديو', 'https://cutt.us/eXqj0'),
(113, 'baby', 'hand', '( تكامل (د /أحمد أبو المجد ', '(محاضره رقم 1 (فيديو', 'https://youtu.be/0w2oEqNCFTI?list=PL2uFJrtnkYB8CMNfIoGz4gB0qIfwPCU7O'),
(118, 'madane', 're', 'السكشن الاول ري وصرف الجزء التاني ', 'فيديو', 'https://drive.google.com/file/d/1TJmbzDuywH-o9u7Y532xoKlJHML8QPhn/view'),
(119, 'kharaba', 'thrmo', 'المحاضرة الرابعة', 'open system', 'https://drive.google.com/file/d/1I-_HF0QdagSZX795JWl7sMKublSx5SYv/view'),
(120, 'kharaba', 'crkt', 'sheet 3', 'pdf', 'https://drive.google.com/drive/folders/1lNZJXH75zZR0dFe70OBIqk42RxJOJSbK?fbclid=IwAR2qUfyHz93pPJfCxS5DrfGBJp77SFKc0o40M-plKP4fB3ex4uT9Xcemw7E'),
(121, 'kharaba', 'feld', '  محاضرة الثالثة ', 'current && conductors', 'https://drive.google.com/file/d/1b_rxciWsObHRZXst8DCuWAcXshircUWw/view'),
(122, 'madane', 'rsm', 'المحاضرة التانية رسم مدني', 'فيديو ', 'https://m.youtube.com/watch?feature=youtu.be&v=RdBDkYEGF9Q'),
(123, 'madane', 're', 'السكشن الثاني ري وصرف الجزء الاول', 'فيديو', 'https://drive.google.com/file/d/1UDt95UNpQXRoT0AxHUehxjEIPXhvKJzP/view'),
(125, 'madane', 'rsm', 'المحاضرة الثالثة رسم مدني', 'فيديو', 'https://m.youtube.com/watch?v=BNssp-aSQsw'),
(127, 'madane', 're', 'السكشن التاني ري وصرف الجزء التاني', 'فيديو', 'https://drive.google.com/file/d/1UKgUCVsNkqabpm2bbzFtzdxk7lOUc47Q/view'),
(128, 'baby', 'prma', '(سكشن ٧  (م /أحمد عبد الستار', 'Computer principles and programig ( video )', 'https://m.youtube.com/watch?feature=youtu.be&v=DKMCcfKkUXM'),
(171, 'kharaba', 'feld', 'section 10', 'sheet-5 part-2', 'https://drive.google.com/open?id=12c1fg3HCp3Zfl2lfTfqnqiAHdb23ntpv'),
(172, 'baby', 'prma', '( سكشن ٩ (م/ أحمد عبدالستار ', 'Video ', 'https://youtu.be/GDZbY48dNz0'),
(131, 'madane', 'alya', 'المحاضرة السادسة الية', 'فيديو', 'https://drive.google.com/file/d/1VkXPARBtEkt6jMCqvmLi-ftCuoh46Vpg/view'),
(170, 'baby', 'hand', '( تكامل (د / أحمد ابو المجد', '(محاضره ٣ (فيديو', 'https://youtu.be/VoL7SFxlJNc'),
(135, 'kharaba', 'crkt', 'المحاضرة الثالثة', 'examples', 'https://www.youtube.com/watch?v=cttkxlkXzLI&fbclid=IwAR3yvfVy1RWUnKAwzD0CFjLdurMdqgCruabgIlvyhGmaJDyK97mwPZR3ABM'),
(134, 'baby', 'fesa', '( محاضره ٥ (د /محروس', '(انتشار الموجات (فيديو ', 'https://m.youtube.com/watch?feature=youtu.be&v=DuvaN0-o70g'),
(136, 'kharaba', 'feld', 'sheet 5', 'pdf', 'https://drive.google.com/file/d/1rpuOYOsZ8DaAG-7vzdhN4rZRfgoYVuTw/view'),
(137, 'kharaba', 'feld', 'section 9', 'current&&conductors', 'https://drive.google.com/file/d/1TAu8ady5QBack2XFc7zHhi9CTx6KHOyU/view'),
(139, 'kharaba', 'crkt', 'sheet two port', 'video&&pdf', 'https://drive.google.com/drive/folders/1VSjsu0PRGfWvDe8Eggiks4f_1y3RXOf9?fbclid=IwAR3JWvaY5IMw34nHKzlxpKpXdM583nQLwYJXGlecXpozvK-O2g-fMqAnYxg&usp=drive_open'),
(140, 'kharaba', 'thrmo', 'المحاضرة الخامسة', 'examples', 'https://drive.google.com/file/d/1k0QlS_aMF0vusxuYv7Vj3bCwjDb5P2tz/view'),
(141, 'kharaba', 'ele', 'المحاضرة الثالثة', 'bjt', 'https://drive.google.com/file/d/10sDpNwwEMTa2LH7FCKw4ruOu23R-O7L1/view'),
(142, 'madane', 'mate', 'المحاضرة الثالثة خواص ومقاومة المواد', 'فيديو', 'https://www.dropbox.com/s/8hkiuexfcel6g5d/Video_First%20year%20Civil%20-Material.wmv?dl=0'),
(143, 'emara', 'ench', 'المحاضرة التاسعة', 'اعمال الصحي', 'https://drive.google.com/file/d/1e9i6NHCJ9Ct12jUJRR1OX5qt75_O2UWA/view?usp=drivesdk'),
(144, 'emara', 'ench', 'المحاضرة التاسعة ', 'اعمال الصحي pdf', 'https://drive.google.com/file/d/17uq4MBOTyFiw0BFz3YwY5xbrtVzNvxko/view?usp=drivesdk'),
(145, 'kharaba', 'ele', 'Section bjt', 'فيديو ', 'https://drive.google.com/file/d/1NeWH4RV9pt6ewKWYgBkw5HXB-WZXjAxp/view?usp=drivesdk'),
(146, 'kharaba', 'ele', 'Section bjt', 'Pdf', 'https://drive.google.com/file/d/1d0Aw3ocVRYQXsz5sqtu094vei9NqJfG6/view?usp=drivesdk'),
(147, 'madane', 're', 'المحاضرة الثالثة ري وصرف ', 'فيديو', 'https://drive.google.com/file/d/1gjId_6F13nfWoymt6MOxlQ7P4Jl9Dts-/view'),
(156, 'kharaba', 'thrmo', 'المحاضرة السادسة', 'open system', 'https://drive.google.com/file/d/1j-6NFXLPG06eHIeR6pyH9w37Um1vuMVn/view'),
(149, 'baby', 'prma', '( سكشن ٨ (م/أحمد عبد الستار ', 'Computer principles and programming (video)', 'https://youtu.be/1VFWo8-QCqs'),
(157, 'kharaba', 'feld', 'المحاضرة الرابعة', 'current&&conductor 2', 'https://drive.google.com/open?id=1_daB3mH9u7BvFBVZMC9bC1fuGa2BtRe2'),
(151, 'madane', 'inch', 'المحاضرة الرابعة نظرية انشاءات ', 'فيديو', 'https://drive.google.com/open?id=1K-HLbiFybqYpGuzfS8LeNnoO3kyHHmUl'),
(152, 'kharaba', 'ram', ' 2سكشن', 'يوتيوب ', 'https://m.youtube.com/watch?v=G6CA8JV2CTE'),
(153, 'baby', 'asas', 'قناة سكاشن التكامل', '..', 'https://www.youtube.com/playlist?list=PLDlWmPquKJFLUn3Ip8yf6nVyWXXhjccW2'),
(155, 'baby', 'fesa', '(محاضره ٦ (د/ محروس', '(ضوئيه ٤ (فيديو', 'https://m.youtube.com/watch?feature=youtu.be&v=qgJ9lawPs3w'),
(158, 'kharaba', 'feld', 'المحاضرة الرابعة', 'pdf', 'http://www.piazza.com/class_profile/get_resource/k6fabfx541u2ce/k8uoco8ppwf3rg'),
(159, 'emara', 'tsmem', 'المسكن علي الطراز الاسلامي ', 'عمارة اسلامية', 'https://drive.google.com/file/d/1DXrE8FJJwUO73hQfwRE-atG7yKrncDID/view'),
(160, 'emara', 'tsmem', 'محاصرة اسس التصميم المعماري انتظار السيارات', 'محاصرة اسس التصميم المعماري انتظار السيارات', 'https://drive.google.com/file/d/1MJ9vzgQmnI4v_cSYVohEmn2SxslSceDT/view'),
(161, 'emara', 'nzrea', 'التصميم الوظيفى للمبانى المعمارية الجزء الثالث', 'مطاعم', 'https://drive.google.com/file/d/14VeWqvbgiQBglC9LRwPG04eaEtOYCbsm/view'),
(162, 'emara', 'nzrea', 'تطور علوم العمارة والبناء', 'عمارة الرومانيسك', 'https://drive.google.com/file/d/16AFHtHCRhCTY4zRIwDghKLsgQzPv8oOY/view'),
(163, 'madane', 'rsm', 'المحاضرة الرابعة رسم مدني ', 'فيديو', 'https://www.youtube.com/watch?v=6SasRt96M0c'),
(164, 'kharaba', 'crkt', 'معمل 3', 'transformer', 'https://drive.google.com/file/d/1Bsq9wEHbqREhf3uSaaElV63KYpg5PSXF/view?fbclid=IwAR0jPUKmWAngC3hm1zz-nld0OIKKCdkn_LtTBffaPWnadW6t0bLYloLUPOc'),
(165, 'baby', 'fesa', '( محاضرة ٧ (د / محروس', '(كهربيه ٤ (فيديو', 'https://m.youtube.com/watch?v=VJYZW9ohxaQ&feature=youtu.be'),
(166, 'baby', 'hand', '( تحليليه (د /الوجيه أحمد', '(محاضرة ٤ (فيديو', 'https://m.youtube.com/watch?v=s2bbEpsHAHE&feature=youtu.be'),
(168, 'baby', 'hand', '( تحليليه (د /الوجيه أحمد ', '(محاضره رقم ٣ (فيديو', 'https://m.youtube.com/watch?v=wegyeVLH3gA'),
(173, 'baby', 'prma', '( سكشن ٥ (م /أحمد عبد الستار', 'Video', 'https://m.youtube.com/watch?v=herwF8oY-4M'),
(176, 'madane', 'mate', 'المحاضرة الرابعة خواص ومقاومة مواد', 'بي دي اف ', 'https://www.dropbox.com/s/cv15d81bsk78fz6/Material%20%2015-4-2020.pdf?dl=0'),
(175, 'baby', 'prma', '(سكشن ٦ (م/ أحمد عبد الستار', 'Video', 'https://m.youtube.com/watch?v=8Rp70rORsk4'),
(177, 'kharaba', 'crkt', 'المحاضرة الرابعة', 'magnetically coupling part -1', 'https://www.youtube.com/watch?v=IScMc0gB5Mk&fbclid=IwAR3wJpN5al4XI3VJgkntEd1E484Vcj4ceeNGRQFC7gUbn0d9YRqD9j03oPE'),
(178, 'kharaba', 'ele', 'المحاضرة الرابعة', 'BJT_amp', 'https://drive.google.com/file/d/1tsCyZxZQeA2ZjsbFFH3yEagWZdvoM4nY/view'),
(179, 'kharaba', 'ele', 'سكشن', 'CE_Amp', 'https://drive.google.com/file/d/1VhT9symqSXMjY0X3j56L66XssGEeEZLL/view'),
(181, 'madane', 'alya', 'المحاضرة الرابعة كهربية', 'فيديو', 'https://drive.google.com/file/d/16_Gvxt-MqNb3IBET4PFruTo7ITNR8jX_/view?usp=sharing'),
(182, 'madane', 'alya', 'المحاضرة السابعة الية', 'فيديو', 'https://drive.google.com/file/d/1lMfKPtkNikYCIvkOnSr-3qz93hGDDGrN/view'),
(183, 'kharaba', 'feld', 'المحاضرة الخامسة', 'capacitance', 'https://drive.google.com/open?id=16-rMMr6uNWXiOrA7e0hyGWh86L9CLE0o'),
(184, 'kharaba', 'feld', 'المحاضرة الخامسة', 'pdf', 'http://www.piazza.com/class_profile/get_resource/k6fabfx541u2ce/k94nw6y2phd6bu'),
(185, 'kharaba', 'ele', 'section', 'CC', 'https://drive.google.com/file/d/1pk8zUMHMezRiIEFodTK50hkh0rMNbDOX/view?usp=drivesdk'),
(186, 'kharaba', 'ele', 'section', 'CB', 'https://drive.google.com/file/d/1OdnC5SzJGeBOGTJZMPf3xvCTBsf7bkv3/view?usp=sharing'),
(187, 'kharaba', 'ram', 'المحاضرة الرابعة', 'state equation', 'https://drive.google.com/file/d/15NFBQXyFWiy_marZvJ9GgRHRSg1oOJWo/view'),
(188, 'kharaba', 'ram', 'المحاضرة الخامسة', 'registers', 'https://drive.google.com/file/d/1OgnwnreY-V7p_h9ouH7JZf4G8XVnpxp2/view'),
(189, 'kharaba', 'thrmo', 'sheet 6', 'pdf', 'https://drive.google.com/file/d/13e2TRgS26T-7WA9oBV9wSzIbViC2wStt/view'),
(190, 'kharaba', 'thrmo', 'المحاضرة السابعة', 'هيدروليك', 'https://drive.google.com/file/d/19P7lUko85725O6fSogzWi3GVdzxM4nK-/view'),
(191, 'kharaba', 'thrmo', 'المحاضرة الثامنة', 'هيدروليك 2', 'https://drive.google.com/file/d/12CDEBEoO6-3aKII6qWDbN0R9raGihH-0/view'),
(192, 'kharaba', 'thrmo', 'sheet 7', 'pdf', 'https://drive.google.com/file/d/1BhAhKDDm3urMTRKXV4vQH8Jgvy1p4dMi/view'),
(193, 'kharaba', 'thrmo', 'محاضرة القانون الثاني', 'second law', 'https://drive.google.com/open?id=1ruOt_enHVT4IJ8cUWzFokrc6hfwzxEea');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `all_p`
--
ALTER TABLE `all_p`
  ADD PRIMARY KEY (`id_P`),
  ADD UNIQUE KEY `link` (`link_P`) USING HASH,
  ADD UNIQUE KEY `link_2` (`link_P`) USING HASH;

--
-- Indexes for table `all_pp`
--
ALTER TABLE `all_pp`
  ADD PRIMARY KEY (`id_P`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `all_p`
--
ALTER TABLE `all_p`
  MODIFY `id_P` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;

--
-- AUTO_INCREMENT for table `all_pp`
--
ALTER TABLE `all_pp`
  MODIFY `id_P` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=194;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
