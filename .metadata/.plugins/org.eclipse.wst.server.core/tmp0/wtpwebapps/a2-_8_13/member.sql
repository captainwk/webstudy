drop table member;

create table member (
	id varchar2(10) primary key,
	name varchar2(10),
	pwd varchar2(10),
	age number(5),
	juso varchar2(50)
	);
	
insert into member(id, name, pwd) values('hong', 'ȫ�浿', 'hong');
insert into member values('222', '�⵿̱', '222', 18, '�뱸');
select * from member;