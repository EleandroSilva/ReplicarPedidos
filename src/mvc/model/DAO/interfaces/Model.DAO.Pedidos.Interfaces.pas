{*******************************************************}
{                    API PDV - JSON                     }
{                      Be More Web                      }
{          In�cio do projeto 23/04/2025 12:02           }
{                 www.bemoreweb.com.br                  }
{                     (17)98169-5336                    }
{                        2003/2025                      }
{         Analista desenvolvedor (Eleandro Silva)       }
{*******************************************************}
unit Model.DAO.Pedidos.Interfaces;

interface

uses
  Data.DB,

  Model.Entidade.Pedidos.Interfaces;

type
  iDAOPedidos = interface
    ['{96490B79-2C30-466B-B4FD-1F43BC81C6F5}']
    function DataSet    (DataSource : TDataSource) : iDAOPedidos; overload;
    function DataSet                               : TDataSet;    overload;
    function GetAll                                : iDAOPedidos;
    function GetbyId    (Id : Variant)             : iDAOPedidos;
    function GetbyParams                           : iDAOPedidos; overload;
    function GetbyParams(IdUsuario  : Variant)     : iDAOPedidos; overload;
    function GetbyParams(IdPessoa   : Integer)     : iDAOPedidos; overload;
    function GetbyParams(NomePessoa : String)      : iDAOPedidos; overload;
    function Post                                  : iDAOPedidos;
    function Put                                   : iDAOPedidos; overload;
    function Put(Id : Variant)                     : iDAOPedidos; overload;
    function Delete                                : iDAOPedidos;

    function QuantidadeRegistro : Integer;
    function This : iEntidadePedidos<iDAOPedidos>;
  end;

implementation

end.
