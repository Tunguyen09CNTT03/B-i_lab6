create trigger trg_TongNV
	on NhanVien
	
	after insert
as
	declare @male int , @female int;

	select @female = count (MANV)from NHANVIEN where PHAI = N'Nữ'

	select @male = count (MANV)from NHANVIEN where PHAI = N'Nam'

print N'Tổng số nhân viên là nữ: ' + cast (@female as varchar);

print N'Tổng số nhân viên là nam: ' + cast (@male as varchar);
