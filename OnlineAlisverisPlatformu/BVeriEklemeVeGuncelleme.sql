INSERT INTO Kategori (ad) VALUES
('Elektronik'),
('Giyim'),
('Kitap'),
('Mobilya'),
('Spor'),
('Kozmetik');

INSERT INTO Satici (ad, adres) VALUES
('TeknoMarket', '�stanbul'),
('ModaD�nyas�', 'Ankara'),
('KitapYurdu',  '�zmir'),
('EvDekor',     'Bursa'),
('SporCenter',  'Antalya'),
('G�zellikShop','Adana'),
('MegaElektronik','Konya'),
('KitapEvi','Trabzon');

INSERT INTO Urun (ad, fiyat, stok, kategori_id, satici_id) VALUES
('Ak�ll� Telefon', 15000, 20, 1, 1),
('Laptop',         28000, 15, 1, 1),
('Tablet',          8000, 30, 1, 1),
('Ti��rt',            250,100, 2, 2),
('Kot Pantolon',      750, 50, 2, 2),
('Roman Kitab�',      120,200, 3, 3),
('Bilim Kitab�',      200,150, 3, 3),
('Ofis Sandalyesi',  3000, 10, 4, 4),
('Yemek Masas�',     7500, 5, 4, 4),
('Futbol Topu',       450, 60, 5, 5),
('Tenis Raketi',     1200, 20, 5, 5),
('Parf�m',            900, 80, 6, 6),
('Ruj',               250,120, 6, 6),
('Ak�ll� Saat',       4500, 40, 1, 7),
('Kulak�st� Kulakl�k',2200, 60, 1, 1),
('Ceket',             950, 35, 2, 2),
('Elbise',           1300, 25, 2, 2),
('Ansiklopedi',       350, 100, 3, 8),
('�al��ma Masas�',    5500, 8, 4, 4),
('Ko�u Ayakkab�s�',  1700, 45, 5, 5),
('Dumbbell Seti',     3200, 12, 5, 5),
('Fond�ten',          400, 150, 6, 6),
('Maskara',           180, 200, 6, 6);

INSERT INTO Musteri (ad, soyad, email, sehir, kayit_tarihi) VALUES
('Ay�e',   'Demir',   'ayse.demir@example.com',   '�stanbul', GETDATE()),
('Mehmet', 'Y�lmaz',  'mehmet.yilmaz@example.com','Ankara',   GETDATE()),
('Zeynep', 'Kaya',    'zeynep.kaya@example.com',  '�zmir',    GETDATE()),
('Ali',    '�elik',   'ali.celik@example.com',    'Bursa',    GETDATE()),
('Elif',   'Arslan',  'elif.arslan@example.com',  'Antalya',  GETDATE()),
('Hasan',  '�zt�rk',  'hasan.ozturk@example.com', 'Eski�ehir', GETDATE()),
('Merve',  '�ahin',   'merve.sahin@example.com',  '�stanbul', GETDATE()),
('Selin',  'Aksoy',   'selin.aksoy@example.com',  'Adana',    GETDATE()),
('Burak',  'Ko�',     'burak.koc@example.com',    'Samsun',   GETDATE()),
('Gamze',  'Eren',    'gamze.eren@example.com',   'Kayseri',  GETDATE()),
('Emre',   'Ta�',     'emre.tas@example.com',     '�stanbul', GETDATE()),
('Derya',  'Polat',   'derya.polat@example.com',  'Ankara',   GETDATE()),
('Bar��',  'Y�ld�z',  'baris.yildiz@example.com', '�zmir',    GETDATE()),
('Nazl�',  'Korkmaz', 'nazli.korkmaz@example.com','Bursa',    GETDATE()),
('Cem',    '�zkan',   'cem.ozkan@example.com',    'Antalya',  GETDATE());


INSERT INTO Siparis (musteri_id, tarih, toplam_tutar, odeme_turu) VALUES
(1, GETDATE(), 30000, 'Kredi Kart�'),
(2, GETDATE(),  1000, 'Nakit'),
(3, GETDATE(),   320, 'Havale'),
(1, GETDATE(),  7800, 'Kredi Kart�'),
(4, GETDATE(),  1400, 'Nakit'),
(6, GETDATE(),  5400, 'Kredi Kart�'), 
(7, GETDATE(),  1800, 'Havale'),
(8, GETDATE(), 10500, 'Nakit'),
(9, GETDATE(),  7200, 'Kredi Kart�'),
(10,GETDATE(),  2300, 'Nakit'),
(5, GETDATE(),  4100, 'Kredi Kart�'),
(3, GETDATE(),  1500, 'Nakit'),
(2, GETDATE(),  2500, 'Havale'),
(11,GETDATE(),  3600, 'Kredi Kart�'),
(12,GETDATE(),  4200, 'Nakit');

INSERT INTO Siparis (musteri_id, tarih, toplam_tutar, odeme_turu) VALUES
(1, '2025-01-15', 32000, 'Kredi Kart�'),
(2, '2025-02-10', 7500,  'Nakit'),
(3, '2025-02-25', 9800,  'Havale'),
(4, '2025-03-03', 14500, 'Kredi Kart�'),
(5, '2025-03-20', 4200,  'Nakit'),
(6, '2025-04-01', 11200, 'Havale'),
(7, '2025-05-05', 8800,  'Kredi Kart�'),
(8, '2025-05-15', 10200, 'Nakit'),
(9, '2025-06-09', 7600,  'Kredi Kart�'),
(10,'2025-06-25', 1500,  'Havale'),
(3, '2025-07-02', 21500, 'Kredi Kart�'),
(5, '2025-07-18', 5400,  'Nakit'),
(8, '2025-08-10', 8900,  'Havale'),
(9, '2025-09-12', 4700,  'Kredi Kart�'),
(2, '2025-09-28', 6700,  'Nakit'),
(6, '2025-10-05', 13200, 'Kredi Kart�'),
(7, '2025-10-10', 2450,  'Havale'),
(4, '2025-11-14', 7800,  'Nakit'),
(10,'2025-12-01', 9900,  'Kredi Kart�'),
(1, '2025-12-20', 12000, 'Havale');

INSERT INTO Siparis_Detay (siparis_id, urun_id, adet, fiyat) VALUES
-- Sipari� 1: Ay�e (2 adet Laptop)
(1, 2, 2, 28000),

-- Sipari� 2: Mehmet (4 adet Ti��rt)
(2, 4, 4, 250),

-- Sipari� 3: Zeynep (1 adet Roman + 1 adet Bilim Kitab�)
(3, 6, 1, 120),
(3, 7, 1, 200),

-- Sipari� 4: Ay�e (1 adet Tablet + 1 adet Ofis Sandalyesi)
(4, 3, 1, 8000),
(4, 8, 1, 3000),

-- Sipari� 5: Ali (1 Futbol Topu + 1 Tenis Raketi)
(5, 10, 1, 450),
(5, 11, 1, 1200),

-- Sipari� 6: Hasan (1 Ak�ll� Saat + 1 Kulak�st� Kulakl�k)
(6, 14, 1, 4500),
(6, 15, 1, 2200),

-- Sipari� 7: Merve (2 Parf�m)
(7, 17, 2, 1300),

-- Sipari� 8: Selin (1 �al��ma Masas� + 1 Roman Kitab� + 1 Bilim Kitab�)
(8, 19, 1, 5500),
(8, 6, 1, 120),
(8, 7, 1, 200),

-- Sipari� 9: Burak (2 Ko�u Ayakkab�s� + 1 Dumbbell Seti)
(9, 20, 2, 1700),
(9, 21, 1, 3200),

-- Sipari� 10: Gamze (3 Maskara + 2 Fond�ten)
(10, 23, 3, 180),
(10, 22, 2, 400),

-- Ek sipari�ler
-- Sipari� 11: Emre (1 Laptop + 1 Ak�ll� Saat)
(11, 2, 1, 28000),
(11, 14, 1, 4500),

-- Sipari� 12: Derya (1 Ceket + 2 Ti��rt)
(12, 16, 1, 950),
(12, 4, 2, 250),

-- Sipari� 13: Bar�� (1 Yemek Masas� + 1 Ofis Sandalyesi)
(13, 9, 1, 7500),
(13, 8, 1, 3000);




