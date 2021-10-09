program HelloWorld;
uses crt;

var
        a, b, c, cmd: Integer;

begin
        while True do
        begin
                writeln('Welcome to KolkulatorPAS (C)2021 koleq');
                writeln();
                writeln('1. Addition');
                writeln('2. Subtraction');
                writeln('3. Exit');
                writeln();
                write('pick a choice: ');
                readln(cmd);

                if cmd = 1 then
                begin
                        write('Please write your first number: ');
                        readln(a);
                        write('Please write your second number: ');
                        readln(b);
                        c := a + b;
                        writeln('Result of ', a, ' + ', b, ' = ', c);
                end
                else if cmd = 2 then
                begin
                        write('Please write your first number: ');
                        readln(a);
                        write('Please write your second number: ');
                        readln(b);
                        c := a - b;
                        writeln('Result of ', a, ' - ', b, ' = ', c);
                end
                else
                        Exit;
        end
end.
