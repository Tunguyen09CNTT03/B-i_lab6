alter trigger trg_TongNV_update
	on NhanVien
	
	after update
as
	
	if (select phai from deleted) != (select top 1 phai from inserted)
	
	declare @male int , @female int;
	
	begin
		select @female = count (MANV)from NHANVIEN where PHAI = N'Nữ'

		select @male = count (MANV)from NHANVIEN where PHAI = N'Nam'

		print N'Tổng số nhân viên là nữ: ' + cast (@female as varchar);

		print N'Tổng số nhân viên là nam: ' + cast (@male as varchar);
	end;