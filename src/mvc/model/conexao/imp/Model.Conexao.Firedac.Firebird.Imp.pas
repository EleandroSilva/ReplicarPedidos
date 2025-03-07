{*******************************************************}
{                      Be More Web                      }
{          In�cio do projeto 18/03/2024 13:39           }
{                 www.bemoreweb.com.br                  }
{                     (17)98169-5336                    }
{                        2003/2024                      }
{         Analista desenvolvedor (Eleandro Silva)       }
{*******************************************************}
unit Model.Conexao.Firedac.Firebird.Imp;

interface

uses
  Data.DB,
  System.IniFiles,
  System.SysUtils,
  System.JSON,

  FireDAC.UI.Intf,
  FireDAC.FMXUI.Wait,
  FireDAC.Stan.Intf,
  FireDAC.Comp.UI,
  FireDAC.Stan.Option,
  FireDAC.Stan.Error,
  FireDAC.Phys.Intf,
  FireDAC.Stan.Def,
  FireDAC.Stan.Pool,
  FireDAC.Stan.Async,
  FireDAC.Phys,

  FireDAC.Phys.FB,

  FireDAC.VCLUI.Wait,
  FireDAC.Comp.Client,
  FireDAC.Stan.Param,
  FireDAC.DatS,
  FireDAC.DApt.Intf,
  FireDAC.DApt,
  FireDAC.Comp.DataSet,

  Model.Conexao.Firedac.Interfaces,
  Model.Conexao.Configuracao.Firebird.Interfaces;

type
  TModelConexaoFiredacFirebird = class(TInterfacedObject, iConexao)
    private
      FConexao              : TFDConnection;
      FDriverFB             : TFDPhysFBDriverLink;
      FConfiguracaoFirebird : iConfiguracaoFirebird;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iConexao;

      function Conexao(Value : TFDConnection) : iConexao;      overload;
      function Conexao                        : TFDConnection; overload;
      function StartTransaction               : iConexao;
      function Commit                         : iConexao;
      function Rollback                       : iConexao;
      function ConfigurarFirebird             : iConexao;
    end;

implementation

uses
  Model.Conexao.Configuracao.Firebird.Imp;

{ TModelConexaoFiredacFirebird }

constructor TModelConexaoFiredacFirebird.Create;
begin
  FConexao              := TFDConnection.Create(nil);
  FDriverFB             := TFDPhysFBDriverLink.Create(nil);
  FConfiguracaoFirebird := TConfiguracaoFirebird.New;
  ConfigurarFirebird;
end;

destructor TModelConexaoFiredacFirebird.Destroy;
begin
  FreeAndNil(FConexao);
  FreeAndNil(FDriverFB);
  inherited;
end;

class function TModelConexaoFiredacFirebird.New: iConexao;
begin
  Result := Self.Create;
end;

function TModelConexaoFiredacFirebird.Conexao(Value: TFDConnection): iConexao;
begin
  Result := Self;
  FConexao := Value;
end;

function TModelConexaoFiredacFirebird.Conexao: TFDConnection;
begin
  Result := FConexao;
end;

function TModelConexaoFiredacFirebird.StartTransaction: iConexao;
begin
  Result := Self;
  FConexao.StartTransaction;
end;

function TModelConexaoFiredacFirebird.Commit: iConexao;
begin
  Result := Self;
  FConexao.Commit;
end;

function TModelConexaoFiredacFirebird.Rollback: iConexao;
begin
  Result := Self;
  FConexao.Rollback;
end;

function TModelConexaoFiredacFirebird.ConfigurarFirebird: iConexao;
begin
  Result := Self;
  try
    FConexao.Params.Add('Server='+ FConfiguracaoFirebird.ServerHost);
    FConexao.Params.Add('Port=  '+ FConfiguracaoFirebird.Port);
    FConexao.Params.Database    := FConfiguracaoFirebird.Database;
    FConexao.Params.UserName    := FConfiguracaoFirebird.UserName;
    FConexao.Params.Password    := FConfiguracaoFirebird.Password;
    FConexao.Params.DriverID    := FConfiguracaoFirebird.DriverName;
    FConexao.Params.Add('utf8mb4');

    FDriverFB.VendorLib         := FConfiguracaoFirebird.VendorLib;
    FConexao.LoginPrompt        := False;
    FConexao.Connected;
  except
    on E: Exception do
    begin
      FConexao.Rollback;
      WriteLn('Erro ao tentar se conectar com a base de dados: ' + E.Message);
      Abort;
    end;
  end;
end;

end.
