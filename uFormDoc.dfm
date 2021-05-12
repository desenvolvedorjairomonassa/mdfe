inherited FrmDocMDFe: TFrmDocMDFe
  Caption = 'Adicionando documentos'
  ClientHeight = 494
  ClientWidth = 986
  ExplicitWidth = 1002
  ExplicitHeight = 533
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel [0]
    Left = 0
    Top = 0
    Width = 986
    Height = 90
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 11
      Width = 84
      Height = 13
      Caption = 'chave de acesso:'
    end
    object Label2: TLabel
      Left = 24
      Top = 38
      Width = 84
      Height = 13
      Caption = 'c'#243'digo de barras:'
    end
    object DBEdit1: TDBEdit
      Left = 114
      Top = 8
      Width = 295
      Height = 21
      DataField = 'chave'
      DataSource = dsDoc
      MaxLength = 44
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 114
      Top = 35
      Width = 295
      Height = 21
      DataField = 'SegcodBarra'
      DataSource = dsDoc
      MaxLength = 36
      TabOrder = 1
    end
    object DBCheckBox1: TDBCheckBox
      Left = 24
      Top = 62
      Width = 161
      Height = 17
      Caption = 'indicador reentrega'
      DataField = 'indReentrega'
      DataSource = dsDoc
      TabOrder = 2
      ValueChecked = '1'
      ValueUnchecked = '0'
    end
    object GroupBox3: TGroupBox
      Left = 415
      Top = 3
      Width = 398
      Height = 53
      Caption = 'Munic'#237'pio de descarga'
      TabOrder = 3
      object Label30: TLabel
        Left = 241
        Top = 25
        Width = 13
        Height = 13
        Caption = 'UF'
      end
      object DBEdit23: TDBEdit
        Left = 10
        Top = 22
        Width = 225
        Height = 21
        DataField = 'NM_MUN_2017'
        DataSource = dsDoc
        ReadOnly = True
        TabOrder = 0
        OnEnter = DBEdit23Enter
      end
      object btnSelecionarCID: TButton
        Left = 260
        Top = 20
        Width = 64
        Height = 25
        Caption = 'selecionar'
        TabOrder = 1
        OnClick = btnSelecionarCIDClick
      end
      object cbUF: TDBComboBox
        Left = 330
        Top = 22
        Width = 53
        Height = 21
        DataField = 'nm_uf'
        DataSource = dsDoc
        Enabled = False
        Items.Strings = (
          'AC '
          'AL'
          'AP '
          'AM '
          'BA '
          'CE '
          'DF '
          'ES '
          'GO'
          'MA'
          'MT'
          'MS'
          'MG'
          'PA'
          'PB'
          'PR'
          'PE'
          'PI'
          'RJ'
          'RN'
          'RS'
          'RO'
          'RR'
          'SC'
          'SP'
          'SE'
          'TO')
        TabOrder = 2
      end
    end
  end
  object Panel2: TPanel [1]
    Left = 0
    Top = 453
    Width = 986
    Height = 41
    Align = alBottom
    TabOrder = 1
    object btnCancelarDoc: TButton
      Left = 827
      Top = 6
      Width = 75
      Height = 25
      Caption = 'cancelar'
      TabOrder = 0
      OnClick = btnCancelarDocClick
    end
    object btnConfirmarDoc: TButton
      Left = 746
      Top = 6
      Width = 75
      Height = 25
      Caption = 'confirmar'
      TabOrder = 1
      OnClick = btnConfirmarDocClick
    end
  end
  object PageControl1: TPageControl [2]
    Left = 0
    Top = 90
    Width = 986
    Height = 363
    ActivePage = tsUnidades
    Align = alClient
    TabOrder = 2
    object tsUnidades: TTabSheet
      Caption = 'unidades de transporte'
      object Splitter1: TSplitter
        Left = 709
        Top = 0
        Height = 304
        ExplicitLeft = 718
        ExplicitTop = -18
      end
      object Panel4: TPanel
        Left = 0
        Top = 304
        Width = 978
        Height = 31
        Align = alBottom
        TabOrder = 0
        object Button4: TButton
          Left = 734
          Top = 1
          Width = 75
          Height = 25
          Caption = 'alterar'
          TabOrder = 0
          Visible = False
        end
        object Button5: TButton
          Left = 896
          Top = 1
          Width = 75
          Height = 25
          Caption = 'excluir'
          TabOrder = 1
          OnClick = Button5Click
        end
        object btnincCte: TButton
          Left = 815
          Top = 1
          Width = 75
          Height = 25
          Caption = 'incluir'
          TabOrder = 2
          OnClick = btnincCteClick
        end
      end
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 709
        Height = 304
        Align = alLeft
        Caption = 'unidades '
        TabOrder = 1
        object DBGrid2: TDBGrid
          Left = 2
          Top = 15
          Width = 705
          Height = 287
          Align = alClient
          DataSource = dsUnidade
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'tipo'
              Title.Caption = 'tipo transporte'
              Width = 209
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'idUnidTransp'
              Title.Caption = 'identifica'#231#227'o'
              Width = 190
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'qtdeRateada'
              Title.Caption = 'quantidade de rateada'
              Width = 246
              Visible = True
            end>
        end
      end
      object GroupBox2: TGroupBox
        Left = 712
        Top = 0
        Width = 266
        Height = 304
        Align = alRight
        Caption = ' lacres'
        TabOrder = 2
        object DBGrid3: TDBGrid
          Left = 2
          Top = 15
          Width = 262
          Height = 287
          Align = alClient
          DataSource = dsLacre
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'lacre'
              Width = 207
              Visible = True
            end>
        end
      end
    end
    object tsperi: TTabSheet
      Caption = 'produtos perigosos'
      ImageIndex = 1
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 978
        Height = 95
        Align = alTop
        TabOrder = 0
        DesignSize = (
          978
          95)
        object Label3: TLabel
          Left = 8
          Top = 16
          Width = 79
          Height = 13
          Caption = 'n'#250'mero ONU/NU'
          FocusControl = DBEdit3
        end
        object Label4: TLabel
          Left = 8
          Top = 41
          Width = 213
          Height = 13
          Caption = 'nome apropriado para embarque do produto'
          FocusControl = DBEdit4
        end
        object Label5: TLabel
          Left = 168
          Top = 16
          Width = 132
          Height = 13
          Caption = 'Classe ou subclasse/divis'#227'o'
          FocusControl = DBEdit5
        end
        object Label6: TLabel
          Left = 8
          Top = 66
          Width = 100
          Height = 13
          Caption = 'grupo de embalagem'
          FocusControl = DBEdit6
        end
        object Label7: TLabel
          Left = 188
          Top = 66
          Width = 139
          Height = 13
          Caption = 'quantidade total por produto'
          FocusControl = DBEdit7
        end
        object Label8: TLabel
          Left = 446
          Top = 66
          Width = 148
          Height = 13
          Caption = 'quantidade e tipo de volumes'
          FocusControl = DBEdit8
        end
        object DBEdit3: TDBEdit
          Left = 94
          Top = 12
          Width = 56
          Height = 21
          DataField = 'nONU'
          DataSource = dsPeri
          TabOrder = 0
        end
        object DBEdit4: TDBEdit
          Left = 232
          Top = 37
          Width = 737
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          DataField = 'NomeAE'
          DataSource = dsPeri
          TabOrder = 2
        end
        object DBEdit5: TDBEdit
          Left = 306
          Top = 12
          Width = 663
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          DataField = 'ClaRisco'
          DataSource = dsPeri
          TabOrder = 1
        end
        object DBEdit6: TDBEdit
          Left = 114
          Top = 62
          Width = 67
          Height = 21
          DataField = 'grEmb'
          DataSource = dsPeri
          TabOrder = 3
        end
        object DBEdit7: TDBEdit
          Left = 335
          Top = 62
          Width = 90
          Height = 21
          DataField = 'TotProd'
          DataSource = dsPeri
          TabOrder = 4
        end
        object DBEdit8: TDBEdit
          Left = 597
          Top = 62
          Width = 97
          Height = 21
          DataField = 'VolTipo'
          DataSource = dsPeri
          TabOrder = 5
        end
        object btnIncluirPeri: TButton
          Left = 813
          Top = 64
          Width = 75
          Height = 25
          Caption = 'incluir'
          TabOrder = 6
          OnClick = btnIncluirPeriClick
        end
        object btnExcluirPeri: TButton
          Left = 894
          Top = 64
          Width = 75
          Height = 25
          Caption = 'excluir'
          TabOrder = 7
          OnClick = btnExcluirPeriClick
        end
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 95
        Width = 978
        Height = 240
        Align = alClient
        DataSource = dsPeri
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'nONU'
            Title.Caption = 'ONU'
            Width = 83
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NomeAE'
            Title.Caption = 'nome'
            Width = 285
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ClaRisco'
            Title.Caption = 'classe'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'grEmb'
            Title.Caption = 'embalagem'
            Width = 95
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TotProd'
            Title.Caption = 'total'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VolTipo'
            Title.Caption = 'volume'
            Visible = True
          end>
      end
    end
  end
  inherited FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Left = 512
    Top = 112
  end
  inherited link: TFDPhysFBDriverLink
    Left = 614
    Top = 103
  end
  inherited FDConnec: TFDConnection
    Left = 656
    Top = 103
  end
  inherited FDTransac: TFDTransaction
    Left = 456
    Top = 80
  end
  object mtDoc: TFDMemTable [7]
    AfterInsert = mtDocAfterInsert
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 252
    Top = 65
    object mtDocmdoc_registro: TIntegerField
      FieldName = 'mdoc_registro'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object mtDocchave: TWideStringField
      FieldName = 'chave'
      Size = 44
    end
    object mtDocSegcodBarra: TWideStringField
      FieldName = 'SegcodBarra'
      Size = 36
    end
    object mtDocindReentrega: TStringField
      FieldName = 'indReentrega'
      Size = 1
    end
    object mtDocCD_GCMUN: TIntegerField
      FieldName = 'CD_GCMUN'
    end
    object mtDocNM_MUN_2017: TWideStringField
      FieldName = 'NM_MUN_2017'
      Size = 150
    end
    object mtDocnm_uf: TWideStringField
      FieldName = 'nm_uf'
      Size = 2
    end
  end
  object dsDoc: TDataSource [8]
    DataSet = mtDoc
    Left = 220
    Top = 66
  end
  object dsPeri: TDataSource [9]
    DataSet = mtPeri
    Left = 500
    Top = 290
  end
  object mtPeri: TFDMemTable [10]
    AfterInsert = mtPeriAfterInsert
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 468
    Top = 290
    object mtPerinONU: TWideStringField
      FieldName = 'nONU'
      Size = 4
    end
    object mtPeriNomeAE: TWideStringField
      FieldName = 'NomeAE'
      Size = 150
    end
    object mtPeriClaRisco: TWideStringField
      FieldName = 'ClaRisco'
      Size = 40
    end
    object mtPerigrEmb: TWideStringField
      FieldName = 'grEmb'
      Size = 6
    end
    object mtPeriTotProd: TFMTBCDField
      FieldName = 'TotProd'
      DisplayFormat = '0.####'
      Precision = 16
      Size = 4
    end
    object mtPeriVolTipo: TFMTBCDField
      FieldName = 'VolTipo'
      DisplayFormat = '0.####'
      Precision = 18
      Size = 4
    end
    object mtPerimdoc_registro: TIntegerField
      FieldName = 'mdoc_registro'
    end
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 744
    Top = 64
  end
  object mtLacre: TFDMemTable
    AfterInsert = mtLacreAfterInsert
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 152
    Top = 392
    object mtLacrelacre: TWideStringField
      FieldName = 'lacre'
    end
    object mtLacreutc_registro: TIntegerField
      FieldName = 'utc_registro'
    end
    object mtLacremdoc_registro: TIntegerField
      FieldName = 'mdoc_registro'
    end
  end
  object mtUnidade: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 152
    Top = 344
    object mtUnidadeutc_registro: TIntegerField
      FieldName = 'utc_registro'
    end
    object mtUnidadetipo: TIntegerField
      FieldName = 'tipo'
      OnGetText = mtUnidadetipoGetText
      OnSetText = mtUnidadetipoSetText
    end
    object mtUnidadeidUnidTransp: TWideStringField
      FieldName = 'idUnidTransp'
    end
    object mtUnidadeqtdeRateada: TFMTBCDField
      FieldName = 'qtdeRateada'
      Precision = 18
      Size = 4
    end
    object mtUnidademdoc_registro: TIntegerField
      FieldName = 'mdoc_registro'
    end
  end
  object dsUnidade: TDataSource
    DataSet = mtUnidade
    Left = 208
    Top = 352
  end
  object dsLacre: TDataSource
    DataSet = mtLacre
    Left = 208
    Top = 408
  end
end
