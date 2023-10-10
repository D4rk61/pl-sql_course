/*
 *  Scripts creados en la primera session del curso
 *
 *  Jose Reynoso - Blackshark
*/

set SERVEROUTPUT ON

DECLARE
    -- declaracion de variables
    edad number;
    nombre VARCHAR2(20);
    apellido VARCHAR2(20);

    -- variables booleanas
    condicion BOOLEAN;

    -- variable %TYPE
    x NUMBER;
    z X%TYPE;   // --> z tenga el mismo tipo que x
    h X%TYPE;

BEGIN
    x := 10;
    z := 2;

    h := x - y;
    condicion := TRUE;
    condicion := FALSE;
    condicion := NULL;

    edad := 17;
    nombre := 'Jose';
    apellido := 'Reynoso';
    dbms_output.put_line('Persona: ' || nombre || ' ' || apellido ||  ' edad: ' || edad);
    dbms_output.put_line(h)

END;

-- Primera prueba:
--
set SERVEROUTPUT on

DECLARE

    impuesto CONSTANT NUMBER := 21;
    precio NUMBER(5,2);
    resultado precio%TYPE;


BEGIN
    precio := 100.50;
    resultado := precio * impuesto / 100;
    dbms_output.put_line('El valor es de: ' || precio || ' el impuesto es del ' || impuesto || '%, el resultado: ' || resultado);

end;
/
