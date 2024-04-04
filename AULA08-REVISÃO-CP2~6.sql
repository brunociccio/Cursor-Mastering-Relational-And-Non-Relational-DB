/*7. Escreva um bloco PL/SQL que utilize um cursor impl�cito para calcular a soma
total dos sal�rios de todos os funcion�rios.*/

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
    V_SOMA_SALARIOS NUMBER := 0;

BEGIN
    -- ABRE O CURSOR IMPL�CITO
    FOR REG_FUNCIONARIO IN(SELECT SALARIO FROM FUNCIONARIO_CURSOR_REV) LOOP
    V_SOMA_SALARIOS := V_SOMA_SALARIOS + REG_FUNCIONARIO.SALARIO;
    END LOOP;

    DBMS_OUTPUT.PUT_LINE('A soma total dos sal�rios dos funcion�rios �: ' || V_SOMA_SALARIOS);
END;
/
