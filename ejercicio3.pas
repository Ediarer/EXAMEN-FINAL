program fibonacci;
uses crt;
var
   num,i:integer;
   fiche:text;

 function fib(num:integer):integer;

begin
      if (num=1) or (num=2) then fib:=1
      else fib:=fib(num-1)+fib(num-2);
end;

begin
     assign(fiche,'SECUENCIA.TXT');
     rewrite(fiche);
     writeln (' ESTA FUNCION DETERMINA LA SECUENCIA DE FIBONACCI HASTA UN VALOR INGRESADO ');
     writeln ('');
     writeln ('INGRESO EL VALOR A EVALUAR');
     readln(num);
     writeln('LA SECUENCIA SE GUARDARA EN UN ARCHIVO TXT');
     for i:=1 to num do
     writeln(fiche,fib(i),'  ');
     close(fiche);

 end.

