-- 1.
/*
    Crear un bloque PL/SQL que devuelva al salario máximo del
    departamento 100 y lo deje en una variable denominada salario_maximo
    y la visualic
*/

declare
    salario_maximo NUMBER;
    empleado_detalle EMPLOYEES%rowtype;
    nombre_departamento DEPARTMENTS.department_name%type;

begin
    select max(salary) into salario_maximo
    from employees where department_id = 100;

    select * into empleado_detalle
    from employees where SALARY = salario_maximo and department_id = 100;

    select department_name into nombre_departamento
    from departments where department_id = 100;

    DBMS_OUTPUT.PUT_LINE('Informacion del empleado con el salario maximo');
    DBMS_OUTPUT.PUT_LINE('');
    DBMS_OUTPUT.PUT_LINE('Nombre: ' || empleado_detalle.first_name);
    DBMS_OUTPUT.PUT_LINE('Apellido: ' || empleado_detalle.last_name);
    DBMS_OUTPUT.PUT_LINE('Salario: ' || empleado_detalle.s:wpg_docload:alary);
    DBMS_OUTPUT.PUT_LINE('Departamento: ' || empleado_detalle.department_id || ' - ' || nombre_departamento);
end;
/

-- 2. segunda practica

declare
    empleado_detalle EMPLOYEES%rowtype;
    buscador EMPLOYEES.employee_id%type;
    trabajo JOBS.job_title%type;
begin
    buscador := 100;
    select * into empleado_detalle from EMPLOYEES where employee_id = buscador;
    select JOB_TITLE into trabajo from JOBS  where job_id = empleado_detalle.job_id;

    DBMS_OUTPUT.PUT_LINE('Informacion del empleado');
    DBMS_OUTPUT.PUT_LINE('');
    DBMS_OUTPUT.PUT_LINE('Nombre: ' || empleado_detalle.first_name);
    DBMS_OUTPUT.PUT_LINE('Tipo de empleo ' || empleado_detalle.job_id || ' - ' || trabajo);

end;
/

/*
    Crear un bloque PL/SQL que devuelva al salario máximo del
    departamento 100 y lo deje en una variable denominada salario_maximo
    y la visualic
*/

declare
    salario_maximo NUMBER;
    empleado_detalle EMPLOYEES%rowtype;
    nombre_departamento DEPARTMENTS.department_name%type;

begin
    select max(salary) into salario_maximo
    from employees where department_id = 100;

    select * into empleado_detalle
    from employees where SALARY = salario_maximo and department_id = 100;

    select department_name into nombre_departamento
    from departments where department_id = 100;

    DBMS_OUTPUT.PUT_LINE('Informacion del empleado con el salario maximo');
    DBMS_OUTPUT.PUT_LINE('');
    DBMS_OUTPUT.PUT_LINE('Nombre: ' || empleado_detalle.first_name);
    DBMS_OUTPUT.PUT_LINE('Apellido: ' || empleado_detalle.last_name);
    DBMS_OUTPUT.PUT_LINE('Salario: ' || empleado_detalle.salary);
    DBMS_OUTPUT.PUT_LINE('Departamento: ' || empleado_detalle.department_id || ' - ' || nombre_departamento);
end;
/

/*
    PRÁCTICA 3
    Crear una variable de tipo DEPARTMENT_ID y ponerla algún valor, por
    ejemplo 10.
*/

declare
    idDepartament DEPARTMENTS.department_id%type;
    dataDepartament DEPARTMENTS%rowtype;


begin
    idDepartament := 10;
    select * into dataDepartament from DEPARTMENTS where department_id = idDepartament;
    dbms_output.put_line(idDepartament);

    dbms_output.put_line(dataDepartament.department_name);
    dbms_output.put_line(dataDepartament.location_id);
    dbms_output.put_line(dataDepartament.manager_id);
end;

/*
    PRÁCTICA 4
    Mediante dos consultas recuperar el salario máximo y el salario mínimo
    de la empresa e indicar su diferencia
*/

declare
    maxSalario NUMBER;
    minSalario NUMBER;
    diferencia NUMBER;
begin
    select max(salary) into maxSalario from employees;
    select min(salary) into minSalario from employees;

    diferencia := maxSalario - minSalario;
    DBMS_OUTPUT.PUT_LINE('El salario máximo es: ' || maxSalario);
    DBMS_OUTPUT.PUT_LINE('El salario mínimo es: ' || minSalario);
    DBMS_OUTPUT.PUT_LINE('La diferencia es: ' || diferencia);
end;

-- practica, insert, update, delete
DECLARE
    MAX_ID NUMBER;
BEGIN
    SELECT MAX(DEPARTMENT_ID) INTO MAX_ID FROM DEPARTMENTS;
    MAX_ID:=MAX_ID+1;
    INSERT INTO departments (department_id,department_name,manager_id,location_id)
    VALUES (MAX_ID,'INFORMATICA',100,1000);
    COMMIT;
END;