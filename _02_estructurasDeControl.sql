/*
    Estructuras de control
*/

-- Sentencia IF

set SERVEROUTPUT on

declare
    x number := 20;

begin
    if x >= 10 then
        dbms_output.put_line('Se cumple la condicion');

    else
        dbms_output.put_line('No se cumple la condicion');

    end if;

end;
/


declare
    edad number;
begin
    edad := 42;

    if edad <= 17 then
        dbms_output.put_line('Eres menor de edad, no puedes entrar :(');

    ELSIF edad >= 18 and edad <= 40 then
        dbms_output.put_line('Puedes pasar perfectamente!');

    else
        dbms_output.put_line('No cumples con el requisito de edad. No puedes pasar');

    end if;

end;
/

/* Practica de if/else if/else */
declare
    variable NUMBER;
    result NUMBER;

BEGIN
    variable := 11;
    result := MOD(variable, 2);

    -- indicar si el numero es par o impar

    if result = 0 then
        dbms_output.put_line('El numero => ' || variable || ' es par!');

    else
        dbms_output.put_line('El numero => ' || variable || ' es impar!');
    end if;
end;
/


-- segunda practica de if/else

declare
    tipo_producto CHAR(1);

begin
    /*
    'A' --> Electronica
    'B' --> Informática
    'C' --> Ropa
    'D' --> Música
    'E' --> Libros
    */
    tipo_producto := 'A';

    if tipo_producto = 'A' then
        dbms_output.put_line('Componente electronico');

    elsif tipo_producto = 'B' then
        dbms_output.put_line('Componente informatico');

    ELSIF tipo_producto = 'C' then
        dbms_output.put_line('Ropa de calidad');

    ELSIF tipo_producto = 'D' then
        dbms_output.put_line('Alguna cancion');

    ELSIF tipo_producto = 'E' then
        dbms_output.put_line('Un buen libro');

    else
        dbms_output.put_line('No se reconoce la etiqueta!');

    end if;
end;
/
