/*5. Escreva um programa PL/SQL que use um cursor impl�cito para excluir todos os
registros de uma tabela departamentos.*/

SET SERVEROUTPUT ON;

DROP TABLE FUNCIONARIO_CURSOR_REV;
CREATE TABLE FUNCIONARIO_CURSOR_REV (
    NOME VARCHAR2(55),
    SALARIO NUMBER(10,2),
    DEPARTAMENTO VARCHAR2(255)
);

INSERT INTO FUNCIONARIO_CURSOR_REV VALUES ('BRUNO', 5999.99, 'TI');
INSERT INTO FUNCIONARIO_CURSOR_REV VALUES ('JOS�', 4999.99, 'COMERCIAL');
INSERT INTO FUNCIONARIO_CURSOR_REV VALUES ('MARI', 3999.99, 'JUR�DICO');
INSERT INTO FUNCIONARIO_CURSOR_REV VALUES ('THALITA', 2999.99, 'TI');
INSERT INTO FUNCIONARIO_CURSOR_REV VALUES ('ISABELE', 3999.99, 'TI');

SELECT * FROM FUNCIONARIO_CURSOR_REV;

COMMIT;

SET SERVEROUTPUT ON;

DECLARE
    V_CONTADOR NUMBER := 0;
BEGIN
    FOR REG IN (SELECT * FROM FUNCIONARIO_CURSOR_REV) LOOP
        DELETE FROM FUNCIONARIO_CURSOR_REV WHERE NOME = REG.NOME;
        V_CONTADOR := V_CONTADOR + SQL%ROWCOUNT;
    END LOOP;

    DBMS_OUTPUT.PUT_LINE('Total de registros exclu�dos: ' || V_CONTADOR);
END;
/
