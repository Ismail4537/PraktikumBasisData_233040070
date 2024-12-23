use Pertemuan12;
go
CREATE TRIGGER trg_check_status_pengecekan
ON pengecekan
AFTER INSERT, UPDATE
AS
BEGIN
    IF EXISTS (SELECT * FROM inserted WHERE status NOT IN ('Baik', 'Rusak', 'Perlu Perbaikan'))
    BEGIN
        RAISERROR ('Status pengecekan tidak valid', 16, 1);
        ROLLBACK TRANSACTION;
    END;
END;
go