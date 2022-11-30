create trigger trg_CheckLuong
	on NhanVien
	for insert,update
as
	if (select luong from inserted) <15000
	begin
		print N'Lương tối thiểu phải từ 15000'
		rollback transaction;
	end;
/*Gọi trigger*/
		INSERT INTO [dbo].[NHANVIEN]
        ([HONV],[TENLOT],[TENNV],[MANV],[NGSINH],[DCHI],[PHAI],[LUONG],[MA_NQL],[PHG])
		VALUES
		(N'Nguyễn',N'Quang',N'Dương','1','1-9-1999','Bình Định','Nam',20000,'005',1);
