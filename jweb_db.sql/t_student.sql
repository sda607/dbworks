CREATE TABLE t_student(
    stdid NUMBER(3) PRIMARY KEY,
    stdname VARCHAR2(20) NOT NULL 
    );
    
    DESC t_student;
    
    INSERT INTO t_student(stdid, stdname) VALUES (101, '¿Ã∞≠');
    
    SELECT * FROM t_student;