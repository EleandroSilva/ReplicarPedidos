{*******************************************************}
{                      Be More Web                      }
{          In�cio do projeto 24/02/2025 22:36           }
{                 www.bemoreweb.com.br                  }
{                     (17)98169-5336                    }
{                        2003/2025                      }
{         Analista desenvolvedor (Eleandro Silva)       }
{*******************************************************}
unit Model.Entidade.Pedidos.Pagamentos.Imp;

interface

uses
  System.SysUtils,
  Data.DB,
  Datasnap.DBClient,
  Model.Entidade.Pedidos.Pagamentos.Interfaces;

type
  TEntidadePedidosPagamentos<T : iInterface> = class(TInterfacedObject, iEntidadePedidosPagamentos<T>)
    private
      [weak]
      FParent : T;
      FIdPedido            : Integer;
      FIdPed               : Integer;
      FCodigoPedido        : String;
      FIdPagamento         : String;
      FItem                : Integer;
      FNumeroPagamento     : Integer;
      FDataVencimento      : TDateTime;
      FParcelaNova         : String;
      FEmitiuBoleto        : String;
      FNumeroBanco         : String;
      FValorTotal          : Currency;
      FValorParcela        : Currency;
      FQuantidadedeDias    : Integer;
      FPagoCom             : String;
      FPagouComissao       : String;
      FLiberouComissao     : String;
      FOcorrenciaBanco     : String;
      FLL                  : String;
      FEnviar              : String;
      FObsPagamento        : String;
      FDescontado          : String;
      FEnviadoParaCartorio : String;
   public
      constructor Create(Parent : T);
      destructor Destroy; override;
      class function New(Parent : T) : iEntidadePedidosPagamentos<T>;

      function IdPedido           (Value : Integer)   : iEntidadePedidosPagamentos<T>; overload;
      function IdPedido                               : Integer;                       overload;
      function Item               (Value : Integer)   : iEntidadePedidosPagamentos<T>; overload;
      function Item                                   : Integer;                       overload;
      function IdPed              (Value : Integer)   : iEntidadePedidosPagamentos<T>; overload;
      function IdPed                                  : Integer;                       overload;
      function CodigoPedido       (Value : String)    : iEntidadePedidosPagamentos<T>; overload;
      function CodigoPedido                           : String;                        overload;
      function IdPagamento        (Value : String)    : iEntidadePedidosPagamentos<T>; overload;
      function IdPagamento                            : String;                        overload;
      function NumeroPagamento    (Value : Integer)   : iEntidadePedidosPagamentos<T>; overload;
      function NumeroPagamento                        : Integer;                       overload;
      function DataVencimento     (Value : TDateTime) : iEntidadePedidosPagamentos<T>; overload;
      function DataVencimento                         : TDateTime;                     overload;
      function ParcelaNova        (Value : String)    : iEntidadePedidosPagamentos<T>; overload;
      function ParcelaNova                            : String;                        overload;
      function EmitiuBoleto       (Value : String)    : iEntidadePedidosPagamentos<T>; overload;
      function EmitiuBoleto                           : String;                        overload;
      function NumeroBanco        (Value : String)    : iEntidadePedidosPagamentos<T>; overload;
      function NumeroBanco                            : String;                        overload;
      function ValorTotal         (Value : Currency)  : iEntidadePedidosPagamentos<T>; overload;
      function ValorTotal                             : Currency;                      overload;
      function ValorParcela       (Value : Currency)  : iEntidadePedidosPagamentos<T>; overload;
      function ValorParcela                           : Currency;                      overload;
      function QuantidadedeDias   (Value : Integer)   : iEntidadePedidosPagamentos<T>; overload;
      function QuantidadedeDias                       : Integer;                       overload;
      function PagoCom            (Value : String)    : iEntidadePedidosPagamentos<T>; overload;
      function PagoCom                                : String;                        overload;
      function PagouComissao      (Value : String)    : iEntidadePedidosPagamentos<T>; overload;
      function PagouComissao                          : String;                        overload;
      function LiberouComissao    (Value : String)    : iEntidadePedidosPagamentos<T>; overload;
      function LiberouComissao                        : String;                        overload;
      function OcorrenciaBanco    (Value : String)    : iEntidadePedidosPagamentos<T>; overload;
      function OcorrenciaBanco                        : String;                        overload;
      function LL                 (Value : String)    : iEntidadePedidosPagamentos<T>; overload;
      function LL                                     : String;                        overload;
      function Enviar             (Value : String)    : iEntidadePedidosPagamentos<T>; overload;
      function Enviar                                 : String;                        overload;
      function ObsPagamento       (Value : String)    : iEntidadePedidosPagamentos<T>; overload;
      function ObsPagamento                           : String;                        overload;
      function Descontado         (Value : String)    : iEntidadePedidosPagamentos<T>; overload;
      function Descontado                             : String;                        overload;
      function EnviadoParaCartorio(Value : String)    : iEntidadePedidosPagamentos<T>; overload;
      function EnviadoParaCartorio                    : String;                        overload;

      function CriarEstruturaCDS     (cdsPedidoPagamentos: TClientDataSet) : iEntidadePedidosPagamentos<T>;
      function &End : T;
  end;



implementation

constructor TEntidadePedidosPagamentos<T>.Create(Parent: T);
begin
  FParent  := Parent;
end;


destructor TEntidadePedidosPagamentos<T>.Destroy;
begin
  inherited;
end;

class function TEntidadePedidosPagamentos<T>.New(Parent: T): iEntidadePedidosPagamentos<T>;
begin
  Result := Self.Create(Parent);
end;

function TEntidadePedidosPagamentos<T>.CodigoPedido(Value: String): iEntidadePedidosPagamentos<T>;
begin
  Result := Self;
  FCodigoPedido := StringOfChar('0', 5 - Length(Value)) + Value;
end;

function TEntidadePedidosPagamentos<T>.CodigoPedido: String;
begin
  Result := FCodigoPedido;
end;

function TEntidadePedidosPagamentos<T>.Descontado(Value: String): iEntidadePedidosPagamentos<T>;
begin
  Result := Self;
  FDescontado := Value;
end;

function TEntidadePedidosPagamentos<T>.Descontado: String;
begin
  Result := FDescontado;
end;

function TEntidadePedidosPagamentos<T>.DataVencimento(Value: TDateTime): iEntidadePedidosPagamentos<T>;
begin
  Result := Self;
  FDataVencimento := Value;
end;

function TEntidadePedidosPagamentos<T>.DataVencimento: TDateTime;
begin
  Result := FDataVencimento;
end;

function TEntidadePedidosPagamentos<T>.EmitiuBoleto(Value: String): iEntidadePedidosPagamentos<T>;
begin
  Result := Self;
  FEmitiuBoleto := Value;
end;

function TEntidadePedidosPagamentos<T>.EmitiuBoleto: String;
begin
  Result := FEmitiuBoleto;
end;

function TEntidadePedidosPagamentos<T>.EnviadoParaCartorio(Value: String): iEntidadePedidosPagamentos<T>;
begin
  Result := Self;
  FEnviadoParaCartorio := Value;
end;

function TEntidadePedidosPagamentos<T>.EnviadoParaCartorio: String;
begin
  Result := FEnviadoParaCartorio;
end;

function TEntidadePedidosPagamentos<T>.Enviar(Value: String): iEntidadePedidosPagamentos<T>;
begin
  Result := Self;
  FEnviar := Value;
end;

function TEntidadePedidosPagamentos<T>.Enviar: String;
begin
  Result := FEnviar;
end;

function TEntidadePedidosPagamentos<T>.IdPagamento(Value: String): iEntidadePedidosPagamentos<T>;
begin
  Result := Self;
  FIdPagamento := Value;
end;

function TEntidadePedidosPagamentos<T>.IdPagamento: String;
begin
  Result := FIdPagamento;
end;

function TEntidadePedidosPagamentos<T>.IdPed(Value: Integer): iEntidadePedidosPagamentos<T>;
begin
  Result := Self;
  FIdPed := Value;
end;

function TEntidadePedidosPagamentos<T>.IdPed: Integer;
begin
  Result := FIdPed;
end;

function TEntidadePedidosPagamentos<T>.IdPedido(Value: Integer): iEntidadePedidosPagamentos<T>;
begin
  Result := Self;
  FIdPedido := Value;
end;

function TEntidadePedidosPagamentos<T>.IdPedido: Integer;
begin
  Result := FIdPedido;
end;

function TEntidadePedidosPagamentos<T>.Item(Value: Integer): iEntidadePedidosPagamentos<T>;
begin
  Result := Self;
  FItem  := Value;
end;

function TEntidadePedidosPagamentos<T>.Item: Integer;
begin
  Result := FItem;
end;

function TEntidadePedidosPagamentos<T>.LiberouComissao(Value: String): iEntidadePedidosPagamentos<T>;
begin
  Result := Self;
  FLiberouComissao := Value;
end;

function TEntidadePedidosPagamentos<T>.LiberouComissao: String;
begin
  Result := FLiberouComissao;
end;

function TEntidadePedidosPagamentos<T>.LL(Value: String): iEntidadePedidosPagamentos<T>;
begin
  Result := Self;
  FLL    := Value;
end;

function TEntidadePedidosPagamentos<T>.LL: String;
begin
  Result := FLL;
end;

function TEntidadePedidosPagamentos<T>.NumeroBanco(Value: String): iEntidadePedidosPagamentos<T>;
begin
  Result := Self;
  FNumeroBanco := Value;
end;

function TEntidadePedidosPagamentos<T>.NumeroBanco: String;
begin
  Result := FNumeroBanco;
end;

function TEntidadePedidosPagamentos<T>.NumeroPagamento(Value: Integer): iEntidadePedidosPagamentos<T>;
begin
  Result := Self;
  FNumeroPagamento := Value;
end;

function TEntidadePedidosPagamentos<T>.NumeroPagamento: Integer;
begin
  Result := FNumeroPagamento;
end;

function TEntidadePedidosPagamentos<T>.ObsPagamento(Value: String): iEntidadePedidosPagamentos<T>;
begin
  Result := Self;
  FObsPagamento := Value;
end;

function TEntidadePedidosPagamentos<T>.ObsPagamento: String;
begin
  Result := FObsPagamento;
end;

function TEntidadePedidosPagamentos<T>.OcorrenciaBanco(Value: String): iEntidadePedidosPagamentos<T>;
begin
  Result := Self;
  FOcorrenciaBanco := Value;
end;

function TEntidadePedidosPagamentos<T>.OcorrenciaBanco: String;
begin
  Result := FOcorrenciaBanco;
end;

function TEntidadePedidosPagamentos<T>.PagoCom(Value: String): iEntidadePedidosPagamentos<T>;
begin
  Result := Self;
  FPagoCom := Value;
end;

function TEntidadePedidosPagamentos<T>.PagoCom: String;
begin
  Result := FPagoCom;
end;

function TEntidadePedidosPagamentos<T>.PagouComissao(Value: String): iEntidadePedidosPagamentos<T>;
begin
  Result := Self;
  FPagouComissao := Value;
end;

function TEntidadePedidosPagamentos<T>.PagouComissao: String;
begin
  Result := FPagouComissao;
end;

function TEntidadePedidosPagamentos<T>.ParcelaNova(Value: String): iEntidadePedidosPagamentos<T>;
begin
  Result := Self;
  FParcelaNova := Value;
end;

function TEntidadePedidosPagamentos<T>.ParcelaNova: String;
begin
  Result := FParcelaNova;
end;

function TEntidadePedidosPagamentos<T>.QuantidadedeDias(Value: Integer): iEntidadePedidosPagamentos<T>;
begin
  Result := Self;
  FQuantidadedeDias := Value;
end;

function TEntidadePedidosPagamentos<T>.QuantidadedeDias: Integer;
begin
  Result := FQuantidadedeDias;
end;

function TEntidadePedidosPagamentos<T>.ValorParcela(Value: Currency): iEntidadePedidosPagamentos<T>;
begin
  Result := Self;
  FValorParcela := Value;
end;

function TEntidadePedidosPagamentos<T>.ValorParcela: Currency;
begin
  Result := FValorParcela;
end;

function TEntidadePedidosPagamentos<T>.ValorTotal(Value: Currency): iEntidadePedidosPagamentos<T>;
begin
  Result := Self;
  FValorTotal := Value;
end;

function TEntidadePedidosPagamentos<T>.ValorTotal: Currency;
begin
  Result := FValorTotal;
end;

function TEntidadePedidosPagamentos<T>.CriarEstruturaCDS(cdsPedidoPagamentos: TClientDataSet): iEntidadePedidosPagamentos<T>;
begin
  Result := Self;
  cdsPedidoPagamentos.Close;
  cdsPedidoPagamentos.FieldDefs.Clear;

  // Criando os campos manualmente
  cdsPedidoPagamentos.FieldDefs.Add('IdPedido'               , ftInteger , 0, False);  // String de at� 5 caracteres
  cdsPedidoPagamentos.FieldDefs.Add('IdPed'                  , ftInteger , 0, False);  // Campo inteiro
  cdsPedidoPagamentos.FieldDefs.Add('CodigoPedido'           , ftString  , 5, False);  //
  cdsPedidoPagamentos.FieldDefs.Add('IdPagamento'            , ftString  , 5, False);
  cdsPedidoPagamentos.FieldDefs.Add('Item'                   , ftInteger , 0, False);
  cdsPedidoPagamentos.FieldDefs.Add('NumeroPagamento'        , ftInteger , 0, False);
  cdsPedidoPagamentos.FieldDefs.Add('DataVencimento'         , ftDate    , 0, False);
  cdsPedidoPagamentos.FieldDefs.Add('ParcelaNova'            , ftString  , 3, False);
  cdsPedidoPagamentos.FieldDefs.Add('EmitiuBoleto'           , ftString  , 3, False);
  cdsPedidoPagamentos.FieldDefs.Add('NumeroBanco'            , ftString  , 3, False);
  cdsPedidoPagamentos.FieldDefs.Add('ValorTotal'             , ftCurrency, 0, False);
  cdsPedidoPagamentos.FieldDefs.Add('ValorParcela'           , ftCurrency, 0, False);
  cdsPedidoPagamentos.FieldDefs.Add('QuantidadedeDias'       , ftInteger , 0, False);
  cdsPedidoPagamentos.FieldDefs.Add('PagouComo'              , ftString  , 1, False);
  cdsPedidoPagamentos.FieldDefs.Add('PagouComissao'          , ftString  , 3, False);
  cdsPedidoPagamentos.FieldDefs.Add('LiberouComissao'        , ftString  , 3, False);
  cdsPedidoPagamentos.FieldDefs.Add('OcorrenciaBanco'        , ftString  , 3, False);
  cdsPedidoPagamentos.FieldDefs.Add('LL'                     , ftString  , 1, False);
  cdsPedidoPagamentos.FieldDefs.Add('Enviar'                 , ftString  , 3, False);
  cdsPedidoPagamentos.FieldDefs.Add('ObsPagamento'           , ftString  , 600, False);
  cdsPedidoPagamentos.FieldDefs.Add('Descontado'             , ftString  , 3, False);
  cdsPedidoPagamentos.FieldDefs.Add('EnviadoParaCartorio'    , ftString  , 3, False);
  // Criando fisicamente os campos
  cdsPedidoPagamentos.CreateDataSet;
end;

function TEntidadePedidosPagamentos<T>.&End: T;
begin
  Result := FParent;
end;

end.
