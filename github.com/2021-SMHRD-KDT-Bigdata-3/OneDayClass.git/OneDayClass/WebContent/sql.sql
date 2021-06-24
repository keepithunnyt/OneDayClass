CREATE TABLE USERS
(ID VARCHAR2(20),
PW VARCHAR2(20) NOT NULL,
NAME VARCHAR2(20) NOT NULL,
ADDRESS VARCHAR2(100) NOT NULL,
RECOMM VARCHAR2(50) ,
CONSTRAINT users_uid_pk PRIMARY KEY(ID)
)

SELECT * FROM USERS
DELETE FROM USERS WHERE USER_ID = 

CREATE TABLE TEACHERS
(TEACHER_ID VARCHAR2(20) NOT NULL,
TEACHER_PW VARCHAR2(20) NOT NULL,
TEACHER_NAME VARCHAR2(20) NOT NULL,
TEL VARCHAR2(20) NOT NULL,
CONSTRAINT teachers_tid_pk PRIMARY KEY(TEACHER_ID)
)

SELECT * FROM class
DELETE FROM TEACHERS WHERE Tel = 'test'

CREATE SEQUENCE CLASS_CID_SEQ
INCREMENT BY 1
START WITH 1
MAXVALUE 99999
NOCACHE
NOCYCLE

CREATE TABLE CLASS
(
CLASS_ID NUMBER(20),
TEACHER_ID VARCHAR2(20),
TITLE VARCHAR2(100) NOT NULL,
CONTENT VARCHAR2(1000) NOT NULL,
TIME VARCHAR2(100) NOT NULL,
PLACE VARCHAR2(100) NOT NULL,
CATEGORY VARCHAR2(50) NOT NULL,
IMAGE VARCHAR2(100),
CONSTRAINT class_cid_pk PRIMARY KEY(CLASS_ID),
CONSTRAINT class_tid_fk FOREIGN KEY(TEACHER_ID)
REFERENCES TEACHERS (TEACHER_ID)
)

CREATE TABLE REVIEW
(ID VARCHAR2(20),
CLASS_ID NUMBER(20),
RATING NUMBER(20) not null,
COMM VARCHAR2(1000) not null,
DATES DATE DEFAULT SYSDATE,
CONSTRAINT review_id_fk FOREIGN KEY(ID)
REFERENCES USERS (ID),
CONSTRAINT review_cid_fk FOREIGN KEY(CLASS_ID)
REFERENCES CLASS (CLASS_ID)
)
drop table REVIEW cascade constraint;
drop table ENROLMENT cascade constraint;
CREATE TABLE ENROLMENT
(ID VARCHAR2(20),
CLASS_ID NUMBER(20),
DATES DATE DEFAULT SYSDATE,
STATE VARCHAR2(20),
CONSTRAINT enrolment_id_fk FOREIGN KEY(ID)
REFERENCES USERS (ID) on delete cascade,
CONSTRAINT enrolment_cid_fk FOREIGN KEY(CLASS_ID)
REFERENCES CLASS (CLASS_ID) on delete cascade
)

CREATE SEQUENCE NOTICE_NNUM_SEQ
INCREMENT BY 1
START WITH 1
MAXVALUE 99999
NOCACHE
NOCYCLE

CREATE TABLE NOTICE
(NUM NUMBER(20),
N_TITLE VARCHAR2(100),
N_CONTENT VARCHAR(2000),
DATES DATE DEFAULT SYSDATE,
CONSTRAINT notice_nnum_pk PRIMARY KEY(NUM)
)



select * from class ;
select * from users;
select * from REVIEW;
select * from class where class_id = 196;
select * from USERS

update users set recomm = 'sport' where id='taehee'







)

