unit Pilha;

{$mode objfpc}{$H+}

interface

uses
  Empilhavel;

type
  TPilha = class(TInterfacedObject, IEmpilhavel)
  private
    APilha: array [1..5] of string;
    Tamanho: integer;
    PonteiroFim: integer;
  public
    constructor Create;
    procedure Empilhar(const carta: string);
    function OlharTopo: string;
    procedure Atualizar(const carta: string);
    procedure Desempilhar;
    function estaCheia: boolean;
    function estaVazia: boolean;
    function imprimir: string;
  end;

implementation

constructor TPilha.Create;
  begin
    PonteiroFim := 0;
    Tamanho := High(APilha) - Low(APilha) + 1;
  end;

function TPilha.estaCheia: boolean;
  begin
    Result := PonteiroFim = Tamanho;
  end;

function TPilha.estaVazia: boolean;
  begin
    Result := PonteiroFim = 0;
  end;

procedure TPilha.Empilhar(const carta: string);
begin
  if estaCheia then begin
    writeln('A pilha está cheia');
    Exit;
  end;

  PonteiroFim := PonteiroFim + 1;
  APilha[PonteiroFim] := carta;
end;

function TPilha.OlharTopo: string;
  begin
    if estaVazia then begin
      Result := 'A pilha esta vazia';
      Exit;
    end;

    Result := APilha[PonteiroFim];
  end;

procedure TPilha.Atualizar(const carta: string);
  begin
    if estaVazia then begin
      writeln('A pilha esta vazia');
      Exit;
    end;

    APilha[PonteiroFim] := carta;
  end;

procedure TPilha.Desempilhar;
  begin
    if estaVazia then begin
      writeln('A pilha esta vazia');
      Exit;
    end;

    PonteiroFim := PonteiroFim-1;
  end;

function TPilha.imprimir: string;
  var
    aux:string = '[';
    cont: integer;
  begin
    if estaVazia then begin
      Result := aux + ']';
      Exit;
    end;

    for cont := 1 to PonteiroFim do
    begin
      if cont = PonteiroFim then begin
        aux := aux + '"' + APilha[cont] + '"';
      end
      else begin
        aux := aux + '"' + APilha[cont] + '", ';
      end;
    end;

    Result := aux + ']';
  end;

end.
