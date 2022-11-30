create trigger trg_TongNV_update
	on NhanVien
	
	after update
as
	declare @male int , @female int;

	select @female = count (MANV)from NHANVIEN where PHAI = N'N?'

	select @male = count (MANV)from NHANVIEN where PHAI = N'Nam'

print N'T?ng s? nhân viên là n?: ' + cast (@female as varchar);

print N'T?ng s? nhân viên là nam: ' + cast (@male as varchar);
