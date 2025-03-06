{*******************************************************}
{                    API PDV - JSON                     }
{                      Be More Web                      }
{          In�cio do projeto 23/02/2025 12:02           }
{                 www.bemoreweb.com.br                  }
{                     (17)98169-5336                    }
{                        2003/2025                      }
{         Analista desenvolvedor (Eleandro Silva)       }
{*******************************************************}
unit Model.Entidade.Pedidos.Interfaces;

interface

uses
  Datasnap.DBClient,

  Model.Entidade.Pedidos.Itens.Interfaces,
  Model.Entidade.Pessoa.Interfaces;

type
  iEntidadePedidos<T> = interface
    ['{E3954C51-2A20-4152-84B8-C7D54B1A25ED}']
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

end.
