object frmReplicarPedidos: TfrmReplicarPedidos
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  ClientHeight = 515
  ClientWidth = 1124
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pPrincipal: TPanel
    Left = 0
    Top = 0
    Width = 1124
    Height = 501
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object PPedidos: TPanel
      Left = 0
      Top = 67
      Width = 1124
      Height = 166
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object dbgPedidos: TDBGrid
        Left = 0
        Top = 41
        Width = 1124
        Height = 125
        Align = alClient
        BorderStyle = bsNone
        DataSource = dsPedidos
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDrawColumnCell = dbgPedidosDrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'id'
            Title.Caption = 'Id Pedido:'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IdEmpresa'
            Title.Caption = 'Id Empresa:'
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IdPessoa'
            Title.Caption = 'Id Cliente:'
            Width = 55
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nomepessoa'
            Title.Caption = 'Nome cliente:'
            Width = 220
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DataCadastro'
            Title.Caption = 'Data da emiss'#227'o:'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'HoraCadastro'
            Title.Caption = 'Hora da emiss'#227'o:'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CFOP'
            Title.Caption = 'CFOP:'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IdRepresentante'
            Title.Caption = 'Id Representante:'
            Width = 48
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IdPagamento'
            Title.Caption = 'Id Pagamento:'
            Width = 48
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TipoPedido'
            Title.Caption = 'Tipo pedido:'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TipoPagamento'
            Title.Caption = 'Tipo pagamento:'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TomadaNFe'
            Title.Caption = 'Tomada NFe:'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'aliquotacomissao'
            Title.Caption = '% Comiss'#227'o:'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'aliquotadesconto'
            Title.Caption = '% Desconto:'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'aliquotafrete'
            Title.Caption = '% Frete:'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'aliquotanfe'
            Title.Caption = '% NFe:'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'subtotal'
            Title.Caption = 'R$ Sub total:'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'valoroutrasdespesas'
            Title.Caption = 'R$ Outras despesas:'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'totalpedido'
            Title.Caption = 'R$ Total pedido:'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'valordesconto'
            Title.Caption = 'R$ Desconto:'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'valorreceber'
            Title.Caption = 'R$ Receber:'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'pesoliquido'
            Title.Caption = 'Peso l'#237'quido:'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'pesobruto'
            Title.Caption = 'Peso bruto:'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'qtdevolume'
            Title.Caption = 'Qtde volume:'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'totalcubico'
            Title.Caption = 'Total c'#250'bico:'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'pagocom'
            Title.Caption = 'Pago com:'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'obs'
            Title.Caption = 'Obs:'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'obspedido'
            Title.Caption = 'Obs pedido:'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'frete'
            Title.Caption = 'Frete por:'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nomeusuario'
            Title.Caption = 'Nome usu'#225'rio:'
            Visible = True
          end>
      end
      object pNovoCliente_Representante: TPanel
        Left = 0
        Top = 0
        Width = 1124
        Height = 41
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object lPedidos: TLabel
          Left = 497
          Top = 0
          Width = 93
          Height = 41
          Align = alLeft
          Alignment = taCenter
          Caption = 'Pedido(s)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -27
          Font.Name = 'Teko SemiBold'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitHeight = 39
        end
        object Panel2: TPanel
          Left = 590
          Top = 0
          Width = 521
          Height = 41
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 0
          object btnNovoRepresentante: TBitBtn
            Left = 6
            Top = 0
            Width = 129
            Height = 41
            Align = alRight
            Caption = 'Alterar Representante:'
            TabOrder = 0
            Visible = False
            OnClick = btnNovoRepresentanteClick
          end
          object pRepresentante: TPanel
            Left = 135
            Top = 0
            Width = 386
            Height = 41
            Align = alRight
            BevelOuter = bvNone
            Color = clMedGray
            ParentBackground = False
            TabOrder = 1
            Visible = False
            object Label9: TLabel
              Left = 4
              Top = 1
              Width = 40
              Height = 13
              Caption = 'Id Rep:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label10: TLabel
              Left = 64
              Top = 22
              Width = 12
              Height = 13
              Caption = '...'
            end
            object Label11: TLabel
              Left = 64
              Top = 1
              Width = 123
              Height = 13
              Caption = 'Nome Representante:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object edtNovoRepresentante: TEdit
              Left = 4
              Top = 17
              Width = 54
              Height = 21
              TabOrder = 0
              OnExit = edtNovoRepresentanteExit
              OnKeyPress = edtNovoRepresentanteKeyPress
            end
          end
        end
        object Panel4: TPanel
          Left = 0
          Top = 0
          Width = 497
          Height = 41
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 1
          object btnNovoCliente: TBitBtn
            Left = 0
            Top = 0
            Width = 88
            Height = 41
            Align = alLeft
            Caption = 'Alterar Cliente:'
            TabOrder = 0
            OnClick = btnNovoClienteClick
          end
          object pPessoa: TPanel
            Left = 88
            Top = 0
            Width = 409
            Height = 41
            Align = alClient
            BevelOuter = bvNone
            Color = clMedGray
            ParentBackground = False
            TabOrder = 1
            Visible = False
            object Label12: TLabel
              Left = 4
              Top = 1
              Width = 57
              Height = 13
              Caption = 'Id Cliente:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lNomeCliente: TLabel
              Left = 64
              Top = 22
              Width = 12
              Height = 13
              Caption = '...'
            end
            object Label14: TLabel
              Left = 64
              Top = 1
              Width = 77
              Height = 13
              Caption = 'Nome Cliente:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object edtNovoCliente: TEdit
              Left = 4
              Top = 17
              Width = 54
              Height = 21
              TabOrder = 0
              OnKeyDown = edtNovoClienteKeyDown
              OnKeyPress = edtNovoClienteKeyPress
            end
          end
        end
      end
    end
    object pPedidoItens: TPanel
      Left = 0
      Top = 233
      Width = 715
      Height = 225
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      object lPedidoItens: TLabel
        Left = 0
        Top = 0
        Width = 715
        Height = 39
        Align = alTop
        Alignment = taCenter
        Caption = 'Itens do pedido'
        Color = clSilver
        Font.Charset = ANSI_CHARSET
        Font.Color = clGrayText
        Font.Height = -27
        Font.Name = 'Teko SemiBold'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        ExplicitWidth = 148
      end
      object dbgPedidoItens: TDBGrid
        Left = 0
        Top = 39
        Width = 715
        Height = 186
        Margins.Left = 10
        Margins.Top = 10
        Margins.Right = 10
        Margins.Bottom = 10
        Align = alClient
        BorderStyle = bsNone
        Color = 11842740
        DataSource = DSPedidoItens
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDrawColumnCell = dbgPedidoItensDrawColumnCell
      end
    end
    object pPedidoPagamentos: TPanel
      Left = 719
      Top = 233
      Width = 405
      Height = 225
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 2
      object Label2: TLabel
        Left = 0
        Top = 0
        Width = 405
        Height = 39
        Align = alTop
        Alignment = taCenter
        Caption = 'Pagamento(s) do pedido'
        Font.Charset = ANSI_CHARSET
        Font.Color = 7829503
        Font.Height = -27
        Font.Name = 'Teko SemiBold'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 236
      end
      object dbgPedidoPagamento: TDBGrid
        Left = 0
        Top = 39
        Width = 405
        Height = 186
        Margins.Left = 10
        Margins.Top = 10
        Margins.Right = 10
        Margins.Bottom = 10
        Align = alClient
        BorderStyle = bsNone
        DataSource = DSPedidoPagamentos
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDrawColumnCell = dbgPedidoPagamentoDrawColumnCell
      end
    end
    object pRisco: TPanel
      Left = 715
      Top = 233
      Width = 4
      Height = 225
      Align = alRight
      BevelOuter = bvNone
      Color = clBackground
      ParentBackground = False
      TabOrder = 3
    end
    object Panel1: TPanel
      Left = 0
      Top = 458
      Width = 1124
      Height = 43
      Align = alBottom
      BevelOuter = bvNone
      Color = 14778398
      ParentBackground = False
      TabOrder = 4
      object Label1: TLabel
        Left = 244
        Top = 0
        Width = 517
        Height = 43
        Align = alClient
        Alignment = taCenter
        Caption = 'Replicador de Pedidos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -32
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ExplicitWidth = 312
        ExplicitHeight = 39
      end
      object dbNavegador: TDBNavigator
        Left = 897
        Top = 0
        Width = 227
        Height = 43
        Margins.Left = 10
        Margins.Top = 10
        Margins.Right = 10
        Margins.Bottom = 10
        DataSource = dsPedidos
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        Align = alRight
        TabOrder = 0
        OnClick = dbNavegadorClick
      end
      object btnConsultar: TBitBtn
        Left = 0
        Top = 0
        Width = 108
        Height = 43
        Margins.Left = 10
        Margins.Top = 10
        Margins.Right = 10
        Margins.Bottom = 10
        Align = alLeft
        Caption = '&Consultar pedido(s)'
        TabOrder = 1
        OnClick = btnConsultarClick
      end
      object btnFinalizarPedido: TBitBtn
        Left = 136
        Top = 0
        Width = 108
        Height = 43
        Margins.Left = 10
        Margins.Top = 10
        Margins.Right = 10
        Margins.Bottom = 10
        Align = alLeft
        Caption = '&Replicar pedido(s)'
        TabOrder = 2
        OnClick = btnFinalizarPedidoClick
      end
      object bbSair: TBitBtn
        Left = 761
        Top = 0
        Width = 108
        Height = 43
        Margins.Left = 10
        Margins.Top = 10
        Margins.Right = 10
        Margins.Bottom = 10
        Align = alRight
        Caption = 'X Sair'
        TabOrder = 3
        OnClick = bbSairClick
      end
      object pRiscoBotoes: TPanel
        Left = 108
        Top = 0
        Width = 28
        Height = 43
        Align = alLeft
        BevelKind = bkSoft
        BevelOuter = bvNone
        TabOrder = 4
      end
      object pRiscoNavegador: TPanel
        Left = 869
        Top = 0
        Width = 28
        Height = 43
        Align = alRight
        BevelKind = bkSoft
        BevelOuter = bvNone
        TabOrder = 5
      end
    end
    object pPesquisar: TPanel
      Left = 0
      Top = 0
      Width = 1124
      Height = 67
      Align = alTop
      BevelOuter = bvNone
      Color = 14778398
      ParentBackground = False
      TabOrder = 5
      object pDigitaConformePesquisa: TPanel
        Left = 572
        Top = 0
        Width = 552
        Height = 67
        Align = alClient
        BevelOuter = bvNone
        Color = 14778398
        ParentBackground = False
        TabOrder = 0
        object Label3: TLabel
          Left = 6
          Top = 20
          Width = 282
          Height = 19
          Align = alCustom
          Caption = 'Digite filtro conforme tipo de filtro'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object edtPesquisa: TEdit
          Left = 6
          Top = 42
          Width = 305
          Height = 21
          Align = alCustom
          TabOrder = 0
          OnKeyPress = edtPesquisaKeyPress
        end
        object pQuantidadeRegistro: TPanel
          Left = 315
          Top = 0
          Width = 237
          Height = 67
          Align = alRight
          BevelOuter = bvNone
          Color = clMedGray
          ParentBackground = False
          TabOrder = 1
          object Label7: TLabel
            Left = 0
            Top = 25
            Width = 237
            Height = 19
            Align = alBottom
            Alignment = taCenter
            Caption = 'encontrados'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitWidth = 100
          end
          object lQuantidadeRegistro: TLabel
            Left = 0
            Top = 44
            Width = 237
            Height = 23
            Align = alBottom
            Alignment = taCenter
            Caption = '..'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitWidth = 12
          end
          object Label8: TLabel
            Left = 0
            Top = 6
            Width = 237
            Height = 19
            Align = alBottom
            Alignment = taCenter
            Caption = 'Quantidade de registro(s)'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitWidth = 210
          end
        end
      end
      object rgEscolhaTipoFiltro: TRadioGroup
        Left = 154
        Top = 0
        Width = 154
        Height = 67
        Align = alLeft
        Caption = 'Escolha tipo de filtro'
        Color = clMedGray
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ItemIndex = 0
        Items.Strings = (
          '0 - Id Pedido'
          '1 - Id Cliente'
          '2 - Nome Cliente')
        ParentBackground = False
        ParentColor = False
        ParentFont = False
        TabOrder = 1
        OnClick = rgEscolhaTipoFiltroClick
      end
      object Panel6: TPanel
        Left = 308
        Top = 0
        Width = 264
        Height = 67
        Align = alLeft
        BevelOuter = bvNone
        Color = 14778398
        ParentBackground = False
        TabOrder = 2
        object Label5: TLabel
          Left = 6
          Top = 27
          Width = 70
          Height = 13
          Caption = 'Inicio Emiss'#227'o:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 140
          Top = 27
          Width = 61
          Height = 13
          Caption = 'Fim Emiss'#227'o:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 0
          Top = 0
          Width = 264
          Height = 13
          Align = alTop
          Alignment = taCenter
          Caption = 'Escolha Per'#237'odo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ExplicitWidth = 79
        end
        object DataFinal: TDateTimePicker
          Left = 140
          Top = 42
          Width = 117
          Height = 21
          Date = 43220.000000000000000000
          Time = 0.369445081021694900
          TabOrder = 0
        end
        object DataInicial: TDateTimePicker
          Left = 6
          Top = 42
          Width = 117
          Height = 21
          Date = 43191.000000000000000000
          Time = 0.369445081021694900
          TabOrder = 1
        end
      end
      object rdOrdemFiltro: TRadioGroup
        Left = 0
        Top = 0
        Width = 154
        Height = 67
        Align = alLeft
        Caption = 'Escolha ordem do filtro'
        Color = clMedGray
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindow
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ItemIndex = 0
        Items.Strings = (
          '0 - Id Pedido'
          '1 - Id Cliente'
          '2 - Nome Cliente')
        ParentBackground = False
        ParentColor = False
        ParentFont = False
        TabOrder = 3
      end
    end
  end
  object Logo: TStatusBar
    Left = 0
    Top = 501
    Width = 1124
    Height = 14
    Color = clScrollBar
    Panels = <
      item
        Width = 220
      end
      item
        Alignment = taCenter
        Width = 58
      end
      item
        Alignment = taCenter
        Text = 'USU'#193'RIO'
        Width = 85
      end
      item
        Alignment = taRightJustify
        Text = 'ID EMP'
        Width = 40
      end
      item
        Text = 'NOME EMPRESA'
        Width = 280
      end
      item
        Alignment = taCenter
        Text = 
          'Desenvolvido Por Rede Infocon  (Be More Emissor Boleto) Cel:(17)' +
          '98169-5336-WhatsApp'
        Width = 300
      end>
  end
  object dsPedidos: TDataSource
    DataSet = cdsPedidos
    Left = 128
    Top = 224
  end
  object DSPedidoItens: TDataSource
    DataSet = cdsPedidoItens
    Left = 304
    Top = 368
  end
  object DSPedidoPagamentos: TDataSource
    DataSet = cdsPedidoPagamentos
    Left = 864
    Top = 352
  end
  object cdsPedidoItens: TClientDataSet
    PersistDataPacket.Data = {
      D20500009619E0BD01000000180000002A000000000003000000D20508696470
      656469646F0100490000000100055749445448020002000500046974656D0400
      01000000000009696470726F6475746F040001000000000009696474616D616E
      686F04000100000000000D636F6469676F70726F6475746F0100490000000100
      0557494454480200020005000B636F6469676F62617272610100490000000100
      05574944544802000200050009636F6469676F636F7201004900000001000557
      494454480200020005000F636F6469676F61636573736F72696F010049000000
      01000557494454480200020005000C6E756D65726F70656469646F0100490000
      0001000557494454480200020005000D636F6469676F74616D616E686F010049
      00000001000557494454480200020005000565616E3133010049000000010005
      5749445448020002000D000565616E3233010049000000010005574944544802
      00020017000463666F7001004900000001000557494454480200020005000363
      7374010049000000010005574944544802000200030002636601004900000001
      0005574944544802000200010010616C6971756F7461636F6D697373616F0800
      04000000010007535542545950450200490006004D6F6E6579000C616C697175
      6F746169636D73080004000000010007535542545950450200490006004D6F6E
      6579000B616C6971756F74616970690800040000000100075355425459504502
      00490006004D6F6E65790010616C6971756F746176696E6369636D7308000400
      0000010007535542545950450200490006004D6F6E6579000F616C6971756F74
      6176696E63697373080004000000010007535542545950450200490006004D6F
      6E65790010616C6971756F7461646573636F6E746F0800040000000100075355
      42545950450200490006004D6F6E65790016616C6971756F7461646573636F6E
      746F70656469646F080004000000010007535542545950450200490006004D6F
      6E6579000B76616C6F72746162656C6108000400000001000753554254595045
      0200490006004D6F6E6579000A7175616E746964616465080004000000010007
      535542545950450200490006004D6F6E6579000A76616C6F72637573746F0800
      04000000010007535542545950450200490006004D6F6E6579000C76616C6F72
      70726F6475746F080004000000010007535542545950450200490006004D6F6E
      6579000F737562746F74616C70726F6475746F08000400000001000753554254
      5950450200490006004D6F6E6579001476616C6F72646573636F6E746F70726F
      6475746F080004000000010007535542545950450200490006004D6F6E657900
      0E76616C6F72706F72746162656C610800040000000100075355425459504502
      00490006004D6F6E6579001376616C6F72746F74616C706F72746162656C6108
      0004000000010007535542545950450200490006004D6F6E6579001176616C6F
      7266696E616C70726F6475746F08000400000001000753554254595045020049
      0006004D6F6E6579000E6C61726775726170726F6475746F0800040000000100
      07535542545950450200490006004D6F6E65790012636F6D7072696D656E746F
      70726F6475746F080004000000010007535542545950450200490006004D6F6E
      6579001065737065737375726170726F6475746F080004000000010007535542
      545950450200490006004D6F6E65790004706563610800040000000100075355
      42545950450200490006004D6F6E6579000B7065736F70726F6475746F080004
      000000010007535542545950450200490006004D6F6E6579000D63756269636F
      70726F6475746F080004000000010007535542545950450200490006004D6F6E
      6579000963616E63656C61646F01004900000001000557494454480200020003
      000D73616975646F6573746F7175650100490000000100055749445448020002
      00030004636F756704000100000000000870726F647563616F04000100000000
      000A66756E646F707265746F04000100000000000000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 174
    Top = 360
    object cdsPedidoItensidpedido: TStringField
      FieldName = 'idpedido'
      Size = 5
    end
    object cdsPedidoItensitem: TIntegerField
      FieldName = 'item'
    end
    object cdsPedidoItensidproduto: TIntegerField
      FieldName = 'idproduto'
    end
    object cdsPedidoItensidtamanho: TIntegerField
      FieldName = 'idtamanho'
    end
    object cdsPedidoItenscodigoproduto: TStringField
      FieldName = 'codigoproduto'
      Size = 5
    end
    object cdsPedidoItenscodigobarra: TStringField
      FieldName = 'codigobarra'
      Size = 5
    end
    object cdsPedidoItenscodigocor: TStringField
      FieldName = 'codigocor'
      Size = 5
    end
    object cdsPedidoItenscodigoacessorio: TStringField
      FieldName = 'codigoacessorio'
      Size = 5
    end
    object cdsPedidoItensnumeropedido: TStringField
      FieldName = 'numeropedido'
      Size = 5
    end
    object cdsPedidoItenscodigotamanho: TStringField
      FieldName = 'codigotamanho'
      Size = 5
    end
    object cdsPedidoItensean13: TStringField
      FieldName = 'ean13'
      Size = 13
    end
    object cdsPedidoItensean23: TStringField
      FieldName = 'ean23'
      Size = 23
    end
    object cdsPedidoItenscfop: TStringField
      FieldName = 'cfop'
      Size = 5
    end
    object cdsPedidoItenscst: TStringField
      FieldName = 'cst'
      Size = 3
    end
    object cdsPedidoItenscf: TStringField
      FieldName = 'cf'
      Size = 1
    end
    object cdsPedidoItensaliquotacomissao: TCurrencyField
      FieldName = 'aliquotacomissao'
    end
    object cdsPedidoItensaliquotaicms: TCurrencyField
      FieldName = 'aliquotaicms'
    end
    object cdsPedidoItensaliquotaipi: TCurrencyField
      FieldName = 'aliquotaipi'
    end
    object cdsPedidoItensaliquotavincicms: TCurrencyField
      FieldName = 'aliquotavincicms'
    end
    object cdsPedidoItensaliquotavinciss: TCurrencyField
      FieldName = 'aliquotavinciss'
    end
    object cdsPedidoItensaliquotadesconto: TCurrencyField
      FieldName = 'aliquotadesconto'
    end
    object cdsPedidoItensaliquotadescontopedido: TCurrencyField
      FieldName = 'aliquotadescontopedido'
    end
    object cdsPedidoItensvalortabela: TCurrencyField
      FieldName = 'valortabela'
    end
    object cdsPedidoItensquantidade: TCurrencyField
      FieldName = 'quantidade'
    end
    object cdsPedidoItensvalorcusto: TCurrencyField
      FieldName = 'valorcusto'
    end
    object cdsPedidoItensvalorproduto: TCurrencyField
      FieldName = 'valorproduto'
    end
    object cdsPedidoItenssubtotalproduto: TCurrencyField
      FieldName = 'subtotalproduto'
    end
    object cdsPedidoItensvalordescontoproduto: TCurrencyField
      FieldName = 'valordescontoproduto'
    end
    object cdsPedidoItensvalorportabela: TCurrencyField
      FieldName = 'valorportabela'
    end
    object cdsPedidoItensvalortotalportabela: TCurrencyField
      FieldName = 'valortotalportabela'
    end
    object cdsPedidoItensvalorfinalproduto: TCurrencyField
      FieldName = 'valorfinalproduto'
    end
    object cdsPedidoItenslarguraproduto: TCurrencyField
      FieldName = 'larguraproduto'
    end
    object cdsPedidoItenscomprimentoproduto: TCurrencyField
      FieldName = 'comprimentoproduto'
    end
    object cdsPedidoItensespessuraproduto: TCurrencyField
      FieldName = 'espessuraproduto'
    end
    object cdsPedidoItenspeca: TCurrencyField
      FieldName = 'peca'
    end
    object cdsPedidoItenspesoproduto: TCurrencyField
      FieldName = 'pesoproduto'
    end
    object cdsPedidoItenscubicoproduto: TCurrencyField
      FieldName = 'cubicoproduto'
    end
    object cdsPedidoItenscancelado: TStringField
      FieldName = 'cancelado'
      Size = 3
    end
    object cdsPedidoItenssaiudoestoque: TStringField
      FieldName = 'saiudoestoque'
      Size = 3
    end
    object cdsPedidoItenscoug: TIntegerField
      FieldName = 'coug'
    end
    object cdsPedidoItensproducao: TIntegerField
      FieldName = 'producao'
    end
    object cdsPedidoItensfundopreto: TIntegerField
      FieldName = 'fundopreto'
    end
  end
  object cdsPedidos: TClientDataSet
    PersistDataPacket.Data = {
      B00700009619E0BD01000000180000003E000000000003000000B00702696404
      00010000000000094964456D7072657361010049000000010005574944544802
      00020005000C436F6469676F50656469646F0100490000000100055749445448
      0200020005000E6964636F6469676F70656469646F0400010000000000084964
      506573736F6104000100000000000D436F6469676F436C69656E746501004900
      000001000557494454480200020005000F4964526570726573656E74616E7465
      01004900000001000557494454480200020005000C49645472616E73706F7274
      6501004900000001000557494454480200020005000C49645265646573706163
      686F01004900000001000557494454480200020005000B4964506167616D656E
      746F01004900000001000557494454480200020005000B496454656C6556656E
      646104000100000000000C4E756D65726F50656469646F010049000000010005
      57494454480200020005000443464F5001004900000001000557494454480200
      020005000B6E6F6D657573756172696F01004900000001000557494454480200
      020014000C44617461436164617374726F08000800000000000B64617461656E
      747265676108000800000000000B4D6F6E746F75436172676101004900000001
      000557494454480200020003000D53616975646F4573746F7175650100490000
      00010005574944544802000200030008466174757261646F0100490000000100
      05574944544802000200030008436F6D697373616F0100490000000100055749
      445448020002000300084C6962657261646F0100490000000100055749445448
      02000200030008496D7072657373610100490000000100055749445448020002
      0003000F4C696265726F75436F6D697373616F01004900000001000557494454
      4802000200030008457469717565746101004900000001000557494454480200
      0200030008526F6D616E65696F01004900000001000557494454480200020003
      000E4D6F6E746F7550726F647563616F01004900000001000557494454480200
      02000300084578636C7569646F01004900000001000557494454480200020003
      0006456E7669617201004900000001000557494454480200020003000C506564
      69646F52656D6F746F01004900000001000557494454480200020003000C486F
      7261436164617374726F040007000000000009436F6E66657269646F01004900
      000001000557494454480200020003000A5469706F50656469646F0100490000
      0001000557494454480200020001000D5469706F506167616D656E746F010049
      000000010005574944544802000200010009546F6D6164614E46650100490000
      00010005574944544802000200030010616C6971756F7461636F6D697373616F
      080004000000010007535542545950450200490006004D6F6E65790010616C69
      71756F7461646573636F6E746F08000400000001000753554254595045020049
      0006004D6F6E6579000D616C6971756F74616672657465080004000000010007
      535542545950450200490006004D6F6E6579000B616C6971756F74616E666508
      0004000000010007535542545950450200490006004D6F6E6579000C616C6971
      756F746169636D73080004000000010007535542545950450200490006004D6F
      6E6579000B616C6971756F746169706908000400000001000753554254595045
      0200490006004D6F6E6579000E616C6971756F746173656775726F0800040000
      00010007535542545950450200490006004D6F6E6579001376616C6F726F7574
      7261736465737065736173080004000000010007535542545950450200490006
      004D6F6E65790008737562746F74616C08000400000001000753554254595045
      0200490006004D6F6E6579000B746F74616C70656469646F0800040000000100
      07535542545950450200490006004D6F6E6579000D76616C6F72646573636F6E
      746F080004000000010007535542545950450200490006004D6F6E6579000D76
      616C6F72696D706F73746F730800040000000100075355425459504502004900
      06004D6F6E6579000C76616C6F72726563656265720800040000000100075355
      42545950450200490006004D6F6E6579000B7065736F6C69717569646F080004
      000000010007535542545950450200490006004D6F6E657900097065736F6272
      75746F080004000000010007535542545950450200490006004D6F6E6579000A
      71746465766F6C756D6504000100000000000B746F74616C63756269636F0800
      04000000010007535542545950450200490006004D6F6E6579000974656C6576
      656E64610100490000000100055749445448020002000300077061676F636F6D
      010049000000010005574944544802000200010004616F757001004900000001
      0005574944544802000200010006746162656C61010049000000010005574944
      5448020002000200067374617475730100490000000100055749445448020002
      000100036F62730200490000000100055749445448020002005802096F627370
      656469646F020049000000010005574944544802000200F401084D756E467265
      746504000100000000000B6C6F6A616174616361646F04000100000000001174
      6162656C61707265636F6D616E75616C04000100000000000566726574650100
      4900000001000557494454480200020001000000}
    Active = True
    Aggregates = <>
    AutoCalcFields = False
    Params = <>
    Left = 56
    Top = 224
    object cdsPedidosid: TIntegerField
      FieldName = 'id'
    end
    object cdsPedidosIdEmpresa: TStringField
      FieldName = 'IdEmpresa'
      Size = 5
    end
    object cdsPedidosCodigoPedido: TStringField
      FieldName = 'CodigoPedido'
      Size = 5
    end
    object cdsPedidosidcodigopedido: TIntegerField
      FieldName = 'idcodigopedido'
    end
    object cdsPedidosIdPessoa: TIntegerField
      FieldName = 'IdPessoa'
    end
    object cdsPedidosCodigoCliente: TStringField
      FieldName = 'CodigoCliente'
      Size = 5
    end
    object cdsPedidosIdRepresentante: TStringField
      FieldName = 'IdRepresentante'
      Size = 5
    end
    object cdsPedidosIdTransporte: TStringField
      FieldName = 'IdTransporte'
      Size = 5
    end
    object cdsPedidosIdRedespacho: TStringField
      FieldName = 'IdRedespacho'
      Size = 5
    end
    object cdsPedidosIdPagamento: TStringField
      FieldName = 'IdPagamento'
      Size = 5
    end
    object cdsPedidosIdTeleVenda: TIntegerField
      FieldName = 'IdTeleVenda'
    end
    object cdsPedidosNumeroPedido: TStringField
      FieldName = 'NumeroPedido'
      Size = 5
    end
    object cdsPedidosCFOP: TStringField
      FieldName = 'CFOP'
      Size = 5
    end
    object cdsPedidosDataCadastro: TDateTimeField
      FieldName = 'DataCadastro'
    end
    object cdsPedidosdataentrega: TDateTimeField
      FieldName = 'dataentrega'
    end
    object cdsPedidosMontouCarga: TStringField
      FieldName = 'MontouCarga'
      Size = 3
    end
    object cdsPedidosSaiudoEstoque: TStringField
      FieldName = 'SaiudoEstoque'
      Size = 3
    end
    object cdsPedidosFaturado: TStringField
      FieldName = 'Faturado'
      Size = 3
    end
    object cdsPedidosComissao: TStringField
      FieldName = 'Comissao'
      Size = 3
    end
    object cdsPedidosLiberado: TStringField
      FieldName = 'Liberado'
      Size = 3
    end
    object cdsPedidosImpressa: TStringField
      FieldName = 'Impressa'
      Size = 3
    end
    object cdsPedidosLiberouComissao: TStringField
      FieldName = 'LiberouComissao'
      Size = 3
    end
    object cdsPedidosEtiqueta: TStringField
      FieldName = 'Etiqueta'
      Size = 3
    end
    object cdsPedidosRomaneio: TStringField
      FieldName = 'Romaneio'
      Size = 3
    end
    object cdsPedidosMontouProducao: TStringField
      FieldName = 'MontouProducao'
      Size = 3
    end
    object cdsPedidosExcluido: TStringField
      FieldName = 'Excluido'
      Size = 3
    end
    object cdsPedidosEnviar: TStringField
      FieldName = 'Enviar'
      Size = 3
    end
    object cdsPedidosPedidoRemoto: TStringField
      FieldName = 'PedidoRemoto'
      Size = 3
    end
    object cdsPedidosHoraCadastro: TTimeField
      FieldName = 'HoraCadastro'
    end
    object cdsPedidosConferido: TStringField
      FieldName = 'Conferido'
      Size = 3
    end
    object cdsPedidosTipoPedido: TStringField
      FieldName = 'TipoPedido'
      Size = 1
    end
    object cdsPedidosTipoPagamento: TStringField
      FieldName = 'TipoPagamento'
      Size = 1
    end
    object cdsPedidosTomadaNFe: TStringField
      FieldName = 'TomadaNFe'
      Size = 3
    end
    object cdsPedidosaliquotacomissao: TCurrencyField
      FieldName = 'aliquotacomissao'
      DisplayFormat = '##0.00%'
    end
    object cdsPedidosaliquotadesconto: TCurrencyField
      FieldName = 'aliquotadesconto'
      DisplayFormat = '##0.00%'
    end
    object cdsPedidosaliquotafrete: TCurrencyField
      FieldName = 'aliquotafrete'
      DisplayFormat = '##0.00%'
    end
    object cdsPedidosaliquotanfe: TCurrencyField
      FieldName = 'aliquotanfe'
      DisplayFormat = '##0.00%'
    end
    object cdsPedidosaliquotaicms: TCurrencyField
      FieldName = 'aliquotaicms'
      DisplayFormat = '##0.00%'
    end
    object cdsPedidosaliquotaipi: TCurrencyField
      FieldName = 'aliquotaipi'
      DisplayFormat = '##0.00%'
    end
    object cdsPedidosaliquotacomissaotelevendas: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'aliquotacomissaotelevendas'
      DisplayFormat = '##0.00%'
      Calculated = True
    end
    object cdsPedidosaliquotaseguro: TCurrencyField
      FieldName = 'aliquotaseguro'
      DisplayFormat = '##0.00%'
    end
    object cdsPedidosvaloroutrasdespesas: TCurrencyField
      FieldName = 'valoroutrasdespesas'
      DisplayFormat = '#.##0.00'
      EditFormat = '#,##0.00'
    end
    object cdsPedidossubtotal: TCurrencyField
      FieldName = 'subtotal'
      DisplayFormat = '#.##0.00'
      EditFormat = '#,##0.00'
    end
    object cdsPedidostotalpedido: TCurrencyField
      FieldName = 'totalpedido'
      DisplayFormat = '#.##0.00'
      EditFormat = '#,##0.00'
    end
    object cdsPedidosvalordesconto: TCurrencyField
      FieldName = 'valordesconto'
      DisplayFormat = '#.##0.00'
      EditFormat = '#,##0.00'
    end
    object cdsPedidosvalorimpostos: TCurrencyField
      FieldName = 'valorimpostos'
      DisplayFormat = '#.##0.00'
      EditFormat = '#,##0.00'
    end
    object cdsPedidosvalorreceber: TCurrencyField
      FieldName = 'valorreceber'
      DisplayFormat = '#.##0.00'
      EditFormat = '#,##0.00'
    end
    object cdsPedidospesoliquido: TCurrencyField
      FieldName = 'pesoliquido'
    end
    object cdsPedidospesobruto: TCurrencyField
      FieldName = 'pesobruto'
    end
    object cdsPedidosqtdevolume: TIntegerField
      FieldName = 'qtdevolume'
    end
    object cdsPedidostotalcubico: TCurrencyField
      FieldName = 'totalcubico'
    end
    object cdsPedidostelevenda: TStringField
      FieldName = 'televenda'
      Size = 3
    end
    object cdsPedidospagocom: TStringField
      FieldName = 'pagocom'
      Size = 1
    end
    object cdsPedidosaoup: TStringField
      FieldName = 'aoup'
      Size = 1
    end
    object cdsPedidostabela: TStringField
      FieldName = 'tabela'
      Size = 2
    end
    object cdsPedidosstatus: TStringField
      FieldName = 'status'
      Size = 1
    end
    object cdsPedidosobs: TStringField
      FieldName = 'obs'
      Size = 600
    end
    object cdsPedidosobspedido: TStringField
      FieldName = 'obspedido'
      Size = 500
    end
    object cdsPedidosMunFrete: TIntegerField
      FieldName = 'MunFrete'
    end
    object cdsPedidoslojaatacado: TIntegerField
      FieldName = 'lojaatacado'
    end
    object cdsPedidostabelaprecomanual: TIntegerField
      FieldName = 'tabelaprecomanual'
    end
    object cdsPedidosfrete: TStringField
      FieldName = 'frete'
      Size = 1
    end
    object cdsPedidosnomeusuario: TStringField
      FieldName = 'nomeusuario'
    end
  end
  object cdsPedidoPagamentos: TClientDataSet
    PersistDataPacket.Data = {
      A20200009619E0BD010000001800000016000000000003000000A20208496450
      656469646F040001000000000005496450656404000100000000000C436F6469
      676F50656469646F01004900000001000557494454480200020005000B496450
      6167616D656E746F010049000000010005574944544802000200050004497465
      6D04000100000000000F4E756D65726F506167616D656E746F04000100000000
      000E4461746156656E63696D656E746F04000600000000000B50617263656C61
      4E6F766101004900000001000557494454480200020003000C456D6974697542
      6F6C65746F01004900000001000557494454480200020003000B4E756D65726F
      42616E636F01004900000001000557494454480200020003000A56616C6F7254
      6F74616C080004000000010007535542545950450200490006004D6F6E657900
      0C56616C6F7250617263656C6108000400000001000753554254595045020049
      0006004D6F6E657900105175616E746964616465646544696173040001000000
      0000095061676F75436F6D6F0100490000000100055749445448020002000300
      0D5061676F75436F6D697373616F010049000000010005574944544802000200
      03000F4C696265726F75436F6D697373616F0100490000000100055749445448
      0200020003000F4F636F7272656E63696142616E636F01004900000001000557
      49445448020002000300024C4C01004900000001000557494454480200020001
      0006456E7669617201004900000001000557494454480200020003000C4F6273
      506167616D656E746F02004900000001000557494454480200020058020A4465
      73636F6E7461646F010049000000010005574944544802000200030013456E76
      6961646F50617261436172746F72696F01004900000001000557494454480200
      020003000000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 864
    Top = 296
    object cdsPedidoPagamentosIdPedido: TIntegerField
      FieldName = 'IdPedido'
    end
    object cdsPedidoPagamentosIdPed: TIntegerField
      FieldName = 'IdPed'
    end
    object cdsPedidoPagamentosCodigoPedido: TStringField
      FieldName = 'CodigoPedido'
      Size = 5
    end
    object cdsPedidoPagamentosIdPagamento: TStringField
      FieldName = 'IdPagamento'
      Size = 5
    end
    object cdsPedidoPagamentosItem: TIntegerField
      FieldName = 'Item'
    end
    object cdsPedidoPagamentosNumeroPagamento: TIntegerField
      FieldName = 'NumeroPagamento'
    end
    object cdsPedidoPagamentosDataVencimento: TDateField
      FieldName = 'DataVencimento'
    end
    object cdsPedidoPagamentosParcelaNova: TStringField
      FieldName = 'ParcelaNova'
      Size = 3
    end
    object cdsPedidoPagamentosEmitiuBoleto: TStringField
      FieldName = 'EmitiuBoleto'
      Size = 3
    end
    object cdsPedidoPagamentosNumeroBanco: TStringField
      FieldName = 'NumeroBanco'
      Size = 3
    end
    object cdsPedidoPagamentosValorTotal: TCurrencyField
      FieldName = 'ValorTotal'
    end
    object cdsPedidoPagamentosValorParcela: TCurrencyField
      FieldName = 'ValorParcela'
    end
    object cdsPedidoPagamentosQuantidadedeDias: TIntegerField
      FieldName = 'QuantidadedeDias'
    end
    object cdsPedidoPagamentosPagouComo: TStringField
      FieldName = 'PagouComo'
      Size = 3
    end
    object cdsPedidoPagamentosPagouComissao: TStringField
      FieldName = 'PagouComissao'
      Size = 3
    end
    object cdsPedidoPagamentosLiberouComissao: TStringField
      FieldName = 'LiberouComissao'
      Size = 3
    end
    object cdsPedidoPagamentosOcorrenciaBanco: TStringField
      FieldName = 'OcorrenciaBanco'
      Size = 3
    end
    object cdsPedidoPagamentosLL: TStringField
      FieldName = 'LL'
      Size = 1
    end
    object cdsPedidoPagamentosEnviar: TStringField
      FieldName = 'Enviar'
      Size = 3
    end
    object cdsPedidoPagamentosObsPagamento: TStringField
      FieldName = 'ObsPagamento'
      Size = 600
    end
    object cdsPedidoPagamentosDescontado: TStringField
      FieldName = 'Descontado'
      Size = 3
    end
    object cdsPedidoPagamentosEnviadoParaCartorio: TStringField
      FieldName = 'EnviadoParaCartorio'
      Size = 3
    end
  end
end
