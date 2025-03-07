{*******************************************************}
{                      Be More Web                      }
{          In�cio do projeto 06/03/2025 19:56           }
{                 www.bemoreweb.com.br                  }
{                     (17)98169-5336                    }
{                        2003/2025                      }
{         Analista desenvolvedor (Eleandro Silva)       }
{*******************************************************}
unit Model.DAO.Prazo.Pagamento.Itens.Interfaces;

interface

uses
  Data.DB,
  Model.Entidade.Prazo.Pagamento.Itens.Interfaces;

type
 iDAOPrazoPagamentoItens = interface
   ['{534EA57C-A01A-4E3B-BDFB-8CBCD8BFF9CA}']
   function DataSet    (DataSource : TDataSource) : iDAOPrazoPagamentoItens; overload;
   function DataSet                               : TDataSet;                overload;
   function GetbyId    (Id : Variant)             : iDAOPrazoPagamentoItens;
   function GetbyIdDataCalculada                  : iDAOPrazoPagamentoItens;

   function This : iEntidadePrazoPagamentoItens<iDAOPrazoPagamentoItens>;
 end;

implementation

end.
