program ejercicio1;
uses crt;
var

reporte : record
id : integer;
titulo, categoria, contenido, fecha : String;
status : boolean;
end;
ans1 : integer;
r: integer;
titulo: String;
document : text;


begin
r:= 1;
repeat
clrscr;
writeln('Introduce el nombre de la categoria donde quieres anexar el regidtro');
writeln(' syg = salir y guardar');
readln(reporte.categoria);
if reporte.categoria <> 'syg' then begin

writeln ('Introduce fecha del registro');
readln(reporte.fecha);
writeln('titulo del registro');
readln(reporte.titulo);
titulo := reporte.categoria+'_'+r+'.txt';
assign(document, titulo);
writeln('Contenido del registro');
readln(reporte.contenido);
writeln('Status del registro');
writeln('1= True');
writeln('2= false');
readln(ans1);
if ans1 = 1 then reporte.status := true else reporte.status:= false;
writeln;
rewrite (document);
writeln (document,'titulo : ',reporte.titulo);
writeln (document,'categoria ',reporte.categoria);
writeln (document,'contenido : ',reporte.contenido);
writeln (document,'Etatus : ',reporte.status);

writeln('Producto registrado como : ',titulo);
readln;
r:= r+1;
end;




until reporte.categoria = 'syg';
close(document);
end.
