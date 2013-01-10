-- phpMyAdmin SQL Dump
-- version 2.11.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 09, 2013 at 04:01 PM
-- Server version: 5.0.51
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `tenisitup`
--

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE IF NOT EXISTS `anggota` (
  `id_anggota` varchar(3) NOT NULL,
  `nama_anggota` text NOT NULL,
  `jenis_kelamin` varchar(15) NOT NULL,
  `alamat` text NOT NULL,
  PRIMARY KEY  (`id_anggota`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`id_anggota`, `nama_anggota`, `jenis_kelamin`, `alamat`) VALUES
('1', 'oshin', 'perempuan', 'fhdjdjgds'),
('2', 'dika', 'perempuan', 'fdjfhsj'),
('4', 'ijay', 'laki-laki', 'ufkjdjgfdjf');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal`
--

CREATE TABLE IF NOT EXISTS `jadwal` (
  `id_jadwal` int(1) NOT NULL auto_increment,
  `hari` varchar(20) NOT NULL,
  `kode` varchar(3) NOT NULL,
  `id_anggota` varchar(3) NOT NULL,
  `id_pelatih` varchar(3) NOT NULL,
  PRIMARY KEY  (`id_jadwal`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `jadwal`
--

INSERT INTO `jadwal` (`id_jadwal`, `hari`, `kode`, `id_anggota`, `id_pelatih`) VALUES
(2, 'Jumat', '1', '1', '1'),
(1, 'Senin', '3', '2', '1'),
(3, 'Jumat', '2', '4', '2');

-- --------------------------------------------------------

--
-- Table structure for table `lapangan`
--

CREATE TABLE IF NOT EXISTS `lapangan` (
  `kode` varchar(3) NOT NULL,
  `nama_lapangan` text NOT NULL,
  PRIMARY KEY  (`kode`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lapangan`
--

INSERT INTO `lapangan` (`kode`, `nama_lapangan`) VALUES
('1', 'Lapangan A'),
('2', 'Lapangan B'),
('3', 'Lapangan C');

-- --------------------------------------------------------

--
-- Table structure for table `pelatih`
--

CREATE TABLE IF NOT EXISTS `pelatih` (
  `id_pelatih` varchar(3) NOT NULL,
  `nama_pelatih` text NOT NULL,
  `jenis_kelamin` varchar(15) NOT NULL,
  `alamat` text NOT NULL,
  PRIMARY KEY  (`id_pelatih`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelatih`
--

INSERT INTO `pelatih` (`id_pelatih`, `nama_pelatih`, `jenis_kelamin`, `alamat`) VALUES
('1', 'febry', 'Laki', 'jcjkhfk');
