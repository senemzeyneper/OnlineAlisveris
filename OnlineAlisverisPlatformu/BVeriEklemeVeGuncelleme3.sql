CREATE TRIGGER trg_StokAzalt
ON Siparis_Detay
AFTER INSERT
AS
BEGIN
    -- Yeni eklenen sipariþ detaylarýndan ürün ve adet bilgisini alýp stok düþür
    UPDATE U
    SET U.stok = U.stok - I.adet
    FROM Urun U
    INNER JOIN inserted I ON U.id = I.urun_id;
END;
