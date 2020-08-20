drop table member;

create table member (
	id varchar2(10) primary key,
	name varchar2(10),
	pwd varchar2(10),
	age number(5),
	juso varchar2(50)
	);
	
insert into member(id, name, pwd) values('hong', '홍길동', 'hong');
insert into member values('222', '이기동', '222', 18, '대구');
select * from member;