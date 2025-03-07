{*******************************************************}
{                      Be More Web                      }
{          In�cio do projeto 22/02/2025 08:44           }
{                 www.bemoreweb.com.br                  }
{                     (17)98169-5336                    }
{                        2003/2025                      }
{         Analista desenvolvedor (Eleandro Silva)       }
{*******************************************************}
unit Model.DAO.Pedidos.Pagamentos.Interfaces;

interface

uses
  Data.DB,

  Model.Entidade.Pedidos.Pagamentos.Interfaces;

type
  iDAOPedidosPagamentos = interface
    ['{E45B9E5E-3561-4B9C-9697-FCED00C4A0CE}']
    function DataSet    (DataSource : TDataSource) : iDAOPedidosPagamentos; overload;
    function DataSet                               : TDataSet;              overload;
    function GetAll                                : iDAOPedidosPagamentos;
    function GetbyId    (Id : Variant)             : iDAOPedidosPagamentos;
    function GetbyParams                           : iDAOPedidosPagamentos; overload;
    function GetbyParams(IdPagamento : Variant)    : iDAOPedidosPagamentos; overload;
    function Post                                  : iDAOPedidosPagamentos;
    function Put                                   : iDAOPedidosPagamentos; overload;
    function Put(Id : Variant)                     : iDAOPedidosPagamentos; overload;
    function Delete                                : iDAOPedidosPagamentos;
    function GenIdAtual                            : Integer;

    function QuantidadeRegistro : Integer;
    function This : iEntidadePedidosPagamentos<iDAOPedidosPagamentos>;
  end;

implementation

end.
