unit Empilhavel;

{$mode objfpc}{$H+}

interface

type
  IEmpilhavel = interface
  ['{6f2e11bd-ad62-4345-8a60-03e700ba8fc4}']
  {Create}
  procedure Empilhar(const carta: string);
  {Read}
  function OlharTopo: string;
  {Update}
  procedure Atualizar(const carta: string);
  {Delete}
  procedure Desempilhar;

  {Auxiliares}
  function estaCheia: boolean;
  function estaVazia: boolean;
  function imprimir: string;
  end;

implementation

end.