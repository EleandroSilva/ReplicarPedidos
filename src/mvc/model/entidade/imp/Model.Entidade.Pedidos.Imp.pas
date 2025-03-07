{*******************************************************}
{                      Be More Web                      }
{          In�cio do projeto 23/02/2025 12:02           }
{                 www.bemoreweb.com.br                  }
{                     (17)98169-5336                    }
{                        2003/2025                      }
{         Analista desenvolvedor (Eleandro Silva)       }
{*******************************************************}
unit Model.Entidade.Pedidos.Imp;

interface

uses
  Data.DB,
  Datasnap.DBClient,
  System.SysUtils,

  Model.Entidade.Pedidos.Interfaces,
  Model.Entidade.Pedidos.Itens.Interfaces,
  Model.Entidade.Pessoa.Interfaces;

type
  TEntidadePedidos <T : iInterface> = class(TInterfacedObject, iEntidadePedidos<T>)
    private
      [weak]
      FParent : T;
      FId       : Integer;
      FIdPessoa : Integer;
      FCodigoPedido    : String;
      FCodigoCliente   : String;
      FIdRepresentante : String;
      FIdTransporte    : String;
      FIdCarga         : String;
      FIdPagamento     : String;
      FIdEmpresa       : String;
      FIdProducao      : String;
      FNumeroPedido    : String;
      FIdRedespacho    : String;
      FIdTeleVenda     : Integer;
      FDataCadastro      : TDateTime;
      FDataInicialFiltro : TDateTime;
      FDataFinalFiltro   : TDateTime;
      FDataSaida         : TDateTime;
      FDataFaturamento   : TDateTime;
      FDataCarga         : TDateTime;
      FDataComissao      : TDateTime;
      FDataProducao      : TDateTime;
      FDataEntrega       : TDateTime;
      FDataConferencia   : TDateTime;
      FDataExclusao      : TDateTime;
      FDataCancelamentoFatura : TDateTime;
      FDataAlteracaoPagamento : TDateTime;
      FHoraCadastro    : TDateTime;
      FHoraConferencia : TDateTime;
      FHoraSaida       : TDateTime;
      FCFOP            : String;
      FMontouCarga     : String;
      FSaiudoEstoque   : String;
      FFaturado        : String;
      FLiberado        : String;
      FImpressa        : String;
      FTomadaNFe       : String;
      FComissao        : String;
      FRomaneio        : String;
      FEtiqueta        : String;
      FLiberouComissao : String;
      FMontouProducao  : String;
      FPedidoRemoto    : String;
      FConferido       : String;
      FEnviar          : String;
      FFrete           : String;
      FPagoCom         : String;
      FTipoPedido      : String;
      FTipoPagamento   : String;
      FAouP            : String;
      FTabela          : String;
      FStatus          : String;
      FTeleVenda       : String;
      FExcluido        : String;
      FNumeroAgencia   : String;
      FNumeroConta     : String;
      FNumeroCheque    : String;
      FUsuario         : String;
      FUsuarioAlterouPgto    : String;
      FUsuarioFatura         : String;
      FUsuarioCancelouFatura : String;
      FUsuarioExcluiPedido   : String;
      FUsuarioDeuDesconto    : String;
      FUsuarioLiberou        : String;
      FUsuarioConferencia    : String;
      FRoteiro               : String;
      FObsPgtoRemessa        : String;
      FObsProducao           : String;
      FObsPedido             : String;
      FObsPedidoRemoto       : String;
      FObs                   : String;
      FEntrega               : String;
      FQtdeVolume            : Integer;
      FMunFrete              : Integer;
      FNumSequenciaPedido    : Integer;
      FLojaAtacado           : Integer;
      FTabelaPrecoManual     : Integer;
      FAliquotaDesconto      : Currency;
      FAliquotaComissao      : Currency;
      FAliquotaFrete         : Currency;
      FAliquotaICMS          : Currency;
      FAliquotaNFe           : Currency;
      FAliquotaIPI           : Currency;
      FAliquotaSeguro        : Currency;
      FAliquotaComissaoTeleVendas : Currency;
      FSubTotal                   : Currency;
      FValorTotal                 : Currency;
      FValorDesconto              : Currency;
      FValorImpostos              : Currency;
      FValorAReceber              : Currency;
      FValorDescontoEspecial      : Currency;
      FValorOutrasDespesas        : Currency;
      FPesoBruto                  : Currency;
      FPesoLiquido                : Currency;
      FTotalCubico                : Currency;
      FTipoFiltro      : Integer;
      FTipoOrdemFiltro :Integer;

      FPedidosItens  : iEntidadePedidosItens<iEntidadePedidos<T>>;
      FPessoa        : iEntidadePessoa<iEntidadePedidos<T>>;
    public
      constructor Create(Parent : T);
      destructor Destroy; override;
      class function New(Parent : T) : iEntidadePedidos<T>;

      function Id               (Value : Integer)  : iEntidadePedidos<T>; overload;
      function Id                                  : Integer;             overload;
      function CodigoPedido     (Value : String)   : iEntidadePedidos<T>; overload;
      function CodigoPedido                        : String;              overload;
      function CodigoCliente    (Value : String)   : iEntidadePedidos<T>; overload;
      function CodigoCliente                       : String;              overload;
      function IdPessoa         (Value : Integer)  : iEntidadePedidos<T>; overload;
      function IdPessoa                            : Integer;             overload;
      function IdRepresentante  (Value : String)   : iEntidadePedidos<T>; overload;
      function IdRepresentante                     : String;              overload;
      function IdTransporte     (Value : String)   : iEntidadePedidos<T>; overload;
      function IdTransporte                        : String;              overload;
      function IdCarga          (Value : String)   : iEntidadePedidos<T>; overload;
      function IdCarga                             : String;              overload;
      function IdPagamento      (Value : String)   : iEntidadePedidos<T>; overload;
      function IdPagamento                         : String;              overload;
      function IdEmpresa        (Value : String)   : iEntidadePedidos<T>; overload;
      function IdEmpresa                           : String;              overload;
      function IdProducao       (Value : String)   : iEntidadePedidos<T>; overload;
      function IdProducao                          : String;              overload;
      function NumeroPedido     (Value : String)   : iEntidadePedidos<T>; overload;
      function NumeroPedido                        : String;              overload;
      function IdRedespacho     (Value : String)   : iEntidadePedidos<T>; overload;
      function IdRedespacho                        : String;              overload;
      function IdTeleVenda      (Value : Integer)  : iEntidadePedidos<T>; overload;
      function IdTeleVenda                         : Integer;             overload;
      function DataCadastro     (Value : TDateTime): iEntidadePedidos<T>; overload;
      function DataCadastro                        : TDateTime;           overload;
      function DataInicialFiltro(Value : TDateTime): iEntidadePedidos<T>; overload;
      function DataInicialFiltro                   : TDateTime;           overload;
      function DataFinalFiltro  (Value : TDateTime): iEntidadePedidos<T>; overload;
      function DataFinalFiltro                     : TDateTime;           overload;
      function DataSaida        (Value : TDateTime): iEntidadePedidos<T>; overload;
      function DataSaida                           : TDateTime;           overload;
      function DataFaturamento  (Value : TDateTime): iEntidadePedidos<T>; overload;
      function DataFaturamento                     : TDateTime;           overload;
      function DataCarga        (Value : TDateTime): iEntidadePedidos<T>; overload;
      function DataCarga                           : TDateTime;           overload;
      function DataComissao     (Value : TDateTime): iEntidadePedidos<T>; overload;
      function DataComissao                        : TDateTime;           overload;
      function DataProducao     (Value : TDateTime): iEntidadePedidos<T>; overload;
      function DataProducao                        : TDateTime;           overload;
      function DataEntrega      (Value : TDateTime): iEntidadePedidos<T>; overload;
      function DataEntrega                         : TDateTime;           overload;
      function DataConferencia  (Value : TDateTime): iEntidadePedidos<T>; overload;
      function DataConferencia                     : TDateTime;           overload;
      function DataExclusao     (Value : TDateTime): iEntidadePedidos<T>; overload;
      function DataExclusao                        : TDateTime;           overload;
      function DataCancelamentoFatura  (Value : TDateTime): iEntidadePedidos<T>; overload;
      function DataCancelamentoFatura                     : TDateTime;           overload;
      function DataAlteracaoPagamento  (Value : TDateTime): iEntidadePedidos<T>; overload;
      function DataAlteracaoPagamento                     : TDateTime;           overload;
      function HoraCadastro     (Value : TDateTime): iEntidadePedidos<T>; overload;
      function HoraCadastro                        : TDateTime;           overload;
      function HoraConferencia  (Value : TDateTime): iEntidadePedidos<T>; overload;
      function HoraConferencia                     : TDateTime;           overload;
      function HoraSaida        (Value : TDateTime): iEntidadePedidos<T>; overload;
      function HoraSaida                           : TDateTime;           overload;
      function CFOP             (Value : String)   : iEntidadePedidos<T>; overload;
      function CFOP                                : String;              overload;
      function MontouCarga      (Value : String)   : iEntidadePedidos<T>; overload;
      function MontouCarga                         : String;              overload;
      function SaiudoEstoque    (Value : String)   : iEntidadePedidos<T>; overload;
      function SaiudoEstoque                       : String;              overload;
      function Faturado         (Value : String)   : iEntidadePedidos<T>; overload;
      function Faturado                            : String;              overload;
      function Liberado         (Value : String)   : iEntidadePedidos<T>; overload;
      function Liberado                            : String;              overload;
      function Impressa         (Value : String)   : iEntidadePedidos<T>; overload;
      function Impressa                            : String;              overload;
      function TomadaNFe        (Value : String)   : iEntidadePedidos<T>; overload;
      function TomadaNFe                           : String;              overload;
      function Comissao         (Value : String)   : iEntidadePedidos<T>; overload;
      function Comissao                            : String;              overload;
      function Romaneio         (Value : String)   : iEntidadePedidos<T>; overload;
      function Romaneio                            : String;              overload;
      function Etiqueta         (Value : String)   : iEntidadePedidos<T>; overload;
      function Etiqueta                            : String;              overload;
      function LiberouComissao  (Value : String)   : iEntidadePedidos<T>; overload;
      function LiberouComissao                     : String;              overload;
      function MontouProducao   (Value : String)   : iEntidadePedidos<T>; overload;
      function MontouProducao                      : String;              overload;
      function PedidoRemoto     (Value : String)   : iEntidadePedidos<T>; overload;
      function PedidoRemoto                        : String;              overload;
      function Conferido        (Value : String)   : iEntidadePedidos<T>; overload;
      function Conferido                           : String;              overload;
      function Enviar           (Value : String)   : iEntidadePedidos<T>; overload;
      function Enviar                              : String;              overload;
      function Frete            (Value : String)   : iEntidadePedidos<T>; overload;
      function Frete                               : String;              overload;
      function PagoCom          (Value : String)   : iEntidadePedidos<T>; overload;
      function PagoCom                             : String;              overload;
      function TipoPedido       (Value : String)   : iEntidadePedidos<T>; overload;
      function TipoPedido                          : String;              overload;
      function TipoPagamento    (Value : String)   : iEntidadePedidos<T>; overload;
      function TipoPagamento                       : String;              overload;
      function AouP             (Value : String)   : iEntidadePedidos<T>; overload;
      function AouP                                : String;              overload;
      function Tabela           (Value : String)   : iEntidadePedidos<T>; overload;
      function Tabela                              : String;              overload;
      function Status           (Value : String)   : iEntidadePedidos<T>; overload;
      function Status                              : String;              overload;
      function TeleVenda        (Value : String)   : iEntidadePedidos<T>; overload;
      function TeleVenda                           : String;              overload;
      function Excluido         (Value : String)   : iEntidadePedidos<T>; overload;
      function Excluido                            : String;              overload;
      function NumeroAgencia    (Value : String)   : iEntidadePedidos<T>; overload;
      function NumeroAgencia                       : String;              overload;
      function NumeroConta      (Value : String)   : iEntidadePedidos<T>; overload;
      function NumeroConta                         : String;              overload;
      function NumeroCheque     (Value : String)   : iEntidadePedidos<T>; overload;
      function NumeroCheque                        : String;              overload;
      function Usuario          (Value : String)   : iEntidadePedidos<T>; overload;
      function Usuario                             : String;              overload;
      function UsuarioAlterouPgto(Value : String)  : iEntidadePedidos<T>; overload;
      function UsuarioAlterouPgto                  : String;              overload;
      function UsuarioFatura     (Value : String)  : iEntidadePedidos<T>; overload;
      function UsuarioFatura                       : String;              overload;
      function UsuarioCancelouFatura(Value : String) : iEntidadePedidos<T>; overload;
      function UsuarioCancelouFatura                 : String;              overload;
      function UsuarioExcluiPedido  (Value : String) : iEntidadePedidos<T>; overload;
      function UsuarioExcluiPedido                   : String;              overload;
      function UsuarioDeuDesconto   (Value : String) : iEntidadePedidos<T>; overload;
      function UsuarioDeuDesconto                    : String;              overload;
      function UsuarioLiberou       (Value : String) : iEntidadePedidos<T>; overload;
      function UsuarioLiberou                        : String;              overload;
      function UsuarioConferencia   (Value : String) : iEntidadePedidos<T>; overload;
      function UsuarioConferencia                    : String;              overload;
      function Roteiro              (Value : String) : iEntidadePedidos<T>; overload;
      function Roteiro                               : String;              overload;
      function ObsPgtoRemessa       (Value : String) : iEntidadePedidos<T>; overload;
      function ObsPgtoRemessa                        : String;              overload;
      function ObsProducao          (Value : String) : iEntidadePedidos<T>; overload;
      function ObsProducao                           : String;              overload;
      function ObsPedido            (Value : String) : iEntidadePedidos<T>; overload;
      function ObsPedido                             : String;              overload;
      function ObsPedidoRemoto      (Value : String) : iEntidadePedidos<T>; overload;
      function ObsPedidoRemoto                       : String;              overload;
      function Obs                  (Value : String) : iEntidadePedidos<T>; overload;
      function Obs                                   : String;              overload;
      function Entrega              (Value : String) : iEntidadePedidos<T>; overload;
      function Entrega                               : String;              overload;
      function QtdeVolume           (Value : Integer): iEntidadePedidos<T>; overload;
      function QtdeVolume                            : Integer;             overload;
      function MunFrete             (Value : Integer): iEntidadePedidos<T>; overload;
      function MunFrete                              : Integer;             overload;
      function NumSequenciaPedido   (Value : Integer): iEntidadePedidos<T>; overload;
      function NumSequenciaPedido                    : Integer;             overload;
      function LojaAtacado          (Value : Integer): iEntidadePedidos<T>; overload;
      function LojaAtacado                           : Integer;             overload;
      function TabelaPrecoManual    (Value : Integer): iEntidadePedidos<T>; overload;
      function TabelaPrecoManual                     : Integer;             overload;
      function AliquotaDesconto      (Value : Currency): iEntidadePedidos<T>; overload;
      function AliquotaDesconto                        : Currency;            overload;
      function AliquotaComissao      (Value : Currency): iEntidadePedidos<T>; overload;
      function AliquotaComissao                        : Currency;            overload;
      function AliquotaFrete         (Value : Currency): iEntidadePedidos<T>; overload;
      function aliquotaFrete                           : Currency;            overload;
      function AliquotaICMS          (Value : Currency): iEntidadePedidos<T>; overload;
      function AliquotaICMS                            : Currency;            overload;
      function AliquotaNFe           (Value : Currency): iEntidadePedidos<T>; overload;
      function AliquotaNFe                             : Currency;            overload;
      function AliquotaIPI           (Value : Currency): iEntidadePedidos<T>; overload;
      function AliquotaIPI                             : Currency;            overload;
      function AliquotaSeguro        (Value : Currency): iEntidadePedidos<T>; overload;
      function AliquotaSeguro                          : Currency;            overload;
      function AliquotaComissaoTeleVendas(Value : Currency): iEntidadePedidos<T>; overload;
      function AliquotaComissaoTeleVendas                  : Currency;            overload;
      function SubTotal                  (Value : Currency): iEntidadePedidos<T>; overload;
      function SubTotal                                    : Currency;            overload;
      function ValorTotal                (Value : Currency): iEntidadePedidos<T>; overload;
      function ValorTotal                                  : Currency;            overload;
      function ValorDesconto             (Value : Currency): iEntidadePedidos<T>; overload;
      function ValorDesconto                               : Currency;            overload;
      function ValorImpostos             (Value : Currency): iEntidadePedidos<T>; overload;
      function ValorImpostos                               : Currency;            overload;
      function ValorAReceber             (Value : Currency): iEntidadePedidos<T>; overload;
      function ValorAReceber                               : Currency;            overload;
      function ValorDescontoEspecial     (Value : Currency): iEntidadePedidos<T>; overload;
      function ValorDescontoEspecial                       : Currency;            overload;
      function ValorOutrasDespesas       (Value : Currency): iEntidadePedidos<T>; overload;
      function ValorOutrasDespesas                         : Currency;            overload;
      function PesoBruto                 (Value : Currency): iEntidadePedidos<T>; overload;
      function PesoBruto                                   : Currency;            overload;
      function PesoLiquido               (Value : Currency): iEntidadePedidos<T>; overload;
      function PesoLiquido                                 : Currency;            overload;
      function TotalCubico               (Value : Currency): iEntidadePedidos<T>; overload;
      function TotalCubico                                 : Currency;            overload;

      function TipoFiltro                (Value : Integer) : iEntidadePedidos<T>; overload;
      function TipoFiltro                                  : Integer;             overload;
      function TipoOrdemFiltro           (Value : Integer) : iEntidadePedidos<T>; overload;
      function TipoOrdemFiltro                             : Integer;             overload;
      function CriarEstruturaCDS         (cdsPedidos: TClientDataSet) : iEntidadePedidos<T>;

      function &End : T;

      //Inje��o de depend�ncia
      function PedidosItens  : iEntidadePedidosItens<iEntidadePedidos<T>>;
      function Pessoa        : iEntidadePessoa<iEntidadePedidos<T>>;
  end;

implementation

uses
  Model.Entidade.Pedidos.Itens.Imp,
  Model.Entidade.Pessoa.Imp;


constructor TEntidadePedidos<T>.Create(Parent: T);
begin
  FParent       := Parent;
  FPedidosItens := TEntidadePedidosItens<iEntidadePedidos<T>>.New(Self);
  FPessoa       := TEntidadePessoa<iEntidadePedidos<T>>.New(Self);
end;

destructor TEntidadePedidos<T>.Destroy;
begin
  inherited;
end;

class function TEntidadePedidos<T>.New(Parent: T): iEntidadePedidos<T>;
begin
  Result := Self.Create(Parent);
end;

function TEntidadePedidos<T>.Id(Value: Integer): iEntidadePedidos<T>;
begin
  Result := Self;
  FId    := Value;
end;

function TEntidadePedidos<T>.Id: Integer;
begin
  Result := FId;
end;

function TEntidadePedidos<T>.Usuario(Value: String): iEntidadePedidos<T>;
begin
  Result := Self;
  FUsuario := Value;
end;

function TEntidadePedidos<T>.Usuario: String;
begin
  Result := FUsuario;
end;

function TEntidadePedidos<T>.Excluido(Value: String): iEntidadePedidos<T>;
begin
  Result := Self;
  FExcluido := Value;
end;

function TEntidadePedidos<T>.Excluido: String;
begin
  Result := FExcluido;
end;

function TEntidadePedidos<T>.AliquotaComissao(Value: Currency): iEntidadePedidos<T>;
begin
  Result := Self;
  FAliquotaComissao := Value;
end;

function TEntidadePedidos<T>.AliquotaComissao: Currency;
begin
  Result := FAliquotaComissao;
end;

function TEntidadePedidos<T>.AliquotaComissaoTeleVendas(Value: Currency): iEntidadePedidos<T>;
begin
  Result := Self;
  FAliquotaComissaoTeleVendas := Value;
end;

function TEntidadePedidos<T>.AliquotaComissaoTeleVendas: Currency;
begin
  Result := FAliquotaComissaoTeleVendas;
end;

function TEntidadePedidos<T>.AliquotaDesconto(Value: Currency): iEntidadePedidos<T>;
begin
  Result := Self;
  FAliquotaDesconto := Value;
end;

function TEntidadePedidos<T>.AliquotaDesconto: Currency;
begin
  Result := FAliquotaDesconto;
end;

function TEntidadePedidos<T>.AliquotaFrete(Value: Currency): iEntidadePedidos<T>;
begin
  Result := Self;
  FAliquotaFrete := Value;
end;

function TEntidadePedidos<T>.AliquotaFrete: Currency;
begin
  Result := FAliquotaFrete;
end;

function TEntidadePedidos<T>.AliquotaICMS(Value: Currency): iEntidadePedidos<T>;
begin
  Result := Self;
  FAliquotaICMS := Value;
end;

function TEntidadePedidos<T>.AliquotaICMS: Currency;
begin
  Result := FAliquotaICMS;
end;

function TEntidadePedidos<T>.AliquotaIPI(Value: Currency): iEntidadePedidos<T>;
begin
  Result := Self;
  FAliquotaIPI := Value;
end;

function TEntidadePedidos<T>.AliquotaIPI: Currency;
begin
  Result := FAliquotaIPI;
end;

function TEntidadePedidos<T>.AliquotaNFe(Value: Currency): iEntidadePedidos<T>;
begin
  Result := Self;
  FAliquotaNFe := Value;
end;

function TEntidadePedidos<T>.AliquotaNFe: Currency;
begin
  Result := FAliquotaNFe;
end;

function TEntidadePedidos<T>.AliquotaSeguro(Value: Currency): iEntidadePedidos<T>;
begin
  Result := Self;
  FAliquotaSeguro := Value;
end;

function TEntidadePedidos<T>.AliquotaSeguro: Currency;
begin
  Result := FAliquotaSeguro;
end;

function TEntidadePedidos<T>.AouP(Value: String): iEntidadePedidos<T>;
begin
  Result := Self;
  FAouP  := Value;
end;

function TEntidadePedidos<T>.AouP: String;
begin
  Result := FAouP;
end;

function TEntidadePedidos<T>.CFOP(Value: String): iEntidadePedidos<T>;
begin
  Result := Self;
  FCFOP  := Value;
end;

function TEntidadePedidos<T>.CFOP: String;
begin
  Result := FCFOP;
end;

function TEntidadePedidos<T>.CodigoPedido(Value: String): iEntidadePedidos<T>;
begin
  Result := Self;
  FCodigoPedido := StringOfChar('0', 5 - Length(Value)) + Value;
end;

function TEntidadePedidos<T>.CodigoPedido: String;
begin
  Result := FCodigoPedido;
end;

function TEntidadePedidos<T>.CodigoCliente(Value: String): iEntidadePedidos<T>;
begin
  Result := Self;
  FCodigoCliente := StringOfChar('0', 5 - Length(Value)) + Value;
end;

function TEntidadePedidos<T>.CodigoCliente: String;
begin
  Result := FCodigoCliente;
end;

function TEntidadePedidos<T>.Comissao(Value: String): iEntidadePedidos<T>;
begin
  Result := Self;
  FComissao := Value;
end;

function TEntidadePedidos<T>.Comissao: String;
begin
  Result := FComissao;
end;

function TEntidadePedidos<T>.Conferido(Value: String): iEntidadePedidos<T>;
begin
  Result := Self;
  FConferido := Value;
end;

function TEntidadePedidos<T>.Conferido: String;
begin
  Result := FConferido;
end;

function TEntidadePedidos<T>.DataAlteracaoPagamento(Value: TDateTime): iEntidadePedidos<T>;
begin
  Result := Self;
  FDataAlteracaoPagamento := Value;
end;

function TEntidadePedidos<T>.DataAlteracaoPagamento: TDateTime;
begin
  Result := FDataAlteracaoPagamento;
end;

function TEntidadePedidos<T>.DataCadastro(Value: TDateTime): iEntidadePedidos<T>;
begin
  Result := Self;
  FDataCadastro := Value;
end;

function TEntidadePedidos<T>.DataCadastro: TDateTime;
begin
  Result := FDataCadastro;
end;

function TEntidadePedidos<T>.DataInicialFiltro(Value: TDateTime): iEntidadePedidos<T>;
begin
  Result := Self;
  FDataInicialFiltro := Value;
end;

function TEntidadePedidos<T>.DataInicialFiltro: TDateTime;
begin
  Result := FDataInicialFiltro;
end;

function TEntidadePedidos<T>.DataFinalFiltro(Value: TDateTime): iEntidadePedidos<T>;
begin
  Result := Self;
  FDataFinalFiltro := Value;
end;

function TEntidadePedidos<T>.DataFinalFiltro: TDateTime;
begin
  Result := FDataFinalFiltro;
end;

function TEntidadePedidos<T>.DataCancelamentoFatura(Value: TDateTime): iEntidadePedidos<T>;
begin
  Result := Self;
  FDataCancelamentoFatura := Value;
end;

function TEntidadePedidos<T>.DataCancelamentoFatura: TDateTime;
begin
  Result := DataCancelamentoFatura;
end;

function TEntidadePedidos<T>.DataCarga(Value: TDateTime): iEntidadePedidos<T>;
begin
  Result := Self;
  FDataCarga := Value;
end;

function TEntidadePedidos<T>.DataCarga: TDateTime;
begin
  Result := FDataCarga;
end;

function TEntidadePedidos<T>.DataComissao(Value: TDateTime): iEntidadePedidos<T>;
begin
  Result := Self;
  FDataComissao := Value;
end;

function TEntidadePedidos<T>.DataComissao: TDateTime;
begin
  Result := FDataComissao;
end;

function TEntidadePedidos<T>.DataConferencia(Value: TDateTime): iEntidadePedidos<T>;
begin
  Result := Self;
  FDataConferencia := Value;
end;

function TEntidadePedidos<T>.DataConferencia: TDateTime;
begin
  Result := FDataConferencia;
end;

function TEntidadePedidos<T>.DataEntrega(Value: TDateTime): iEntidadePedidos<T>;
begin
  Result := Self;
  FDataEntrega := Value;
end;

function TEntidadePedidos<T>.DataEntrega: TDateTime;
begin
  Result := FDataEntrega;
end;

function TEntidadePedidos<T>.DataExclusao(Value: TDateTime): iEntidadePedidos<T>;
begin
  Result := Self;
  FDataExclusao := Value;
end;

function TEntidadePedidos<T>.DataExclusao: TDateTime;
begin
  Result := FDataExclusao;
end;

function TEntidadePedidos<T>.DataFaturamento(Value: TDateTime): iEntidadePedidos<T>;
begin
  Result := Self;
  FDataFaturamento := Value;
end;

function TEntidadePedidos<T>.DataFaturamento: TDateTime;
begin
  Result := FDataFaturamento;
end;

function TEntidadePedidos<T>.DataProducao(Value: TDateTime): iEntidadePedidos<T>;
begin
  Result := Self;
  FDataProducao := Value;
end;

function TEntidadePedidos<T>.DataProducao: TDateTime;
begin
  Result := FDataProducao;
end;

function TEntidadePedidos<T>.DataSaida(Value: TDateTime): iEntidadePedidos<T>;
begin
  Result := Self;
  FDataSaida := Value;
end;

function TEntidadePedidos<T>.DataSaida: TDateTime;
begin
  Result := FDataSaida;
end;

function TEntidadePedidos<T>.Entrega(Value: String): iEntidadePedidos<T>;
begin
  Result := Self;
  FEntrega := Value;
end;

function TEntidadePedidos<T>.Entrega: String;
begin
  Result := FEntrega;
end;

function TEntidadePedidos<T>.Enviar(Value: String): iEntidadePedidos<T>;
begin
  Result := Self;
  FEnviar := Value;
end;

function TEntidadePedidos<T>.Enviar: String;
begin
  Result := FEnviar;
end;

function TEntidadePedidos<T>.Etiqueta(Value: String): iEntidadePedidos<T>;
begin
  Result := Self;
  FEtiqueta := Value;
end;

function TEntidadePedidos<T>.Etiqueta: String;
begin
  Result := FEtiqueta;
end;

function TEntidadePedidos<T>.Faturado(Value: String): iEntidadePedidos<T>;
begin
  Result := Self;
  FFaturado := Value;
end;

function TEntidadePedidos<T>.Faturado: String;
begin
  Result := FFaturado;
end;

function TEntidadePedidos<T>.Frete(Value: String): iEntidadePedidos<T>;
begin
  Result := Self;
  FFrete := Value;
end;

function TEntidadePedidos<T>.Frete: String;
begin
  Result := FFrete;
end;

function TEntidadePedidos<T>.HoraCadastro(Value: TDateTime): iEntidadePedidos<T>;
begin
  Result := Self;
  FHoraCadastro := Value;
end;

function TEntidadePedidos<T>.HoraCadastro: TDateTime;
begin
  Result := FHoraCadastro;
end;

function TEntidadePedidos<T>.HoraConferencia(Value: TDateTime): iEntidadePedidos<T>;
begin
  Result := Self;
  FHoraConferencia := Value;
end;

function TEntidadePedidos<T>.HoraConferencia: TDateTime;
begin
  Result := FHoraConferencia;
end;

function TEntidadePedidos<T>.HoraSaida(Value: TDateTime): iEntidadePedidos<T>;
begin
  Result := Self;
  FHoraSaida := StrToDate(FormatDateTime('hh:mm:ss',Value));
end;

function TEntidadePedidos<T>.HoraSaida: TDateTime;
begin
  Result := FHoraSaida;
end;

function TEntidadePedidos<T>.IdCarga(Value: String): iEntidadePedidos<T>;
begin
  Result := Self;
  FIdCarga := StringOfChar('0', 5 - Length(Value)) + Value;
end;

function TEntidadePedidos<T>.IdCarga: String;
begin
  Result := FIdCarga;
end;

function TEntidadePedidos<T>.IdEmpresa(Value: String): iEntidadePedidos<T>;
begin
  Result := Self;
  FIdEmpresa := StringOfChar('0', 5 - Length(Value)) + Value;
end;

function TEntidadePedidos<T>.IdEmpresa: String;
begin
  Result := FIdEmpresa;
end;

function TEntidadePedidos<T>.IdPagamento(Value: String): iEntidadePedidos<T>;
begin
  Result := Self;
  FIdPagamento := StringOfChar('0', 5 - Length(Value)) + Value;
end;

function TEntidadePedidos<T>.IdPagamento: String;
begin
  Result := FIdPagamento;
end;

function TEntidadePedidos<T>.IdPessoa(Value: Integer): iEntidadePedidos<T>;
begin
  Result := Self;
  FIdPessoa := Value;
end;

function TEntidadePedidos<T>.IdPessoa: Integer;
begin
  Result := FIdPessoa;
end;

function TEntidadePedidos<T>.IdProducao(Value: String): iEntidadePedidos<T>;
begin
  Result := Self;
  FIdProducao := StringOfChar('0', 5 - Length(Value)) + Value;
end;

function TEntidadePedidos<T>.IdProducao: String;
begin
  Result := FIdProducao;
end;

function TEntidadePedidos<T>.IdRedespacho(Value: String): iEntidadePedidos<T>;
begin
  Result := Self;
  if ((Value <>'') and (Value<>'null')) then
    FIdRedespacho := StringOfChar('0', 5 - Length(Value)) + Value else
    FIdRedespacho := '';
end;

function TEntidadePedidos<T>.IdRedespacho: String;
begin
  Result := FIdRedespacho;
end;

function TEntidadePedidos<T>.IdRepresentante(Value: String): iEntidadePedidos<T>;
begin
  Result := Self;
  FIdRepresentante := StringOfChar('0', 5 - Length(Value)) + Value;
end;

function TEntidadePedidos<T>.IdRepresentante: String;
begin
  Result := FIdRepresentante;
end;

function TEntidadePedidos<T>.IdTransporte(Value: String): iEntidadePedidos<T>;
begin
  Result := Self;
  FIdTransporte := StringOfChar('0', 5 - Length(Value)) + Value;
end;

function TEntidadePedidos<T>.IdTransporte: String;
begin
  Result := FIdTransporte;
end;

function TEntidadePedidos<T>.IdTeleVenda(Value: Integer): iEntidadePedidos<T>;
begin
  Result := Self;
  FIdTeleVenda := Value;
end;

function TEntidadePedidos<T>.IdTeleVenda: Integer;
begin
  Result := FIdTeleVenda;
end;

function TEntidadePedidos<T>.Impressa(Value: String): iEntidadePedidos<T>;
begin
  Result := Self;
  FImpressa := Value;
end;

function TEntidadePedidos<T>.Impressa: String;
begin
  Result := FImpressa;
end;

function TEntidadePedidos<T>.Liberado(Value: String): iEntidadePedidos<T>;
begin
  Result := Self;
  FLiberado := Value;
end;

function TEntidadePedidos<T>.Liberado: String;
begin
  Result := FLiberado;
end;

function TEntidadePedidos<T>.LiberouComissao(Value: String): iEntidadePedidos<T>;
begin
  Result := Self;
  FLiberouComissao := Value;
end;

function TEntidadePedidos<T>.LiberouComissao: String;
begin
  Result := FLiberouComissao;
end;

function TEntidadePedidos<T>.LojaAtacado(Value: Integer): iEntidadePedidos<T>;
begin
  Result := Self;
  FLojaAtacado := Value;
end;

function TEntidadePedidos<T>.LojaAtacado: Integer;
begin
  Result := FLojaAtacado;
end;

function TEntidadePedidos<T>.MontouCarga(Value: String): iEntidadePedidos<T>;
begin
  Result := Self;
  FMontouCarga := Value;
end;

function TEntidadePedidos<T>.MontouCarga: String;
begin
  Result := FMontouCarga;
end;

function TEntidadePedidos<T>.MontouProducao(Value: String): iEntidadePedidos<T>;
begin
  Result := Self;
  FMontouProducao := Value;
end;

function TEntidadePedidos<T>.MontouProducao: String;
begin
  Result := FMontouProducao;
end;

function TEntidadePedidos<T>.MunFrete(Value: Integer): iEntidadePedidos<T>;
begin
  Result := Self;
  FMunFrete := Value;
end;

function TEntidadePedidos<T>.MunFrete: Integer;
begin
  Result := FMunFrete;
end;

function TEntidadePedidos<T>.NumeroAgencia(Value: String): iEntidadePedidos<T>;
begin
  Result := Self;
  FNumeroAgencia := Value;
end;

function TEntidadePedidos<T>.NumeroAgencia: String;
begin
  Result := FNumeroAgencia;
end;

function TEntidadePedidos<T>.NumeroCheque(Value: String): iEntidadePedidos<T>;
begin
  Result := Self;
  FNumeroCheque := Value;
end;

function TEntidadePedidos<T>.NumeroCheque: String;
begin
  Result := FNumeroCheque;
end;

function TEntidadePedidos<T>.NumeroConta(Value: String): iEntidadePedidos<T>;
begin
  Result := Self;
  FNumeroConta := Value;
end;

function TEntidadePedidos<T>.NumeroConta: String;
begin
  Result := FNumeroConta;
end;

function TEntidadePedidos<T>.NumeroPedido(Value: String): iEntidadePedidos<T>;
begin
  Result := Self;
  FNumeroPedido := StringOfChar('0', 6 - Length(Value)) + Value;
end;

function TEntidadePedidos<T>.NumeroPedido: String;
begin
  Result := FNumeroPedido;
end;

function TEntidadePedidos<T>.NumSequenciaPedido(Value: Integer): iEntidadePedidos<T>;
begin
  Result := Self;
  FNumSequenciaPedido := Value;
end;

function TEntidadePedidos<T>.NumSequenciaPedido: Integer;
begin
  Result := FNumSequenciaPedido;
end;

function TEntidadePedidos<T>.Obs(Value: String): iEntidadePedidos<T>;
begin
  Result := Self;
  FObs := Value;
end;

function TEntidadePedidos<T>.Obs: String;
begin
  Result := FObs;
end;

function TEntidadePedidos<T>.ObsPedido(Value: String): iEntidadePedidos<T>;
begin
  Result := Self;
  FObsPedido := Value;
end;

function TEntidadePedidos<T>.ObsPedido: String;
begin
  Result := FObsPedido;
end;

function TEntidadePedidos<T>.ObsPedidoRemoto(Value: String): iEntidadePedidos<T>;
begin
  Result := Self;
  FObsPedidoRemoto := Value;
end;

function TEntidadePedidos<T>.ObsPedidoRemoto: String;
begin
  Result := FObsPedidoRemoto;
end;

function TEntidadePedidos<T>.ObsPgtoRemessa(Value: String): iEntidadePedidos<T>;
begin
  Result := Self;
  FObsPgtoRemessa := Value;
end;

function TEntidadePedidos<T>.ObsPgtoRemessa: String;
begin
  Result := FObsPgtoRemessa;
end;

function TEntidadePedidos<T>.ObsProducao(Value: String): iEntidadePedidos<T>;
begin
  Result := Self;
  FObsProducao := Value;
end;

function TEntidadePedidos<T>.ObsProducao: String;
begin
  Result := FObsProducao;
end;

function TEntidadePedidos<T>.PagoCom(Value: String): iEntidadePedidos<T>;
begin
  Result := Self;
  FPagoCom := Value;
end;

function TEntidadePedidos<T>.PagoCom: String;
begin
  Result := FPagoCom;
end;

function TEntidadePedidos<T>.PedidoRemoto(Value: String): iEntidadePedidos<T>;
begin
  Result := Self;
  FPedidoRemoto := Value;
end;

function TEntidadePedidos<T>.PedidoRemoto: String;
begin
  Result := FPedidoRemoto;
end;

function TEntidadePedidos<T>.PesoBruto(Value: Currency): iEntidadePedidos<T>;
begin
  Result := Self;
  FPesoBruto := Value;
end;

function TEntidadePedidos<T>.PesoBruto: Currency;
begin
  Result := FPesoBruto;
end;

function TEntidadePedidos<T>.PesoLiquido(Value: Currency): iEntidadePedidos<T>;
begin
  Result := Self;
  FPesoLiquido := Value;
end;

function TEntidadePedidos<T>.PesoLiquido: Currency;
begin
  Result := FPesoLiquido;
end;

function TEntidadePedidos<T>.QtdeVolume(Value: Integer): iEntidadePedidos<T>;
begin
  Result := Self;
  FQtdeVolume := Value;
end;

function TEntidadePedidos<T>.QtdeVolume: Integer;
begin
  Result := FQtdeVolume;
end;

function TEntidadePedidos<T>.Romaneio(Value: String): iEntidadePedidos<T>;
begin
  Result := Self;
  FRomaneio := Value;
end;

function TEntidadePedidos<T>.Romaneio: String;
begin
  Result := FRomaneio;
end;

function TEntidadePedidos<T>.Roteiro(Value: String): iEntidadePedidos<T>;
begin
  Result := Self;
  FRoteiro := Value;
end;

function TEntidadePedidos<T>.Roteiro: String;
begin
  Result := FRoteiro;
end;

function TEntidadePedidos<T>.SaiudoEstoque(Value: String): iEntidadePedidos<T>;
begin
  Result := Self;
  FSaiudoEstoque := Value;
end;

function TEntidadePedidos<T>.SaiudoEstoque: String;
begin
  Result := FSaiudoEstoque;
end;

function TEntidadePedidos<T>.Status(Value: String): iEntidadePedidos<T>;
begin
  Result := Self;
  FStatus := Value;
end;

function TEntidadePedidos<T>.Status: String;
begin
  Result := FStatus;
end;

function TEntidadePedidos<T>.SubTotal(Value: Currency): iEntidadePedidos<T>;
begin
  Result := Self;
  FSubTotal := Value;
end;

function TEntidadePedidos<T>.SubTotal: Currency;
begin
  Result := FSubTotal;
end;

function TEntidadePedidos<T>.Tabela(Value: String): iEntidadePedidos<T>;
begin
  Result := Self;
  FTabela := Value;
end;

function TEntidadePedidos<T>.Tabela: String;
begin
  Result := FTabela;
end;

function TEntidadePedidos<T>.TabelaPrecoManual(Value: Integer): iEntidadePedidos<T>;
begin
  Result := Self;
  FTabelaPrecoManual := Value;
end;

function TEntidadePedidos<T>.TabelaPrecoManual: Integer;
begin
  Result := FTabelaPrecoManual;
end;

function TEntidadePedidos<T>.TeleVenda(Value: String): iEntidadePedidos<T>;
begin
  Result := Self;
  FTeleVenda := Value;
end;

function TEntidadePedidos<T>.TeleVenda: String;
begin
  Result := FTeleVenda;
end;

function TEntidadePedidos<T>.TipoPagamento(Value: String): iEntidadePedidos<T>;
begin
  Result := Self;
  FTipoPagamento := Value;
end;

function TEntidadePedidos<T>.TipoFiltro(Value: Integer): iEntidadePedidos<T>;
begin
  Result := Self;
  FTipoFiltro := Value;
end;

function TEntidadePedidos<T>.TipoFiltro: Integer;
begin
  Result := FTipoFiltro;
end;

function TEntidadePedidos<T>.TipoOrdemFiltro(Value: Integer): iEntidadePedidos<T>;
begin
  Result := Self;
  FTipoOrdemFiltro := Value;
end;

function TEntidadePedidos<T>.TipoOrdemFiltro: Integer;
begin
  Result := FTipoOrdemFiltro;
end;

function TEntidadePedidos<T>.TipoPagamento: String;
begin
  Result := FTipoPagamento;
end;

function TEntidadePedidos<T>.TipoPedido(Value: String): iEntidadePedidos<T>;
begin
  Result := Self;
  FTipoPedido := Value;
end;

function TEntidadePedidos<T>.TipoPedido: String;
begin
  Result := FTipoPedido;
end;

function TEntidadePedidos<T>.TomadaNFe(Value: String): iEntidadePedidos<T>;
begin
  Result := Self;
  FTomadaNFe := Value;
end;

function TEntidadePedidos<T>.TomadaNFe: String;
begin
  Result := FTomadaNFe;
end;

function TEntidadePedidos<T>.TotalCubico(Value: Currency): iEntidadePedidos<T>;
begin
  Result := Self;
  FTotalCubico := Value;
end;

function TEntidadePedidos<T>.TotalCubico: Currency;
begin
  Result := FTotalCubico;
end;

function TEntidadePedidos<T>.UsuarioAlterouPgto(Value: String): iEntidadePedidos<T>;
begin
  Result := Self;
  FUsuarioAlterouPgto := Value;
end;

function TEntidadePedidos<T>.UsuarioAlterouPgto: String;
begin
  Result := FUsuarioAlterouPgto;
end;

function TEntidadePedidos<T>.UsuarioCancelouFatura(Value: String): iEntidadePedidos<T>;
begin
  Result := Self;
  FUsuarioCancelouFatura := Value;
end;

function TEntidadePedidos<T>.UsuarioCancelouFatura: String;
begin
  Result := FUsuarioCancelouFatura;
end;

function TEntidadePedidos<T>.UsuarioConferencia(Value: String): iEntidadePedidos<T>;
begin
  Result := Self;
  FUsuarioConferencia := Value;
end;

function TEntidadePedidos<T>.UsuarioConferencia: String;
begin
  Result := FUsuarioConferencia;
end;

function TEntidadePedidos<T>.UsuarioDeuDesconto(Value: String): iEntidadePedidos<T>;
begin
  Result := Self;
  FUsuarioDeuDesconto := Value;
end;

function TEntidadePedidos<T>.UsuarioDeuDesconto: String;
begin
  Result := FUsuarioDeuDesconto;
end;

function TEntidadePedidos<T>.UsuarioExcluiPedido(Value: String): iEntidadePedidos<T>;
begin
  Result := Self;
  FUsuarioExcluiPedido := Value;
end;

function TEntidadePedidos<T>.UsuarioExcluiPedido: String;
begin
  Result := FUsuarioExcluiPedido;
end;

function TEntidadePedidos<T>.UsuarioFatura(Value: String): iEntidadePedidos<T>;
begin
  Result := Self;
  FUsuarioFatura := Value;
end;

function TEntidadePedidos<T>.UsuarioFatura: String;
begin
  Result := FUsuarioFatura;
end;

function TEntidadePedidos<T>.UsuarioLiberou(Value: String): iEntidadePedidos<T>;
begin
  Result := Self;
  FUsuarioLiberou := Value;
end;

function TEntidadePedidos<T>.UsuarioLiberou: String;
begin
  Result := FUsuarioLiberou;
end;

function TEntidadePedidos<T>.ValorAReceber(Value: Currency): iEntidadePedidos<T>;
begin
  Result := Self;
  FValorAReceber := Value;
end;

function TEntidadePedidos<T>.ValorAReceber: Currency;
begin
  Result := FValorAReceber;
end;

function TEntidadePedidos<T>.ValorDesconto(Value: Currency): iEntidadePedidos<T>;
begin
  Result := Self;
  FValorDesconto := Value;
end;

function TEntidadePedidos<T>.ValorDesconto: Currency;
begin
  Result := FValorDesconto;
end;

function TEntidadePedidos<T>.ValorDescontoEspecial(Value: Currency): iEntidadePedidos<T>;
begin
  Result := Self;
  FValorDescontoEspecial := Value;
end;

function TEntidadePedidos<T>.ValorDescontoEspecial: Currency;
begin
  Result := FValorDescontoEspecial;
end;

function TEntidadePedidos<T>.ValorImpostos(Value: Currency): iEntidadePedidos<T>;
begin
  Result := Self;
  FValorImpostos := Value;
end;

function TEntidadePedidos<T>.ValorImpostos: Currency;
begin
  Result := FValorImpostos;
end;

function TEntidadePedidos<T>.ValorOutrasDespesas(Value: Currency): iEntidadePedidos<T>;
begin
  Result := Self;
  FValorOutrasDespesas := Value;
end;

function TEntidadePedidos<T>.ValorOutrasDespesas: Currency;
begin
  Result := FValorOutrasDespesas;
end;

function TEntidadePedidos<T>.ValorTotal(Value: Currency): iEntidadePedidos<T>;
begin
  Result := Self;
  FValorTotal := Value;
end;

function TEntidadePedidos<T>.ValorTotal: Currency;
begin
  Result := FValorTotal;
end;

function TEntidadePedidos<T>.CriarEstruturaCDS(cdsPedidos: TClientDataSet): iEntidadePedidos<T>;
begin
  Result := Self;
  cdsPedidos.Close;
  cdsPedidos.FieldDefs.Clear;

  // Criando os campos manualmente
  cdsPedidos.FieldDefs.Add('Id'                         , ftInteger , 0, False);  // String de at� 5 caracteres
  cdsPedidos.FieldDefs.Add('IdEmpresa'                  , ftString  , 5, False);  // Campo inteiro
  cdsPedidos.FieldDefs.Add('CodigoPedido'               , ftString  , 5, False);  //
  cdsPedidos.FieldDefs.Add('idcodigopedido'             , ftInteger , 0, False);
  cdsPedidos.FieldDefs.Add('IdPessoa'                   , ftInteger , 0, False);
  cdsPedidos.FieldDefs.Add('CodigoCliente'              , ftString  , 5, False);
  cdsPedidos.FieldDefs.Add('IdRepresentante'            , ftString  , 5, False);
  cdsPedidos.FieldDefs.Add('IdTransporte'               , ftString  , 5, False);
  cdsPedidos.FieldDefs.Add('IdRedespacho'               , ftString  , 5, False);
  cdsPedidos.FieldDefs.Add('IdPagamento'                , ftString  , 5, False);
  cdsPedidos.FieldDefs.Add('IdTeleVenda'                , ftInteger , 0, False);
  cdsPedidos.FieldDefs.Add('NumeroPedido'               , ftString  , 5, False);
  cdsPedidos.FieldDefs.Add('CFOP'                       , ftString  , 5, False);
  cdsPedidos.FieldDefs.Add('DataCadastro'               , ftDate    , 0, False);
  cdsPedidos.FieldDefs.Add('DataEntrega'                , ftDate    , 0, False);
  cdsPedidos.FieldDefs.Add('MontouCarga'                , ftString  , 3, False);
  cdsPedidos.FieldDefs.Add('SaiudoEstoque'              , ftString  , 3, False);
  cdsPedidos.FieldDefs.Add('Faturado'                   , ftString  , 3, False);
  cdsPedidos.FieldDefs.Add('Comissao'                   , ftString  , 3, False);
  cdsPedidos.FieldDefs.Add('Liberado'                   , ftString  , 3, False);
  cdsPedidos.FieldDefs.Add('Impressa'                   , ftString  , 3, False);
  cdsPedidos.FieldDefs.Add('LiberouComissao'            , ftString  , 3, False);
  cdsPedidos.FieldDefs.Add('Etiqueta'                   , ftString  , 3, False);
  cdsPedidos.FieldDefs.Add('Romaneio'                   , ftString  , 3, False);
  cdsPedidos.FieldDefs.Add('MontouProducao'             , ftString  , 3, False);
  cdsPedidos.FieldDefs.Add('Excluido'                   , ftString  , 3, False);
  cdsPedidos.FieldDefs.Add('Enviar'                     , ftString  , 3, False);
  cdsPedidos.FieldDefs.Add('PedidoRemoto'               , ftString  , 3, False);
  cdsPedidos.FieldDefs.Add('HoraCadastro'               , ftTime    , 0, False);
  cdsPedidos.FieldDefs.Add('Conferido'                  , ftString  , 3, False);
  cdsPedidos.FieldDefs.Add('TipoPedido'                 , ftString  , 1, False);
  cdsPedidos.FieldDefs.Add('TipoPagamento'              , ftString  , 1, False);
  cdsPedidos.FieldDefs.Add('TomadaNFe'                  , ftString  , 3, False);
  cdsPedidos.FieldDefs.Add('AliquotaComissao'           , ftCurrency, 0, False);
  cdsPedidos.FieldDefs.Add('AliquotaDesconto'           , ftCurrency, 0, False);
  cdsPedidos.FieldDefs.Add('AliquotaFrete'              , ftCurrency, 0, False);
  cdsPedidos.FieldDefs.Add('AliquotaNFe'                , ftCurrency, 0, False);
  cdsPedidos.FieldDefs.Add('AliquotaIcms'               , ftCurrency, 0, False);
  cdsPedidos.FieldDefs.Add('AliquotaIpi'                , ftCurrency, 0, False);
  cdsPedidos.FieldDefs.Add('AliquotaComissaoTeleVendas' , ftCurrency, 0, False);
  cdsPedidos.FieldDefs.Add('AliquotaSeguro'             , ftCurrency, 0, False);
  cdsPedidos.FieldDefs.Add('ValorOutrasDespesas'        , ftCurrency, 0, False);
  cdsPedidos.FieldDefs.Add('SubTotal'                   , ftCurrency, 0, False);
  cdsPedidos.FieldDefs.Add('TotalPedido'                , ftCurrency, 0, False);// Criando fisicamente os campos
  cdsPedidos.FieldDefs.Add('ValorDesconto'              , ftCurrency, 0, False);
  cdsPedidos.FieldDefs.Add('ValorImpostos'              , ftCurrency, 0, False);
  cdsPedidos.FieldDefs.Add('ValorReceber'               , ftCurrency, 0, False);
  cdsPedidos.FieldDefs.Add('PesoLiquido'                , ftCurrency, 0, False);
  cdsPedidos.FieldDefs.Add('PesoBruto'                  , ftCurrency, 0, False);
  cdsPedidos.FieldDefs.Add('QtdeVolume'                 , ftInteger, 0, False);
  cdsPedidos.FieldDefs.Add('TotalCubico'                , ftCurrency, 0, False);
  cdsPedidos.FieldDefs.Add('TeleVenda'                  , ftString, 3, False);
  cdsPedidos.FieldDefs.Add('PagoCom'                    , ftString, 1, False);
  cdsPedidos.FieldDefs.Add('AouP'                       , ftString, 1, False);
  cdsPedidos.FieldDefs.Add('Tabela'                     , ftString, 2, False);
  cdsPedidos.FieldDefs.Add('Status'                     , ftString, 1, False);
  cdsPedidos.FieldDefs.Add('Obs'                        , ftString, 600, False);
  cdsPedidos.FieldDefs.Add('ObsPedido'                  , ftString, 500, False);
  cdsPedidos.FieldDefs.Add('MunFrete'                   , ftInteger, 0, False);
  cdsPedidos.FieldDefs.Add('LojaAtacado'                , ftInteger, 0, False);
  cdsPedidos.FieldDefs.Add('TabelaPrecoManual'          , ftInteger, 0, False);
  cdsPedidos.FieldDefs.Add('Frete'                      , ftString,  1, False);
  cdsPedidos.FieldDefs.Add('NomeUsuario'                , ftString, 20, False);

  cdsPedidos.CreateDataSet;
end;

function TEntidadePedidos<T>.&End: T;
begin
  Result := FParent;
end;

//Inje��o de depend�ncia
function TEntidadePedidos<T>.PedidosItens: iEntidadePedidosItens<iEntidadePedidos<T>>;
begin
  Result := FPedidosItens;
end;

function TEntidadePedidos<T>.Pessoa: iEntidadePessoa<iEntidadePedidos<T>>;
begin
//  Result := FPedidosPessoa;
end;


end.
