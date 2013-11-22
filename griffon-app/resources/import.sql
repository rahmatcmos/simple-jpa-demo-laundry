INSERT INTO `laundry`.`jeniswork` (`id`,`createdDate`,`deleted`,`keterangan`,`modifiedDate`,`nama`)
VALUES
(1,'2013-11-16 14:41:29','N','Laundry',null,'Laundry'),
(2,'2013-11-16 14:41:33','N','Dry Cleaning',null,'Dry Cleaning'),
(3,'2013-11-16 14:41:37','N','Pressing',null,'Pressing');

INSERT INTO `laundry`.`kategori`
(`id`,`createdDate`,`deleted`,`keterangan`,`modifiedDate`,`nama`)
VALUES
(1,'2013-11-16 14:41:47','N','Gentlement',null,'Gentlement'),
(2,'2013-11-16 14:41:50','N','Ladies',null,'Ladies'),
(3,'2013-11-16 14:41:55','N','Linen - Cloth',null,'Linen - Cloth');

INSERT INTO `laundry`.`itempakaian`
(`id`,`createdDate`,`deleted`,`modifiedDate`,`nama`,`kategori_id`)
VALUES
(1,'2013-11-16 14:42:08','N',null,'Setelan jas / Two - piece Suit',1),
(2,'2013-11-16 14:42:13','N',null,'Jas / Jacket / Coat',1),
(3,'2013-11-16 14:42:18','N',null,'Jas Panjang / Long Coat',1),
(4,'2013-11-16 00:00:00','N',null,'Rompi (Vest)',1),
(5,'2013-11-16 00:00:00','N',null,'Celana Panjang (Trouser)',1),
(6,'2013-11-16 00:00:00','N',null,'Celana Pendek (Short)',1),
(7,'2013-11-16 00:00:00','N',null,'Kemeja Lengan Panjang (Shirt Long Sleeve)',1),
(8,'2013-11-16 00:00:00','N',null,'Kemeja Lengan Pendek (Shirt Short Sleeve)',1),
(9,'2013-11-16 00:00:00','N',null,'Kaos (T Shirt)',1),
(10,'2013-11-16 00:00:00','N',null,'Kaos Dalam (Under Shirt)',1),
(11,'2013-11-16 00:00:00','N',null,'Celana Dalam (Under Short)',1),
(12,'2013-11-16 00:00:00','N',null,'Kaos Kaki (Socks)',1),
(13,'2013-11-16 00:00:00','N',null,'Cook Jacket',1),
(14,'2013-11-16 00:00:00','N',null,'Apron',1),
(15,'2013-11-16 00:00:00','N',null,'Baju Tidur (Pyjamas)',1),
(16,'2013-11-16 00:00:00','N',null,'Dasi (Necktie)',1),
(17,'2013-11-16 00:00:00','N',null,'Sapu Tangan (Handkerchief)',1),
(18,'2013-11-16 00:00:00','N',null,'Jas (Jacket) / Blazer',2),
(19,'2013-11-16 00:00:00','N',null,'Blus (Blouse)',2),
(20,'2013-11-16 00:00:00','N',null,'Rok Pendek (Skirt)',2),
(21,'2013-11-16 00:00:00','N',null,'Rok Panjang (Long Skirt)',2),
(22,'2013-11-16 00:00:00','N',null,'Gaun Panjang (Long Dress)',2),
(23,'2013-11-16 00:00:00','N',null,'Gaun Pendek (Short Dress)',2),
(24,'2013-11-16 00:00:00','N',null,'Gaun Berpayet Pendek (Sequired Short Dress)',2),
(25,'2013-11-16 00:00:00','N',null,'Gaun Berpayet Panjang (Sequired Long Dress)',2),
(26,'2013-11-16 00:00:00','N',null,'Baju Kebaya',2),
(27,'2013-11-16 00:00:00','N',null,'Stelan Kebaya',2),
(28,'2013-11-16 00:00:00','N',null,'Sarung (Sarong)',2),
(29,'2013-11-16 00:00:00','N',null,'Sajadah / Mukenah',2),
(30,'2013-11-16 00:00:00','N',null,'Selendang (Scarf) / Kerudung',2),
(31,'2013-11-16 00:00:00','N',null,'Handuk Besar (Bath Towel)',3),
(32,'2013-11-16 00:00:00','N',null,'Handuk Sedang (Hand Towel)',3),
(33,'2013-11-16 00:00:00','N',null,'Handuk Kecil (Face Towel)',3),
(34,'2013-11-16 00:00:00','N',null,'Bath Mat',3),
(35,'2013-11-16 00:00:00','N',null,'Therapy Towel',3),
(36,'2013-11-16 00:00:00','N',null,'Reflexology Towel',3),
(37,'2013-11-16 00:00:00','N',null,'Pool Towel',3),
(38,'2013-11-16 00:00:00','N',null,'Bathrobe',3),
(39,'2013-11-16 00:00:00','N',null,'Seprei (Bad Sheet) King',3),
(40,'2013-11-16 00:00:00','N',null,'Seprei (Bad Sheet) Queen',3),
(41,'2013-11-16 00:00:00','N',null,'Seprei (Bad Sheet) Twin',3),
(42,'2013-11-16 00:00:00','N',null,'Duvet Cover King',3),
(43,'2013-11-16 00:00:00','N',null,'Duvet Cover Queen',3),
(44,'2013-11-16 00:00:00','N',null,'Duvet Cover Twin',3),
(45,'2013-11-16 00:00:00','N',null,'Selimut (Blanket) / Inner Duvet / Bed Pad',3),
(46,'2013-11-16 00:00:00','N',null,'Sarung Bantal (Pillow Case)',3),
(47,'2013-11-16 00:00:00','N',null,'Mattress Protector',3),
(48,'2013-11-16 00:00:00','N',null,'Gorden (Curtain)',3);

INSERT INTO `laundry`.`work`
(`id`,`createdDate`,`deleted`,`harga`,`modifiedDate`,`itemPakaian_id`,`jenisWork_id`)
VALUES
(1,'2013-11-16 14:43:08','N',0,null,1,1),
(2,'2013-11-16 14:43:08','N',0,null,2,1),
(3,'2013-11-16 14:43:08','N',20500,null,3,1),
(4,'2013-11-16 14:43:08','N',11000,null,4,1),
(5,'2013-11-16 14:43:08','N',12000,null,5,1),
(6,'2013-11-16 14:43:08','N',11000,null,6,1),
(7,'2013-11-16 14:43:08','N',11750,null,7,1),
(8,'2013-11-16 14:43:08','N',11500,null,8,1),
(9,'2013-11-16 14:43:08','N',11500,null,9,1),
(10,'2013-11-16 14:43:08','N',7500,null,10,1),
(11,'2013-11-16 14:43:08','N',7500,null,11,1),
(12,'2013-11-16 14:43:08','N',6000,null,12,1),
(13,'2013-11-16 14:43:08','N',16000,null,13,1),
(14,'2013-11-16 14:43:08','N',2500,null,14,1),
(15,'2013-11-16 14:43:08','N',15000,null,15,1),
(16,'2013-11-16 14:43:08','N',12500,null,16,1),
(17,'2013-11-16 14:43:08','N',5500,null,17,1),
(18,'2013-11-16 14:43:08','N',20500,null,18,1),
(19,'2013-11-16 14:43:08','N',16000,null,19,1),
(20,'2013-11-16 14:43:08','N',12500,null,20,1),
(21,'2013-11-16 14:43:08','N',16500,null,21,1),
(22,'2013-11-16 14:43:08','N',26000,null,22,1),
(23,'2013-11-16 14:43:08','N',24000,null,23,1),
(24,'2013-11-16 14:43:08','N',31500,null,24,1),
(25,'2013-11-16 14:43:08','N',41500,null,25,1),
(26,'2013-11-16 14:43:08','N',17500,null,26,1),
(27,'2013-11-16 14:43:08','N',28500,null,27,1),
(28,'2013-11-16 00:00:00','N',7000,null,28,1),
(29,'2013-11-16 00:00:00','N',13500,null,29,1),
(30,'2013-11-16 00:00:00','N',6500,null,30,1),
(31,'2013-11-16 00:00:00','N',4300,null,31,1),
(32,'2013-11-16 00:00:00','N',2500,null,32,1),
(33,'2013-11-16 00:00:00','N',2000,null,33,1),
(34,'2013-11-16 00:00:00','N',3500,null,34,1),
(35,'2013-11-16 00:00:00','N',4500,null,35,1),
(36,'2013-11-16 00:00:00','N',2500,null,36,1),
(37,'2013-11-16 00:00:00','N',7000,null,37,1),
(38,'2013-11-16 00:00:00','N',10500,null,38,1),
(39,'2013-11-16 00:00:00','N',3500,null,39,1),
(40,'2013-11-16 00:00:00','N',3000,null,40,1),
(41,'2013-11-16 00:00:00','N',2500,null,41,1),
(42,'2013-11-16 00:00:00','N',4500,null,42,1),
(43,'2013-11-16 00:00:00','N',4000,null,43,1),
(44,'2013-11-16 00:00:00','N',3500,null,44,1),
(45,'2013-11-16 00:00:00','N',6000,null,45,1),
(46,'2013-11-16 00:00:00','N',2000,null,46,1),
(47,'2013-11-16 00:00:00','N',15000,null,47,1),
(48,'2013-11-16 00:00:00','N',12500,null,48,1),
(49,'2013-11-16 00:00:00','N',22500,null,1,2),
(50,'2013-11-16 00:00:00','N',16000,null,2,2),
(51,'2013-11-16 00:00:00','N',21500,null,3,2),
(52,'2013-11-16 00:00:00','N',12000,null,4,2),
(53,'2013-11-16 00:00:00','N',15000,null,5,2),
(54,'2013-11-16 00:00:00','N',13000,null,6,2),
(55,'2013-11-16 00:00:00','N',15500,null,7,2),
(56,'2013-11-16 00:00:00','N',15000,null,8,2),
(57,'2013-11-16 00:00:00','N',13000,null,9,2),
(58,'2013-11-16 00:00:00','N',15500,null,10,2),
(59,'2013-11-16 00:00:00','N',15000,null,11,2),
(60,'2013-11-16 00:00:00','N',13000,null,12,2),
(61,'2013-11-16 00:00:00','N',9000,null,13,2),
(62,'2013-11-16 00:00:00','N',9000,null,14,2),
(63,'2013-11-16 00:00:00','N',8000,null,15,2),
(64,'2013-11-16 00:00:00','N',0,null,16,2),
(65,'2013-11-16 00:00:00','N',0,null,17,2),
(66,'2013-11-16 00:00:00','N',16500,null,18,2),
(67,'2013-11-16 00:00:00','N',14500,null,19,2),
(68,'2013-11-16 00:00:00','N',7500,null,20,2),
(69,'2013-11-16 00:00:00','N',23500,null,21,2),
(70,'2013-11-16 00:00:00','N',19000,null,22,2),
(71,'2013-11-16 00:00:00','N',17500,null,23,2),
(72,'2013-11-16 00:00:00','N',22500,null,24,2),
(73,'2013-11-16 00:00:00','N',30000,null,25,2),
(74,'2013-11-16 00:00:00','N',26000,null,26,2),
(75,'2013-11-16 00:00:00','N',35500,null,27,2),
(76,'2013-11-16 00:00:00','N',44500,null,28,2),
(77,'2013-11-16 00:00:00','N',20500,null,29,2),
(78,'2013-11-16 00:00:00','N',34500,null,30,2),
(79,'2013-11-16 00:00:00','N',9500,null,31,2),
(80,'2013-11-16 00:00:00','N',15500,null,32,2),
(81,'2013-11-16 00:00:00','N',8500,null,33,2),
(82,'2013-11-16 00:00:00','N',0,null,34,2),
(83,'2013-11-16 00:00:00','N',0,null,35,2),
(84,'2013-11-16 00:00:00','N',0,null,36,2),
(85,'2013-11-16 00:00:00','N',0,null,37,2),
(86,'2013-11-16 00:00:00','N',0,null,38,2),
(87,'2013-11-16 00:00:00','N',0,null,39,2),
(88,'2013-11-16 00:00:00','N',0,null,40,2),
(89,'2013-11-16 00:00:00','N',0,null,41,2),
(90,'2013-11-16 00:00:00','N',0,null,42,2),
(91,'2013-11-16 00:00:00','N',0,null,43,2),
(92,'2013-11-16 00:00:00','N',0,null,44,2),
(93,'2013-11-16 00:00:00','N',8000,null,45,2),
(94,'2013-11-16 00:00:00','N',0,null,46,2),
(95,'2013-11-16 00:00:00','N',0,null,47,2),
(96,'2013-11-16 00:00:00','N',15000,null,48,2),
(97,'2013-11-16 00:00:00','N',16000,null,1,3),
(98,'2013-11-16 00:00:00','N',11000,null,2,3),
(99,'2013-11-16 00:00:00','N',15500,null,3,3),
(100,'2013-11-16 00:00:00','N',7500,null,4,3),
(101,'2013-11-16 00:00:00','N',8500,null,5,3),
(102,'2013-11-16 00:00:00','N',7000,null,6,3),
(103,'2013-11-16 00:00:00','N',9500,null,7,3),
(104,'2013-11-16 00:00:00','N',8500,null,8,3),
(105,'2013-11-16 00:00:00','N',7000,null,9,3),
(106,'2013-11-16 00:00:00','N',5000,null,10,3),
(107,'2013-11-16 00:00:00','N',6000,null,11,3),
(108,'2013-11-16 00:00:00','N',3050,null,12,3),
(109,'2013-11-16 00:00:00','N',11000,null,13,3),
(110,'2013-11-16 00:00:00','N',2000,null,14,3),
(111,'2013-11-16 00:00:00','N',10500,null,15,3),
(112,'2013-11-16 00:00:00','N',6500,null,16,3),
(113,'2013-11-16 00:00:00','N',4500,null,17,3),
(114,'2013-11-16 00:00:00','N',15500,null,18,3),
(115,'2013-11-16 00:00:00','N',9500,null,19,3),
(116,'2013-11-16 00:00:00','N',9500,null,20,3),
(117,'2013-11-16 00:00:00','N',12500,null,21,3),
(118,'2013-11-16 00:00:00','N',21000,null,22,3),
(119,'2013-11-16 00:00:00','N',19000,null,23,3),
(120,'2013-11-16 00:00:00','N',29500,null,24,3),
(121,'2013-11-16 00:00:00','N',39500,null,25,3),
(122,'2013-11-16 00:00:00','N',12500,null,26,3),
(123,'2013-11-16 00:00:00','N',20500,null,27,3),
(124,'2013-11-16 00:00:00','N',5500,null,28,3),
(125,'2013-11-16 00:00:00','N',6500,null,29,3),
(126,'2013-11-16 00:00:00','N',4000,null,30,3),
(127,'2013-11-16 00:00:00','N',3000,null,31,3),
(128,'2013-11-16 00:00:00','N',2000,null,32,3),
(129,'2013-11-16 00:00:00','N',1500,null,33,3),
(130,'2013-11-16 00:00:00','N',2000,null,34,3),
(131,'2013-11-16 00:00:00','N',3000,null,35,3),
(132,'2013-11-16 00:00:00','N',1500,null,36,3),
(133,'2013-11-16 00:00:00','N',3000,null,37,3),
(134,'2013-11-16 00:00:00','N',9000,null,38,3),
(135,'2013-11-16 00:00:00','N',2500,null,39,3),
(136,'2013-11-16 00:00:00','N',2000,null,40,3),
(137,'2013-11-16 00:00:00','N',1500,null,41,3),
(138,'2013-11-16 00:00:00','N',3500,null,42,3),
(139,'2013-11-16 00:00:00','N',3000,null,43,3),
(140,'2013-11-16 00:00:00','N',2500,null,44,3),
(141,'2013-11-16 00:00:00','N',4000,null,45,3),
(142,'2013-11-16 00:00:00','N',750,null,46,3),
(143,'2013-11-16 00:00:00','N',0,null,47,3),
(144,'2013-11-16 00:00:00','N',11000,null,48,3);

INSERT INTO `laundry`.`hibernate_sequences`
(`sequence_name`,`sequence_next_hi_value`)
VALUES
('Pelanggan',2),
('ItemPakaian',2),
('work',2),
('kategori',2),
('jeniswork',2);


INSERT INTO `laundry`.`pelanggan`
(`id`, `alamat`, `createdDate`, `deleted`, `modifiedDate`, `nama`, `nomorTelepon`)
VALUES
(1, 'Jl. Imam Bonjol', '2013-11-16 00:00:00', 'N', null, 'Steven', null),
(2, 'Jl. Setia Budi', '2013-11-16 00:00:00', 'N', null, 'David', null),
(3, 'Jl. Siantan', '2013-11-16 00:00:00', 'N', null, 'Bram', null),
(4, 'Jl. Sungai Raya Dalam', '2013-11-16 00:00:00', 'N', null, 'Edi Yi Wei', null),
(5, 'Jl. Purnama', '2013-11-16 00:00:00', 'N', null, 'Sandi Kosasi', null),
(6, 'Jl. Pahlawan', '2013-11-16 00:00:00', 'N', null, 'Yip Man', null),
(7, 'Jl. Tenaga Baru', '2013-11-16 00:00:00', 'N', null, 'Bruce Lee', null);
