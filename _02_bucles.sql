are
    num1 number;
        num2 number;
            opt char(1);    -- operacion a realizar
            result number;


        begin
            num1 := 10;
            num2 := 20;
            opt := '*';
                case opt
                        when '+' then result := num1 + num2;

                                when '-' then result := num1 - num2;

                                        when '*' then result := num1 * num2;

                                                when '/' then result := num1 / num2;
                                                        else result := 0;
                                                                end case;

                                                                    DBMS_OUTPUT.PUT_LINE('El resultado de: ' || num1 || ' ' || opt || ' ' || num2 || ' es: ' || result);
        end;'''''''')'''''''''')
