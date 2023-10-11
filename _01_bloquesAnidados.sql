/*
    Bloques Anidados
*/
set SERVEROUTPUT on

declare
    x number := 10;
begin
    dbms_output.put_line('Variable global => ' || x);
    declare
    x number := 20;
    begin
    dbms_output.put_line('Variable local => ' || x);
    end;
dbms_output.put_line('Variable ? => ' || x);    -- variable global
end;
/

/*
    Este bloque es correcto?
*/
declare
X number := 100;    -- solucion, agregar el declare global
BEGIN
DBMS_OUTPUT.PUT_LINE(X);
    DECLARE
    X NUMBER:=20;
    BEGIN
    DBMS_OUTPUT.PUT_LINE(X);
    END;
DBMS_OUTPUT.PUT_LINE(X);
END;
/

/*
    Tercer caso - Siempre se miran las variables globales
*/

SET SERVEROUTPUT ON
DECLARE
X NUMBER:=10;
BEGIN
DBMS_OUTPUT.PUT_LINE(X);

    BEGIN
    DBMS_OUTPUT.PUT_LINE(X);
    END;
DBMS_OUTPUT.PUT_LINE(X);
END;
/
