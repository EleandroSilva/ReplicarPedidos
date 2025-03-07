{*******************************************************}
{                      Be More Web                      }
{          In�cio do projeto 06/03/2025 19:11           }
{                 www.bemoreweb.com.br                  }
{                     (17)98169-5336                    }
{                        2003/2025                      }
{         Analista desenvolvedor (Eleandro Silva)       }
{*******************************************************}
unit Model.Entidade.Prazo.Pagamento.Imp;

interface

uses
  Model.Entidade.Prazo.Pagamento.Interfaces,
  Model.Entidade.Prazo.Pagamento.Itens.Interfaces;

type
  TEntidadePrazoPagamento<T : iInterface> = class(TInterfacedObject, iEntidadePrazoPagamento<T>)
    private
      [weak]
      FParent : T;
      FPrazoPagamentoItens  : iEntidadePrazoPagamentoItens<iEntidadePrazoPagamento<T>>;
      FId      : Integer;
      FCodigoPrazo : String;
      FNomePrazo   : String;
      FQuantidadePagamento : Integer;
      FTotaldeDias         : Currency;
      FStatus              : Integer;
    public
      constructor Create(Parent : T);
      destructor Destroy; override;
      class function New(Parent : T) : iEntidadePrazoPagamento<T>;

      function Id                 (Value : Integer)  : iEntidadePrazoPagamento<T>; overload;
      function Id                                    : Integer;                    overload;
      function CodigoPrazo        (Value : String)   : iEntidadePrazoPagamento<T>; overload;
      function CodigoPrazo                           : String;                     overload;
      function NomePrazo          (Value : String)   : iEntidadePrazoPagamento<T>; overload;
      function NomePrazo                             : String;                     overload;
      function QuantidadePagamento(Value : Integer)  : iEntidadePrazoPagamento<T>; overload;
      function QuantidadePagamento                   : Integer;                    overload;
      function TotaldeDias        (Value : Currency) : iEntidadePrazoPagamento<T>; overload;
      function TotaldeDias                           : Currency;                   overload;
      function Status             (Value : Integer)  : iEntidadePrazoPagamento<T>; overload;
      function Status                                : Integer;                    overload;

      function &End : T;
      //Inje��o de depend�ncia
      function PrazoPagamentoItens  : iEntidadePrazoPagamentoItens<iEntidadePrazoPagamento<T>>;
  end;

implementation

uses
  Model.Entidade.Prazo.Pagamento.Itens.Imp;

{ TEntidadePrazoPagamento<T> }

constructor TEntidadePrazoPagamento<T>.Create(Parent: T);
begin
  FParent := Parent;
  FPrazoPagamentoItens := TEntidadePrazoPagamentoItens<iEntidadePrazoPagamento<T>>.New(Self);
end;

destructor TEntidadePrazoPagamento<T>.Destroy;
begin
  inherited;
end;

class function TEntidadePrazoPagamento<T>.New(Parent: T): iEntidadePrazoPagamento<T>;
begin
  Result := Self.Create(Parent);
end;

function TEntidadePrazoPagamento<T>.Id(Value: Integer): iEntidadePrazoPagamento<T>;
begin
  Result := Self;
  FId    := Value;
end;

function TEntidadePrazoPagamento<T>.Id: Integer;
begin
  Result := FId;
end;

function TEntidadePrazoPagamento<T>.CodigoPrazo(Value: String): iEntidadePrazoPagamento<T>;
begin
  Result := Self;
  FCodigoPrazo := Value;
end;

function TEntidadePrazoPagamento<T>.CodigoPrazo: String;
begin
  Result := FCodigoPrazo;
end;

function TEntidadePrazoPagamento<T>.NomePrazo(Value: String): iEntidadePrazoPagamento<T>;
begin
  Result := Self;
  FNomePrazo := Value;
end;

function TEntidadePrazoPagamento<T>.NomePrazo: String;
begin
  Result := FNomePrazo;
end;

function TEntidadePrazoPagamento<T>.QuantidadePagamento(Value: Integer): iEntidadePrazoPagamento<T>;
begin
  Result := Self;
  FQuantidadePagamento := Value;
end;

function TEntidadePrazoPagamento<T>.QuantidadePagamento: Integer;
begin
  Result := FQuantidadePagamento;
end;

function TEntidadePrazoPagamento<T>.Status(Value: Integer): iEntidadePrazoPagamento<T>;
begin
  Result := Self;
  FStatus := Value;
end;

function TEntidadePrazoPagamento<T>.Status: Integer;
begin
  Result := FStatus;
end;

function TEntidadePrazoPagamento<T>.TotaldeDias(Value: Currency): iEntidadePrazoPagamento<T>;
begin
  Result := Self;
  FTotaldeDias := Value;
end;

function TEntidadePrazoPagamento<T>.TotaldeDias: Currency;
begin
  Result := FTotaldeDias;
end;

function TEntidadePrazoPagamento<T>.&End: T;
begin
  Result := FParent;
end;

//Inje��o de depend�ncia
function TEntidadePrazoPagamento<T>.PrazoPagamentoItens: iEntidadePrazoPagamentoItens<iEntidadePrazoPagamento<T>>;
begin
  Result := FPrazoPagamentoItens;
end;

end.
