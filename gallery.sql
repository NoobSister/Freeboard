create table gallery(
	pno int auto_increment,
	title varchar(20),		-- 글제목
	filename varchar(50),	-- 업로드 파일명
	primary key(pno)
);

insert into gallery(title, filename) values('첫번째', 'mypic.jpg');