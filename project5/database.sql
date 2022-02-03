use project
CREATE TABLE MEMBER(
  memberId VARCHAR(50),
  memberPw VARCHAR(100) NOT NULL,
  memberName VARCHAR(30) NOT NULL,
  memberMail VARCHAR(100) NOT NULL,
  memberAddr1 VARCHAR(100) NOT NULL,
  memberAddr2 VARCHAR(100) NOT NULL,
  memberAddr3 VARCHAR(100) NOT NULL,
  adminCk int NOT NULL,
  regDate DATE NOT NULL,
  money int NOT NULL,
  point int NOT NULL,
  PRIMARY KEY(memberId)
);
drop table member
select * from member
SELECT MEMBERID, MEMBERNAME, ADMINCK, MONEY, POINT FROM member where MEMBERID = 'test1' AND MEMBERPW = 'test1';
UPDATE member SET adminck = 1 where memberid = 'admin';

-- 국가 테이블 생성
create table nation(
    nationId varchar(2) primary key,
    nationName varchar(50)
);
 
-- 국가 테이블 데이터 삽입
insert into nation values ('01', '국내');
insert into nation values ('02', '국외');
 
-- 작가 테이블 생성
create table author(
    authorId int auto_increment primary key,
    authorName varchar(50),
    nationId varchar(2),
    authorIntro text,
    foreign key (nationId) references nation(nationId)
);

alter table author add regDate timestamp default now();
alter table author add updateDate timestamp default now();
select * from author
drop table author;
    
    alter table author auto_increment = 1;
    
    insert into author(authorName, nationId, authorIntro) values('유홍준', '01', '작가 소개입니다' );
    insert into author(authorName, nationId, authorIntro) values('김난도', '01', '작가 소개입니다' );
    insert into author(authorName, nationId, authorIntro) values('폴크루그먼', '02', '작가 소개입니다' );    
    
    insert into author(authorname, nationid)(select authorname, nationid from author);
    
-- 상품 테이블 
create table book(
    bookId int primary key auto_increment,
    bookName varchar(50)   not null,
    authorId int,
    publeYear Date not null,
    publisher varchar(70) not null,
    cateCode varchar(30),
    bookPrice int not null,
    bookStock int not null,
    bookDiscount decimal(2,2),
    bookIntro text,
    bookContents text,
    regDate timestamp default now(),
    updateDate timestamp default now()
);
select * from book
drop table book;
-- 카테고리 테이블
create table bcate(
    tier int(1) not null,
    cateName varchar(30) not null,
    cateCode varchar(30) not null,
    cateParent varchar(30) ,
    primary key(cateCode),
    foreign key(cateParent) references bcate(cateCode) 
);
select * from bcate;
insert into bcate(tier, cateName, cateCode) values (1, '국내', '100000');
    insert into bcate(tier, cateName, cateCode, cateParent) values (2, '소설', '101000','100000');    
        insert into bcate(tier, cateName, cateCode, cateParent) values (3, '한국소설', '101001','101000');
        insert into bcate(tier, cateName, cateCode, cateParent) values (3, '영미소설', '101002','101000');
        insert into bcate(tier, cateName, cateCode, cateParent) values (3, '일본소설', '101003','101000');
    insert into bcate(tier, cateName, cateCode, cateParent) values (2, '시/에세이', '102000','100000');    
        insert into bcate(tier, cateName, cateCode, cateParent) values (3, '한국시', '102001','102000');    
        insert into bcate(tier, cateName, cateCode, cateParent) values (3, '해외시', '102002','102000');    
    insert into bcate(tier, cateName, cateCode, cateParent) values (2, '경제/경영', '103000','100000');    
        insert into bcate(tier, cateName, cateCode, cateParent) values (3, '경영일반', '103001','103000');    
        insert into bcate(tier, cateName, cateCode, cateParent) values (3, '경영이론', '103002','103000');    
        insert into bcate(tier, cateName, cateCode, cateParent) values (3, '경제일반', '103003','103000');    
        insert into bcate(tier, cateName, cateCode, cateParent) values (3, '경제이론', '103004','103000');    
    insert into bcate(tier, cateName, cateCode, cateParent) values (2, '자기계발', '104000','100000');    
        insert into bcate(tier, cateName, cateCode, cateParent) values (3, '성공/처세', '104001','104000');    
        insert into bcate(tier, cateName, cateCode, cateParent) values (3, '자기능력계발', '104002','104000');    
        insert into bcate(tier, cateName, cateCode, cateParent) values (3, '인간관계', '104003','104000');    
    insert into bcate(tier, cateName, cateCode, cateParent) values (2, '인문', '105000','100000');    
        insert into bcate(tier, cateName, cateCode, cateParent) values (3, '심리학', '105001','105000');    
        insert into bcate(tier, cateName, cateCode, cateParent) values (3, '교육학', '105002','105000');    
        insert into bcate(tier, cateName, cateCode, cateParent) values (3, '철학', '105003','105000');    
    insert into bcate(tier, cateName, cateCode, cateParent) values (2, '역사/문화', '106000','100000');
        insert into bcate(tier, cateName, cateCode, cateParent) values (3, '역사일반', '106001','106000');
        insert into bcate(tier, cateName, cateCode, cateParent) values (3, '세계사', '106002','106000');
        insert into bcate(tier, cateName, cateCode, cateParent) values (3, '한국사', '106003','106000');
    insert into bcate(tier, cateName, cateCode, cateParent) values (2, '과학', '107000','100000');
        insert into bcate(tier, cateName, cateCode, cateParent) values (3, '과학이론', '107001','107000');
        insert into bcate(tier, cateName, cateCode, cateParent) values (3, '수학', '107002','107000');
        insert into bcate(tier, cateName, cateCode, cateParent) values (3, '물리학', '107003','107000');
insert into bcate(tier, cateName, cateCode) values (1, '국외', '200000');
    insert into bcate(tier, cateName, cateCode, cateParent) values (2, '문학', '201000','200000');    
        insert into bcate(tier, cateName, cateCode, cateParent) values (3, '소설', '201001','201000');    
        insert into bcate(tier, cateName, cateCode, cateParent) values (3, '시', '201002','201000');    
        insert into bcate(tier, cateName, cateCode, cateParent) values (3, '희곡', '201003','201000');    
    insert into bcate(tier, cateName, cateCode, cateParent) values (2, '인문/사회', '202000','200000');    
        insert into bcate(tier, cateName, cateCode, cateParent) values (3, '교양', '202001','202000');    
        insert into bcate(tier, cateName, cateCode, cateParent) values (3, '철학', '202002','202000');    
    insert into bcate(tier, cateName, cateCode, cateParent) values (2, '경제/경영', '203000','200000');    
        insert into bcate(tier, cateName, cateCode, cateParent) values (3, '경제학', '203001','203000');    
        insert into bcate(tier, cateName, cateCode, cateParent) values (3, '경영학', '203002','203000');    
        insert into bcate(tier, cateName, cateCode, cateParent) values (3, '투자', '203003','203000');    
    insert into bcate(tier, cateName, cateCode, cateParent) values (2, '과학/기술', '204000','200000');    
        insert into bcate(tier, cateName, cateCode, cateParent) values (3, '교양과학', '204001','204000');    
        insert into bcate(tier, cateName, cateCode, cateParent) values (3, '물리학', '204002','204000');    
        insert into bcate(tier, cateName, cateCode, cateParent) values (3, '수학', '204003','204000');  
        
        -- 외래키 추가
alter table book add foreign key (authorId) references author(authorId);
alter table book add foreign key (cateCode) references bcate(cateCode);