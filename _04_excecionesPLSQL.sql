-- manejo de excepciones dentro de PL/SQL
declare
    empl EMPLOYEES%rowtype;
begin
    select * into empl
    from employees where employee_id = 1;

    dbms_output.put_line(empl.first_name);

     -- sona de control para excepciones
EXCEPTION
when no_data_found then
    dbms_output.put_line('No se encontro el registro');

when others then
    dbms_output.put_line('Error inesperado, tipo: ' || sqlcode || ' - ' || sqlerrm);
end;

/*
    Practica de excepciones pl/SQL
*/

declare
    search_empleado  EMPLOYEES%rowtype;
    search_id EMPLOYEES.employee_id%type;
begin
    search_id := 10;
    select * into search_empleado from employees where employee_id > search_id;



EXCEPTION
    when no_data_found then
        dbms_output.put_line('No se encontro el empleado');

    when too_many_rows then
        dbms_output.put_line('Demasiados registros');

    when others then
        dbms_output.put_line('Ocurrio un error:  ' || sqlerrm);
end;