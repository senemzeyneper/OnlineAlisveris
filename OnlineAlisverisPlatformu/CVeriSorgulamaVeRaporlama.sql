--En �ok sipari� veren 5 m��teri
SELECT TOP 5 m.id,m.ad,m.soyad, COUNT(*) AS siparis_sayisi
FROM dbo.Siparis s
JOIN dbo.Musteri m ON m.id = s.musteri_id
GROUP BY m.id,m.ad,m.soyad
ORDER BY siparis_sayisi DESC,m.ad;

--En �ok sat�lan �r�nler
SELECT u.id , u.ad AS Urun,
SUM(sd.adet) AS ToplamAdet
FROM dbo.Siparis_Detay sd
JOIN dbo.Urun u ON u.id = sd.urun_id
GROUP BY u.id,u.ad
ORDER BY ToplamAdet DESC, Urun;

--En y�ksek cirosu olan sat�c�lar
SELECT  s.id,s.ad,
SUM(sd.adet * sd.fiyat) AS ToplamCiro
FROM Satici s
JOIN Urun u ON s.id = u.satici_id
JOIN Siparis_Detay sd ON u.id = sd.urun_id
GROUP BY s.id, s.ad
ORDER BY SUM(sd.adet * sd.fiyat) DESC;

--�ehirlere g�re m��teri say�s�
SELECT  sehir, COUNT(*) AS MusteriSayisi
FROM Musteri
GROUP BY sehir
ORDER BY MusteriSayisi DESC;

-- Kategori bazl� toplam sat��lar
SELECT k.ad AS KategoriAdi,
SUM(sd.adet * sd.fiyat) AS ToplamSatis
FROM Kategori k
JOIN Urun u ON k.id = u.kategori_id
JOIN Siparis_Detay sd ON u.id = sd.urun_id
GROUP BY k.ad
ORDER BY ToplamSatis DESC;

--Aylara g�re sipari� say�s�
SELECT 
    DATENAME(YEAR, tarih) AS Yil,
    DATENAME(MONTH, tarih) AS Ay,
    COUNT(*) AS Siparis_Sayisi
FROM dbo.Siparis
GROUP BY DATENAME(YEAR, tarih), DATENAME(MONTH, tarih), MONTH(tarih)
ORDER BY Yil, MONTH(tarih);


--Sipari�lerde m��teri bilgisi + �r�n bilgisi + sat�c� bilgisi.
SELECT 
    s.id AS SiparisID,
    m.ad + N' ' + m.soyad AS MusteriAdiSoyad�,
    m.email AS MusteriEmail,
    u.ad AS UrunAdi,
    u.fiyat AS UrunFiyati,
    sd.adet AS Adet,
    sd.fiyat AS SatisFiyati,
    sa.ad AS SaticiAdi,
    sa.adres AS SaticiAdresi,
    s.tarih AS SiparisTarihi,
    s.odeme_turu AS OdemeTuru
FROM dbo.Siparis_Detay sd
INNER JOIN dbo.Siparis s ON sd.siparis_id = s.id
INNER JOIN dbo.Musteri m ON s.musteri_id = m.id
INNER JOIN dbo.Urun u ON sd.urun_id = u.id
INNER JOIN dbo.Satici sa ON u.satici_id = sa.id
ORDER BY s.id;


--Hi� sat�lmam�� �r�nler
SELECT u.id,u.ad
FROM dbo.Urun u
LEFT JOIN dbo. Siparis_Detay sd ON sd.urun_id = u.id
WHERE sd.id IS NULL
ORDER BY u.ad;

-- Hi� sipari� vermemi� m��teriler
SELECT m.id,m.ad + N' '+ m.soyad AS musteri
FROM dbo.Musteri m
LEFT JOIN dbo. Siparis s ON s.musteri_id = m.id
WHERE s.id IS NULL
ORDER BY m.ad;
