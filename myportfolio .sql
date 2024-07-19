-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 04 Ara 2023, 07:28:14
-- Sunucu sürümü: 10.4.28-MariaDB
-- PHP Sürümü: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `myportfolio`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `about`
--

CREATE TABLE `about` (
  `id` int(11) NOT NULL,
  `about_title` varchar(255) NOT NULL,
  `about_subtitle` text NOT NULL,
  `profile_pic` text NOT NULL,
  `about_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `about`
--

INSERT INTO `about` (`id`, `about_title`, `about_subtitle`, `profile_pic`, `about_desc`) VALUES
(1, 'About me', 'Yazılım Mühendisliği 3. sınıf öğrencisi', '1698665788WhatsApp Görsel 2023-10-21 saat 17.11.51_2b38c2c4.jpg', 'Yazılım alanında yeni çalışmalar yapıyor, projeler yazıyorum.');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `admin_profile` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `admin`
--

INSERT INTO `admin` (`id`, `fullname`, `admin_profile`, `email`, `password`) VALUES
(1, 'Esra Beke', '1698666806WhatsApp Görsel 2023-10-21 saat 17.11.51_2b38c2c4.jpg', 'esrabeke2078@gmail.com', '1234');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `address` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `contact`
--

INSERT INTO `contact` (`id`, `address`, `email`, `mobile`) VALUES
(1, 'İstanbul', 'esrabeke2078@gmail.com', '5436526542');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `home`
--

CREATE TABLE `home` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `subtitle` varchar(255) NOT NULL,
  `showicons` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `home`
--

INSERT INTO `home` (`id`, `title`, `subtitle`, `showicons`) VALUES
(1, 'Esra Beke', 'Yazılım Mühendisi', 'on');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `personal_info`
--

CREATE TABLE `personal_info` (
  `id` int(11) NOT NULL,
  `label` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `personal_info`
--

INSERT INTO `personal_info` (`id`, `label`, `value`) VALUES
(2, 'Doğum Günü', '01.04.2003'),
(4, 'Web Site', 'www.esrabeke.com.tr'),
(5, 'Derece', 'Lisans'),
(6, 'Phone', '0(546) 345 56 67');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `portfolio`
--

CREATE TABLE `portfolio` (
  `id` int(11) NOT NULL,
  `project_pic` text NOT NULL,
  `project_type` text NOT NULL,
  `project_name` text NOT NULL,
  `project_link` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `portfolio`
--

INSERT INTO `portfolio` (`id`, `project_pic`, `project_type`, `project_name`, `project_link`) VALUES
(18, '16978989611670596785Arife_Dal_Style_photo_with_american_flag_in_hand_of_an_astronau_eb749077-9d5d-4235-b78a-1a9ac051e003.png', 'WEBSITE', 'WEB', 'https://tr.wikipedia.org/wiki/Anasayfa');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `resume`
--

CREATE TABLE `resume` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  `org` varchar(255) NOT NULL,
  `about_exp` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `resume`
--

INSERT INTO `resume` (`id`, `type`, `title`, `time`, `org`, `about_exp`) VALUES
(4, 'e', 'İstanbul Topkapı Üniversitesi', '2021-2025', 'Yazılım Mühendisliği', '3. sınıf öğrencisiyim');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `section_control`
--

CREATE TABLE `section_control` (
  `id` int(11) NOT NULL,
  `home_section` varchar(11) NOT NULL,
  `about_section` varchar(11) NOT NULL,
  `resume_section` varchar(11) NOT NULL,
  `services_section` varchar(11) NOT NULL,
  `portfolio_section` varchar(11) NOT NULL,
  `contact_section` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `section_control`
--

INSERT INTO `section_control` (`id`, `home_section`, `about_section`, `resume_section`, `services_section`, `portfolio_section`, `contact_section`) VALUES
(1, 'on', 'on', 'on', '0', 'on', 'on');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `seo`
--

CREATE TABLE `seo` (
  `id` int(11) NOT NULL,
  `page_title` varchar(255) NOT NULL,
  `keywords` text NOT NULL,
  `description` text NOT NULL,
  `siteicon` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `seo`
--

INSERT INTO `seo` (`id`, `page_title`, `keywords`, `description`, `siteicon`) VALUES
(1, 'Esra Beke', 'Yazılım Mühendisi', 'Öğrenci', '17011743351699989527pngtree-moon-tree-night-beautiful-background-image_2163951.jpg');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `site_background`
--

CREATE TABLE `site_background` (
  `id` int(11) NOT NULL,
  `background_img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `site_background`
--

INSERT INTO `site_background` (`id`, `background_img`) VALUES
(1, '1699989537got1.jpg');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `skills`
--

CREATE TABLE `skills` (
  `id` int(11) NOT NULL,
  `skill_name` varchar(255) NOT NULL,
  `skill_level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `skills`
--

INSERT INTO `skills` (`id`, `skill_name`, `skill_level`) VALUES
(1, 'Python', 70),
(2, 'SQL ', 80),
(3, 'HTML', 86),
(4, 'CSS', 88);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `social_media`
--

CREATE TABLE `social_media` (
  `id` int(11) NOT NULL,
  `linkedin` varchar(255) NOT NULL,
  `github` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `social_media`
--

INSERT INTO `social_media` (`id`, `linkedin`, `github`) VALUES
(1, 'in/esra-beke6102', 'EsraBeke');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `home`
--
ALTER TABLE `home`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `personal_info`
--
ALTER TABLE `personal_info`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `portfolio`
--
ALTER TABLE `portfolio`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `resume`
--
ALTER TABLE `resume`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `section_control`
--
ALTER TABLE `section_control`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `seo`
--
ALTER TABLE `seo`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `site_background`
--
ALTER TABLE `site_background`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `social_media`
--
ALTER TABLE `social_media`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `about`
--
ALTER TABLE `about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `home`
--
ALTER TABLE `home`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `personal_info`
--
ALTER TABLE `personal_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Tablo için AUTO_INCREMENT değeri `portfolio`
--
ALTER TABLE `portfolio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Tablo için AUTO_INCREMENT değeri `resume`
--
ALTER TABLE `resume`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `section_control`
--
ALTER TABLE `section_control`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `seo`
--
ALTER TABLE `seo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `site_background`
--
ALTER TABLE `site_background`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `social_media`
--
ALTER TABLE `social_media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
