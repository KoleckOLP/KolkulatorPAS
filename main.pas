program HelloWorld;
uses crt;

var
        a, b, c: single;
        cmd: string;

procedure PAKTC();
begin
        writeln('press any key to continue');
        readkey;
        ClrScr;
end;

begin
        ClrScr;
        while True do
        begin
                writeln('Welcome to KolkulatorPAS (C)2021 koleq');
                writeln();
                writeln('1. Addition    4. Multiplication');
                writeln('2. Subtraction 5. Division');
                writeln('3. Exit');
                writeln();
                write('pick a choice: ');
                readln(cmd);

                if cmd = '1' then
                begin
                        write('Please write your first number: ');
                        readln(a);
                        write('Please write your second number: ');
                        readln(b);
                        c := a + b;
                        ClrScr;
                        writeln('Result of ', a:0:2, ' + ', b:0:2, ' = ', c:0:2);
                        PAKTC;
                end
                else if cmd = '2' then
                begin
                        write('Please write your first number: ');
                        readln(a);
                        write('Please write your second number: ');
                        readln(b);
                        c := a - b;
                        ClrScr;
                        writeln('Result of ', a:0:2, ' - ', b:0:2, ' = ', c:0:2);
                        PAKTC;
                end
                else if cmd = '4' then
                begin
                        write('Please write your first number: ');
                        readln(a);
                        write('Please write your second number: ');
                        readln(b);
                        c := a * b;
                        ClrScr;
                        writeln('Result of ', a:0:2, ' * ', b:0:2, ' = ', c:0:2);
                        PAKTC;
                end
                else if cmd = '5' then
                begin
                        write('Please write your first number: ');
                        readln(a);
                        write('Please write your second number: ');
                        readln(b);
                        c := a / b;
                        ClrScr;
                        writeln('Result of ', a:0:2, ' / ', b:0:2, ' = ', c:0:2);
                        PAKTC;
                end
                else if cmd = '3' then
                begin
                        Exit;
                end
                else
                begin
                        ClrScr;
                        writeln('input is 1-5 which does not include ', cmd, ' try again');
                        PAKTC;
                end
        end
end.
