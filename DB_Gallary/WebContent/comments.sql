create table comments(
	seq int  primary key,
	name varchar2(10) ,
	pass varchar2(10) ,
	content varchar2(100),
	reg_date date default sysdate
);

insert into comments(seq, name, pass, content) values(1, 'test', '1234', 'test');