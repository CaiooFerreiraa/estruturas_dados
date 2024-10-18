program Main;

{$mode objfpc}{$H+}

uses
  SysUtils,
  Listavel,
  Lista;

var
  Compras: IListavel;

begin
  Compras := TLista.Create;
  Compras.Adicionar('Feijao');
  Compras.Adicionar('Asucar');
  Compras.Adicionar('Arroz');
  Compras.Adicionar('Macarrao');
  writeln(Compras.ListarAll);
  writeln(Compras.ListarIndex(2));
  Compras.Deletar(4);
  writeln(Compras.ListarAll);
  Compras.Atualizar('Cafe', 2);
  writeln(Compras.ListarAll);
end.