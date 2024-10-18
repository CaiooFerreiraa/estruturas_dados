unit Lista;

{$mode objfpc}{$H+}

interface

uses
  Listavel;

type
  TLista = class(TInterfacedObject, IListavel)
  private
    Tamanho: integer;
    Quantidade: integer;
    ALista: array [1..5] of string;
    PonteiroInicio: integer;
    PonteiroFim: integer;
  public
    constructor Create;
    procedure Adicionar(const item: string);
    function ListarAll: string;
    function ListarIndex(const idxIn: integer): string;
    procedure Atualizar(const item: string; const idx: integer);
    procedure Deletar(const idx: integer);
    procedure DeletarAll;
    function estaCheia: boolean;
    function estaVazia: boolean;
  end;

implementation

constructor TLista.Create;
  begin
    Tamanho := High(ALista) - Low(ALista) + 1;
    Quantidade := 0;
    PonteiroInicio := 1;
    PonteiroFim := 1;
  end;

function TLista.estaCheia: boolean;
  begin
    Result := Quantidade = Tamanho;
  end;

function TLista.estaVazia: boolean;
  begin
    Result := Quantidade = 0;
  end;

procedure TLista.Adicionar(const item: string);
  begin
    if estaCheia then begin
      writeln('A Lista já está cheia');
      Exit;
    end;
    ALista[PonteiroFim] := item;
    PonteiroFim := (PonteiroFim + 1) mod Tamanho;
    Quantidade := Quantidade + 1;
  end;

function TLista.ListarAll: string;
  var 
    aux: string = '[';
    cont: integer;
  begin
    if estaVazia then begin
      Result := aux + ']';
      Exit;
    end;

    for cont := 0 to Quantidade - 1 do
      begin 
        if cont = Quantidade - 1 then begin
          aux := aux + '"' + ALista[(PonteiroInicio + cont) mod Tamanho] + '"';
        end
        else begin
          aux := aux + '"' + ALista[(PonteiroInicio + cont) mod Tamanho] + '", ';
        end;
      end;

    Result := aux+']';
  end;

function TLista.ListarIndex(const idxIn: integer): string;
var
  aux: string;
  cont: integer;
  posicaoFisica: integer;
begin
  aux := '[';

  if estaVazia then begin
    Result := 'A lista está fazia';
    Exit;
  end;

  if (idxIn < 1) or (idxIn > Quantidade) then begin
    Result := 'Digite uma posicao valida';
    Exit;
  end;
  
  posicaoFisica := (idxIn + (PonteiroInicio - 1)) mod Tamanho;
  
  for cont := 0 to Quantidade-idxIn do begin
    if cont = Quantidade-idxIn then begin
      aux := aux + '"' + ALista[(posicaoFisica + cont) mod Tamanho] + '"';
    end
    else begin
      aux := aux + '"' + ALista[(posicaoFisica + cont) mod Tamanho] + '", ';
    end;
  end;

  Result := aux + ']';
end;

procedure TLista.Atualizar(const item: string; const idx: integer);
  begin
    if estaVazia then begin
      writeln('A lista esta vazia');
      Exit;
    end;

    if (idx < 1) or (idx > Quantidade) then begin
      writeln('Digite uma posicao valida');
      Exit;
    end;

    ALista[idx] := item;
  end;

procedure TLista.Deletar(const idx: integer);
  var
    posicaoFisica: integer;
    cont: integer;
  begin
    if estaVazia then begin
      writeln('A Lista está vazia');
      Exit;
    end;

    if (idx < 1) or (idx > Quantidade) then begin
      writeln('Digite uma posicao valida');
      Exit;
    end;

    posicaoFisica := (idx + (PonteiroInicio - 1)) mod Tamanho;
    writeln(posicaoFisica);
    for cont := 0 to Quantidade-idx-1 do begin
      ALista[(posicaoFisica + cont) mod Tamanho] := ALista[(posicaoFisica + cont + 1) mod Tamanho];
    end;

    Quantidade := Quantidade - 1;
  end;

procedure TLista.DeletarAll;
  begin
    Quantidade := 0;
    PonteiroInicio := 1;
    PonteiroFim := 1;
  end;
end.