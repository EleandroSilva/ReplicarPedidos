{*******************************************************}
{                      Be More Web                      }
{          In�cio do projeto 26/02/2025 22:10           }
{                 www.bemoreweb.com.br                  }
{                     (17)98169-5336                    }
{                        2003/2025                      }
{         Analista desenvolvedor (Eleandro Silva)       }
{*******************************************************}
unit Model.Entidade.Calcular.Valor.Parcela.Interfaces;

interface

uses
  Model.Entidade.Prazo.Pagamento.Itens.Interfaces;

type
  iEntidadeCalcularValorParcela<T> = Interface
    ['{2B91203F-08E3-4B90-BFD4-5CC8D7C00ABF}']
    function IdPedido         (Value : Integer)  : iEntidadeCalcularValorParcela<T>; overload;
    function IdPedido                            : Integer;                          overload;
    function ValorTotalPedido (Value : Currency) : iEntidadeCalcularValorParcela<T>; overload;
    function ValorTotalPedido                    : Currency;                         overload;
    function ValorParcela     (Value : Currency) : iEntidadeCalcularValorParcela<T>; overload;
    function ValorParcela                        : Currency;                         overload;
    function ValorRestante    (Value : Currency) : iEntidadeCalcularValorParcela<T>; overload;
    function ValorRestante                       : Currency;                         overload;

    function &End : T;
    //Inje��o de depend�ncia
    function PrazoPagamentoItens  : iEntidadePrazoPagamentoItens<iEntidadeCalcularValorParcela<T>>;
  End;

implementation

end.
