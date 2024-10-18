unit Fila;

{$mode objfpc}{$H+}

interface

uses
  Enfileiravel;

type
  TFila = class(TInterfacedObject, IEnfileiravel)
  private
    AFila: array [1..5] of string;
    Tamanho: integer;
    Quantidade: integer;
    PonteiroInicio: integer;
    PonteiroFim: integer;
  public
    constructor Create();
    procedure Enfileirar(const pessoa: string);
    function Mostrar: string;
    procedure AtualizarFrente(const pessoa: string);
    procedure AtualizarAtras(const pessoa: string);
    procedure Desenfileirar;
    function estaCheia: boolean;
    function estaVazia: boolean;
    function imprimir: string;
  end;

implementation

constructor TFila.Create;
  begin
    Tamanho := High(AFila) - Low(AFila) + 1;
    Quantidade := 0;
    PonteiroFim := 1;
    PonteiroInicio := 1;
  end;

function TFila.estaCheia: boolean;
  begin
    Result := Quantidade = Tamanho;
  end;

function TFila.estaVazia: boolean;
  begin
    Result := Quantidade = 0;
  end;

procedure TFila.Enfileirar(const pessoa: string);
  begin
    if (estaCheia) then begin
      writeln('A fila está cheia');
    end
    else begin
      AFila[PonteiroFim] := pessoa;
      PonteiroFim := (PonteiroFim + 1) mod Tamanho;
      Quantidade := Quantidade + 1;  
    end;
  end;

function TFila.Mostrar: string;
  begin
    if estaVazia then begin
      writeln('A fila esta vazia');
    end
    else begin
      Result := AFila[PonteiroInicio];
    end;
  end;

procedure TFila.AtualizarFrente(const pessoa: string);
  begin
    if estaVazia then begin
      writeln('A fila está vazia');
    end
    else begin
      AFila[PonteiroInicio] := pessoa
    end;
  end;

procedure TFila.AtualizarAtras(const pessoa: string);
  begin
    if estaVazia then begin
      writeln('A fila está vazia');
    end
    else begin
      AFila[PonteiroFim-1] := pessoa;
    end;
  end;

procedure TFila.Desenfileirar;
  begin
    if estaVazia then begin
      writeln('A fila está vazia');
    end
    else begin
      PonteiroInicio := (PonteiroInicio + 1) mod Tamanho;
      Quantidade := Quantidade - 1;
    end;
  end;

function TFila.imprimir: string;
var 
  aux: string;
  cont: integer;
begin
  aux := '[';

  if estaVazia then 
    writeln('A fila está vazia')
  else begin
    for cont := 0 to Quantidade - 1 do
    begin
      if cont = Quantidade - 1 then
        aux := aux + '"' + AFila[(PonteiroInicio + cont) mod Tamanho] + '"'
      else
        aux := aux + '"' + AFila[(PonteiroInicio + cont) mod Tamanho] + '", ';
    end;
  end;

  aux := aux + ']';
  Result := aux;
end;

end.