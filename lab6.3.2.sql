create trigger trg_themNV on NhanVien
after insert 
as
	begin
		insert into PHANCONG values ((select manv from inserted),1,1,30)
	end;
/*Gọi trigger*/
insert into NHANVIEN values ('tang','phuc','nguyen','023','1-8-1988','27890','Nam',16000,'005',1)