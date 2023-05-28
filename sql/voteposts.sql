drop table voteposts;

CREATE TABLE VOTEPOSTS (
    num NUMBER(10) not null,
    user_id VARCHAR2(10),
    choiceSub VARCHAR2(50) NOT NULL,
    choice_1 VARCHAR2(30) NOT NULL,
    choice_2 VARCHAR2(30) NOT NULL,
    choice1_count NUMBER(10) default 0,
    choice2_count NUMBER(10) default 0,
    created_at TIMESTAMP  DEFAULT CURRENT_TIMESTAMP,
    isend NUMBER(1) default 0,
    CONSTRAINT pk_voteposts PRIMARY KEY (num)
);
    created_at date default sysdate,
insert into VOTEPOSTS(num,choiceSub,choice_1,choice_2,choice1_count,choice2_count,isend ) 
values((select  max(num)+1  from VOTEPOSTS),'a','a','a');
commit

select * from voteposts
order by num desc ;

update VOTEPOSTS set choiceSub, choice_1, choice_2

-- 데이터 삭제
UPDATE voteposts SET created_at = NULL;

ALTER TABLE voteposts MODIFY created_at VARCHAR2(16) DEFAULT TO_CHAR(
    CURRENT_TIMESTAMP, 'YYYY-DD-MM HH24:MI'
);




