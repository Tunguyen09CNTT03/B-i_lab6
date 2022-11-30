create trigger trg_KhongXoa
	on NhanVien
	for delete
as
	if exists(select *from deleted where DCHI like '%HCM%')
	begin
		print N'Không thể xóa nhân viên ở HCM'
		rollback transaction; 
	end;
select *from NHANVIEN;

delete from NHANVIEN where MANV = '123'