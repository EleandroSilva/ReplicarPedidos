unit View.Entidade.Pesquisar.Pagamento;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Data.DB,
  Vcl.Grids,
  Vcl.DBGrids,
  Vcl.StdCtrls,
  Vcl.Buttons,
  Vcl.DBCtrls,
  Vcl.ExtCtrls, Controller.Interfaces;

type
  TfrmViewPesquisarPagamento = class(TForm)
    pPrincipal: TPanel;
    pFiltro: TPanel;
    rgEscolhaTipoFiltro: TRadioGroup;
    pDigitaConformePesquisa: TPanel;
    Label3: TLabel;
    edtPesquisa: TEdit;
    pBotoes: TPanel;
    lConsultar: TLabel;
    dbNavegador: TDBNavigator;
    pRiscoNavegador: TPanel;
    btnConsultar: TBitBtn;
    bbSair: TBitBtn;
    pGrid: TPanel;
    dbGrid: TDBGrid;
    pTitulo: TPanel;
    DataSource: TDataSource;
    procedure dbGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure edtPesquisaKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure dbGridDblClick(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
  private
    FController : iController;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmViewPesquisarPagamento: TfrmViewPesquisarPagamento;

implementation

uses
  Controller.Imp,
  ReplicarPedidos;

{$R *.dfm}

procedure TfrmViewPesquisarPagamento.bbSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmViewPesquisarPagamento.btnConsultarClick(Sender: TObject);
begin
  if edtPesquisa.Text = '' then
    FController
      .FactoryDAO
        .DAOPrazoPagamento
          .GetAll
            .DataSet(DataSource)
  else
  case rgEscolhaTipoFiltro.ItemIndex  of
    0 : FController
          .FactoryDAO
            .DAOPrazoPagamento
              .GetbyId(edtPesquisa.Text)
                .DataSet(DataSource);
    1 : FController
          .FactoryDAO
            .DAOPrazoPagamento
              .GetbyParams(edtPesquisa.Text)
                .DataSet(DataSource);
  end;

  if DataSource.DataSet.IsEmpty then
    ShowMessage('Reguistro n�o encontrado!');
end;

procedure TfrmViewPesquisarPagamento.dbGridDblClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmViewPesquisarPagamento.dbGridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if Odd(TDBGrid(Sender).DataSource.DataSet.RecNo) then
    TDBGrid(Sender).Canvas.Brush.Color := clSkyBlue
  else
    TDBGrid(Sender).Canvas.Brush.Color := clWhite;

  if (State = [GdSelected]) or (State = [GdFocused]) or
    (State = [GdSelected, GdFocused]) then
  begin
    TDBGrid(Sender).Canvas.Brush.Color := cl3DLight;
    TDBGrid(Sender).Canvas.Font.Color := clBlack;
  end;
  TDBGrid(Sender).DefaultDrawDataCell(Rect, Column.Field, State);
end;

procedure TfrmViewPesquisarPagamento.edtPesquisaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if rgEscolhaTipoFiltro.ItemIndex =0 then
    if not (Key in ['0'..'9', Chr(8), Chr(6)]) then Key := #0;
end;

procedure TfrmViewPesquisarPagamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if not DataSource.DataSet.IsEmpty then
  begin
    frmReplicarPedidos.edtNovoPagamento.Text      := DataSource.DataSet.FieldByName('Id').AsString;
    frmReplicarPedidos.lNomeNovoPagamento.Caption := DataSource.DataSet.FieldByName('Descricao').AsString;
  end;
end;

procedure TfrmViewPesquisarPagamento.FormCreate(Sender: TObject);
begin
  FController := TController.New;
end;

procedure TfrmViewPesquisarPagamento.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    key := #0;
    Perform(CM_Dialogkey, VK_TAB, 0);
  end;
end;

procedure TfrmViewPesquisarPagamento.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_Escape:
      Close;
  end;
end;

procedure TfrmViewPesquisarPagamento.FormShow(Sender: TObject);
begin
  btnConsultar.Click;
end;

end.
