CREATE TRIGGER trg_StokAzalt
ON Siparis_Detay
AFTER INSERT
AS
BEGIN
    -- Yeni eklenen sipari� detaylar�ndan �r�n ve adet bilgisini al�p stok d���r
    UPDATE U
    SET U.stok = U.stok - I.adet
    FROM Urun U
    INNER JOIN inserted I ON U.id = I.urun_id;
END;
