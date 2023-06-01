create table member (
  id  char(15) not null,
  pwd char(10) not null,
  name char(10) not null,
  birthday char(10) not null,
  email char(30) not null
  )ENGINE=InnoDB DEFAULT CHARSET=utf8;
  
insert into member values ('mindpool', '1111', '홍길동', '20011231', 'mindpool@');