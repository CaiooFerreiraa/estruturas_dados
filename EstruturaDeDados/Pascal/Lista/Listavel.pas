unit Listavel;

{$mode objfpc}{$H+}

interface

type
  IListavel = interface
  ['{f1359b9f-77d4-4fc6-943c-98de5ba540a8}']
  //Create
  procedure Adicionar(const item: string);
  //Read
  function ListarAll: string;
  function ListarIndex(const idxIn: integer): string;
  //Update
  procedure Atualizar(const item: string; const idx: integer);
  //Delete
  procedure Deletar(const idx: integer);
  procedure DeletarAll;

  //Auxiliares
  function estaCheia: boolean;
  function estaVazia: boolean;
  end;

implementation  

end.