create trigger trg_delete_Thannhan on Nhanvien
instead of delete 
as
	begin
	delete from THANNHAN where MA_NVIEN in(select manv from deleted)
	delete from NHANVIEN where manv in(select manv from deleted)
	end;
	insert into THANNHAN values ('020','Khang','Nam','11-3-2009','con')
	delete from NHANVIEN where manv='020'