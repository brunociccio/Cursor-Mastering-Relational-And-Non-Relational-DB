SET SERVEROUT ON

/*DROP TABLE ALUNO_CURSOR

CREATE TABLE ALUNO_CURSOR (
    RM NUMBER(10),
    NOME VARCHAR(100)
);

INSERT INTO ALUNO_CURSOR (RM, NOME) VALUES (99097, 'BRUNO');
INSERT INTO ALUNO_CURSOR (RM, NOME) VALUES (99098, 'JOS�');
INSERT INTO ALUNO_CURSOR (RM, NOME) VALUES (99099, 'MARINA');
INSERT INTO ALUNO_CURSOR (RM, NOME) VALUES (99100, 'ISABELA');
INSERT INTO ALUNO_CURSOR (RM, NOME) VALUES (99101, 'THALITA');*/

SELECT * FROM ALUNO_CURSOR;

-- CURSOR IMPL�CITO 

DECLARE
    CURSOR C_ALUNO_CURSOR IS
    SELECT RM, NOME
    FROM ALUNO_CURSOR;
    V_ALUNO_CURSOR C_ALUNO_CURSOR%POWTYPE;
    
BEGIN
    FOR REG IN C_ALUNO_CURSOR LOOP
    END LOOP
END;
\