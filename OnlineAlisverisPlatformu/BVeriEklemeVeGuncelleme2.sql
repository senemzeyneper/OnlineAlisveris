INSERT INTO Musteri (ad, soyad, email, sehir, kayit_tarihi) 
VALUES ('Deniz','Akkaþ','denizakkas@gmail.com','Denizli',GETDATE());


INSERT INTO Urun (ad,fiyat,stok,kategori_id,satici_id)
VALUES ('Far','700.00','200','6','6')

UPDATE Urun
SET stok = stok + 1
Where id = 5;

UPDATE Musteri
Set soyad = 'Taner'
Where id = 2;

DELETE FROM Siparis_Detay
WHERE siparis_id = 8;

DELETE FROM Siparis
WHERE id = 8;

--TRUNCATE TABLE Siparis;
--TRUNCATE TABLE Musteri;


