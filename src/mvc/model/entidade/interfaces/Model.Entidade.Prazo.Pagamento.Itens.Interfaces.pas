{*******************************************************}
{          In�cio do projeto 06/03/2025 19:11           }
{                 www.bemoreweb.com.br                  }
{                     (17)98169-5336                    }
{                        2003/2025                      }
{         Analista desenvolvedor (Eleandro Silva)       }
{*******************************************************}
unit Model.Entidade.Prazo.Pagamento.Itens.Interfaces;

interface

uses
  Model.Entidade.Pedidos.Interfaces;

type
  iEntidadePrazoPagamentoItens<T> = interface
    ['{094F4D84-3EBD-4B5C-8166-238B5539E7A8}']
    function Id              (Value : String)    : iEntidadePrazoPagamentoItens<T>; overload;
    function Id                                  : String;                          overload;
    function Item            (Value : Integer)   : iEntidadePrazoPagamentoItens<T>; overload;
    function Item                                : Integer;                         overload;
    function NumeroPagamento (Value : Integer)   : iEntidadePrazoPagamentoItens<T>; overload;
    function NumeroPagamento                     : Integer;                         overload;
    function QuantidadedeDias(Value : Integer)   : iEntidadePrazoPagamentoItens<T>; overload;
    function QuantidadedeDias                    : Integer;                         overload;
    function DataVencimento  (Value : TDateTime) :iEntidadePrazoPagamentoItens<T>;  overload;
    function DataVencimento                      : TDateTime;                       overload;

    function &End : T;
    //Inje��o de depend�ncia
    function Pedidos  : iEntidadePedidos<iEntidadePrazoPagamentoItens<T>>;
  end;

implementation

end.
