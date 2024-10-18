unit Enfileiravel;

{$mode objfpc}{$H+}

interface

type
  IEnfileiravel = interface
  ['{B3F0AC1E-58D7-4B89-AC91-F8E9D5A9D567}']
  //Create
  procedure Enfileirar(const pessoa: string);
  //Read
  function Mostrar: string;
  //Update
  procedure AtualizarFrente(const pessoa: string);
  procedure AtualizarAtras(const pessoa: string);
  //Delete
  procedure Desenfileirar;

  //Auxiliares
  function estaCheia: boolean;
  function estaVazia: boolean;
  function imprimir: string;
  end;

implementation

end.
