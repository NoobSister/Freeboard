create table gallery(
	pno int auto_increment,
	title varchar(20),		-- ������
	filename varchar(50),	-- ���ε� ���ϸ�
	primary key(pno)
);

insert into gallery(title, filename) values('ù��°', 'mypic.jpg');