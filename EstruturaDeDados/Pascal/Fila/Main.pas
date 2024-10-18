program Main;

{$mode objfpc}{$H+}

uses
  SysUtils,
  Enfileiravel,
  Fila;

var
  Supermercado: IEnfileiravel;

begin
  Supermercado := TFila.Create;
  Supermercado.Enfileirar('Caio');
  Supermercado.Enfileirar('Ana');
  Supermercado.AtualizarFrente('Joao');
  Supermercado.AtualizarAtras('Ana');
  writeln(Supermercado.imprimir);
end.