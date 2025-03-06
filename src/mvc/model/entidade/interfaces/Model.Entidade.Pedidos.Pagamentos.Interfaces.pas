{*******************************************************}
{                    API PDV - JSON                     }
{                      Be More Web                      }
{          In�cio do projeto 24/02/2025 12:02           }
{                 www.bemoreweb.com.br                  }
{                     (17)98169-5336                    }
{                        2003/2025                      }
{         Analista desenvolvedor (Eleandro Silva)       }
{*******************************************************}
unit Model.Entidade.Pedidos.Pagamentos.Interfaces;

interface

uses
  Datasnap.DBClient;

type
  iEntidadePedidosPagamentos<T> = interface
    ['{6EBAACE7-2E1A-4878-BB3A-A7E83C62444F}']
    function IdPedido           (Value : Integer)   : iEntidadePedidosPagamentos<T>; overload;
    function IdPedido                               : Integer;                       overload;
    function IdPed              (Value : Integer)   : iEntidadePedidosPagamentos<T>; overload;
    function IdPed                                  : Integer;                       overload;
    function CodigoPedido       (Value : String)    : iEntidadePedidosPagamentos<T>; overload;
    function CodigoPedido                           : String;                        overload;
    function IdPagamento        (Value : String)    : iEntidadePedidosPagamentos<T>; overload;
    function IdPagamento                            : String;                        overload;
    function Item               (Value : Integer)   : iEntidadePedidosPagamentos<T>; overload;
    function Item                                   : Integer;                       overload;
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
    function PagouComo          (Value : String)    : iEntidadePedidosPagamentos<T>; overload;
    function PagouComo                              : String;                        overload;
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

end.
