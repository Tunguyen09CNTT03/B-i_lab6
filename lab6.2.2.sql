create trigger trg_TongNV_update
	on NhanVien
	
	after update
as
	declare @male int , @female int;

	select @female = count (MANV)from NHANVIEN where PHAI = N'N?'

	select @male = count (MANV)from NHANVIEN where PHAI = N'Nam'

print N'T?ng s? nh�n vi�n l� n?: ' + cast (@female as varchar);

print N'T?ng s? nh�n vi�n l� nam: ' + cast (@male as varchar);
