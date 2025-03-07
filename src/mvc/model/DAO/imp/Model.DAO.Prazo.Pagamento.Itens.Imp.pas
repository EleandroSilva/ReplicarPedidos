{*******************************************************}
{                      Be More Web                      }
{          In�cio do projeto 06/03/2025 19:56           }
{                 www.bemoreweb.com.br                  }
{                     (17)98169-5336                    }
{                        2003/2025                      }
{         Analista desenvolvedor (Eleandro Silva)       }
{*******************************************************}
unit Model.DAO.Prazo.Pagamento.Itens.Imp;

interface

uses
  Data.DB,

  Model.DAO.Prazo.Pagamento.Itens.Interfaces,
  Model.Entidade.Prazo.Pagamento.Itens.Interfaces,
  Model.Conexao.Firedac.Interfaces,
  Model.Conexao.Query.Interfaces, Vcl.Dialogs, System.SysUtils;

type
  TDAOPrazoPagamentoItens = class(TInterfacedObject, iDAOPrazoPagamentoItens)
    private
      FPrazoPagamentoItens : iEntidadePrazoPagamentoItens<iDAOPrazoPagamentoItens>;
      FConexao        : iConexao;
      FDataSet        : TDataSet;
      FQuery          : iQuery;

      const
        FSQL =('select * from cad_item_prazo ipp '
              );

        FCalcularDataVencimento=('select '+
                                 'ipp.codigo    as IdPagamento, '+
                                 'ipp.num_pgto  as NumeroPagamento, '+
                                 'ipp.qtde_dias as QuantidadedeDias, '+
                                 'CURRENT_DATE  as DataAtual, '+
                                 'DATEADD(ipp.qtde_dias DAY TO CURRENT_DATE) as DataVencimento '+
                                 'from cad_item_prazo ipp '+
                                 'inner join cad_prazo p on p.cod_prazo = ipp.codigo ');
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iDAOPrazoPagamentoItens;

      function DataSet    (DataSource : TDataSource) : iDAOPrazoPagamentoItens; overload;
      function DataSet                               : TDataSet;                overload;
      function GetbyId    (Id : Variant)             : iDAOPrazoPagamentoItens;
      function GetbyIdDataCalculada                  : iDAOPrazoPagamentoItens;

      function This : iEntidadePrazoPagamentoItens<iDAOPrazoPagamentoItens>;
  end;

implementation

uses
  Model.Entidade.Prazo.Pagamento.Itens.Imp,
  Model.Conexao.Firedac.Firebird.Imp,
  Model.Conexao.Query.Imp;

{ TDAOPrazoPagamentoItens }

constructor TDAOPrazoPagamentoItens.Create;
begin
  FPrazoPagamentoItens := TEntidadePrazoPagamentoItens<iDAOPrazoPagamentoItens>.New(Self);
  FConexao := TModelConexaoFiredacFirebird.New;
  FQuery   := TQuery.New;
end;

destructor TDAOPrazoPagamentoItens.Destroy;
begin
  inherited;
end;

class function TDAOPrazoPagamentoItens.New: iDAOPrazoPagamentoItens;
begin
  Result := Self.Create;
end;

function TDAOPrazoPagamentoItens.DataSet(DataSource: TDataSource): iDAOPrazoPagamentoItens;
begin
  Result := Self;
  if not Assigned(FDataset) then
    DataSource.DataSet := FQuery.DataSet
  else
    DataSource.DataSet := FDataSet;
end;

function TDAOPrazoPagamentoItens.DataSet: TDataSet;
begin
  Result := FDataSet;
end;

function TDAOPrazoPagamentoItens.GetbyId(Id: Variant): iDAOPrazoPagamentoItens;
begin
  Result := Self;
  try
    FDataSet := FQuery
                  .SQL(FSQL)
                    .Add('where ipp.Id=:Id')
                    .Params('Id', Id)
                  .Open
                  .DataSet;
  if not FDataSet.IsEmpty then
    FPrazoPagamentoItens.Id(FDataSet.FieldByName('id').AsString)
    else
    ShowMessage('Registro n�o encontrado!');
  except
    on E: Exception do
    begin
      FPrazoPagamentoItens.Id('0');
      Abort;
    end;
  end;
end;

function TDAOPrazoPagamentoItens.GetbyIdDataCalculada : iDAOPrazoPagamentoItens;
begin
  Result := Self;
  try
    FDataSet := FQuery
                  .SQL(FCalcularDataVencimento)
                    .Add('where ipp.codigo=:Id')
                    //.Add('and ipp.num_pgto=:NumeroPagamento')
                    .Params('Id', FPrazoPagamentoItens.Id)
                    //.Params('NumeroPagamento', FPrazoPagamentoItens.NumeroPagamento)
                  .Open
                  .DataSet;
  if not FDataSet.IsEmpty then
    FPrazoPagamentoItens.DataVencimento(FDataSet.FieldByName('DataVencimento').AsDateTime)
    else
    ShowMessage('Registro n�o encontrado!');
  except
    on E: Exception do
    begin
      FPrazoPagamentoItens.Id('0');
      Abort;
    end;
  end;
end;

function TDAOPrazoPagamentoItens.This: iEntidadePrazoPagamentoItens<iDAOPrazoPagamentoItens>;
begin
  Result := FPrazoPagamentoItens;
end;

end.
