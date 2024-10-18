program Main;

{$mode objfpc}{$H+}

uses
  SysUtils,
  Empilhavel,
  Pilha;

var
  MPilha: IEmpilhavel;

begin
  MPilha := TPilha.Create;
  MPilha.Empilhar('Joker');
  MPilha.Empilhar('Queen');
  writeln(MPilha.imprimir);
end.