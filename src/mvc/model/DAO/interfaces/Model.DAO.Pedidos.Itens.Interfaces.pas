{*******************************************************}
{                      Be More Web                      }
{          In�cio do projeto 24/02/2025 12:02           }
{                 www.bemoreweb.com.br                  }
{                     (17)98169-5336                    }
{                        2003/2025                      }
{         Analista desenvolvedor (Eleandro Silva)       }
{*******************************************************}
unit Model.DAO.Pedidos.Itens.Interfaces;

interface

uses
  Data.DB,

  Model.Entidade.Pedidos.Itens.Interfaces;

type
  iDAOPedidosItens = interface
    ['{96490B79-2C30-466B-B4FD-1F43BC81C6F5}']
    function DataSet    (DataSource : TDataSource) : iDAOPedidosItens; overload;
    function DataSet                               : TDataSet;    overload;
    function GetAll                                : iDAOPedidosItens;
    function GetbyId    (Id : Variant)             : iDAOPedidosItens;
    function GetbyParams                           : iDAOPedidosItens; overload;
    function GetbyParams(IdProduto : Variant)      : iDAOPedidosItens; overload;
    function Post                                  : iDAOPedidosItens;
    function Put                                   : iDAOPedidosItens; overload;
    function Put(Id : Variant)                     : iDAOPedidosItens; overload;
    function Delete                                : iDAOPedidosItens;
    function GenIdAtual: Integer;

    function QuantidadeRegistro : Integer;
    function This : iEntidadePedidosItens<iDAOPedidosItens>;
  end;

implementation

end.
