-- funciones dentro de PL/SQL, mismas funciones de SQL

set SERVEROUTPUT on

declare
    x VARCHAR2(50);

begin
    x:= 'hello';
    dbms_output.put_line(upper(SUBSTR(X, 1, 3)));

    /*
        No se pueden poner f(x) de grupos
    */
    dbms_output.put_line(sysdate);
end;
/

/*
    Practica de funciones
*/

declare
    nombre VARCHAR2(50);
    apellido1 VARCHAR2(50);
    apellido2 VARCHAR2(50);

begin
    nombre := 'Jose';
    apellido1 := 'Reynoso';
    apellido2 := 'Valiente';

    dbms_output.put_line('Tu nombre => ' || upper(nombre) || ' ' || upper(apellido1) || ' ' || upper(apellido2));
    dbms_output.put_line('Tus iniciales => ' || substr(nombre, 1, 1) || '.' || substr(apellido1, 1, 1) || '.' || substr(apellido2, 1, 1));
end;
/
