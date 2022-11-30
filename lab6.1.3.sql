create trigger trg_CheckKhongUDND
	on nhanvien
	for update
as
	if exists (select dchi from inserted where DCHI like '%HCM%' )
	begin
		print N'Không thể cập nhật nhân viên ở HCM';
		rollback tran;
	end;