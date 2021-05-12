inherited FrmUnidTransp: TFrmUnidTransp
  Caption = 'Unidades de transporte '
  ClientWidth = 641
  ExplicitWidth = 657
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel [0]
    Left = 0
    Top = 0
    Width = 641
    Height = 73
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 14
      Width = 119
      Height = 13
      Caption = 'tipo da unidade de carga'
    end
    object Label2: TLabel
      Left = 296
      Top = 14
      Width = 60
      Height = 13
      Caption = 'identifica'#231#227'o'
      FocusControl = DBEdit1
    end
    object Label3: TLabel
      Left = 8
      Top = 46
      Width = 95
      Height = 13
      Caption = 'quantidade rateada'
      FocusControl = DBEdit2
    end
    object DBComboBox1: TDBComboBox
      Left = 133
      Top = 11
      Width = 145
      Height = 21
      DataField = 'tipo'
      DataSource = dsUnidade
      Items.Strings = (
        'Rodovi'#225'rio Tra'#231#227'o'
        'Rodovi'#225'rio Reboque'
        'Navio'
        'Balsa'
        'Aeronave'
        'Vag'#227'o'
        'Outros')
      TabOrder = 0
    end
    object DBEdit1: TDBEdit
      Left = 362
      Top = 11
      Width = 264
      Height = 21
      DataField = 'idUnidTransp'
      DataSource = dsUnidade
      TabOrder = 1
    end
    object DBEdit2: TDBEdit
      Left = 133
      Top = 43
      Width = 92
      Height = 21
      DataField = 'qtdeRateada'
      DataSource = dsUnidade
      TabOrder = 2
    end
  end
  object Panel2: TPanel [1]
    Left = 0
    Top = 73
    Width = 641
    Height = 193
    Align = alClient
    TabOrder = 1
    object dbLacre: TDBGrid
      Left = 1
      Top = 1
      Width = 639
      Height = 158
      Align = alClient
      DataSource = dsLacre
      Options = [dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
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
          Width = 600
          Visible = True
        end>
    end
    object Panel3: TPanel
      Left = 1
      Top = 159
      Width = 639
      Height = 33
      Align = alBottom
      TabOrder = 1
      object Label4: TLabel
        Left = 120
        Top = 9
        Width = 37
        Height = 13
        Caption = 'n'#186' lacre'
      end
      object btnexcluirUnidade: TButton
        Left = 512
        Top = 4
        Width = 75
        Height = 25
        Caption = 'excluir'
        TabOrder = 0
        OnClick = btnexcluirUnidadeClick
      end
      object btnIncluirLacre: TButton
        Left = 436
        Top = 4
        Width = 75
        Height = 25
        Caption = 'incluir'
        TabOrder = 1
        OnClick = btnIncluirLacreClick
      end
      object edlacre: TEdit
        Left = 168
        Top = 6
        Width = 262
        Height = 21
        MaxLength = 20
        TabOrder = 2
        OnEnter = edlacreEnter
        OnExit = edlacreExit
        OnKeyPress = edlacreKeyPress
      end
    end
  end
  object Panel4: TPanel [2]
    Left = 0
    Top = 266
    Width = 641
    Height = 33
    Align = alBottom
    TabOrder = 2
    object btnConfirmarDoc: TButton
      Left = 476
      Top = 4
      Width = 75
      Height = 25
      Caption = 'confirmar'
      TabOrder = 0
      OnClick = btnConfirmarDocClick
    end
    object btnCancelarDoc: TButton
      Left = 557
      Top = 4
      Width = 75
      Height = 25
      Caption = 'cancelar'
      TabOrder = 1
      OnClick = btnCancelarDocClick
    end
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 8
    Top = 200
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
    Top = 96
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
      DisplayFormat = '0.####'
      Precision = 18
      Size = 4
    end
    object mtUnidademdoc_registro: TIntegerField
      FieldName = 'mdoc_registro'
    end
  end
  object mtLacre: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 152
    Top = 160
    object mtLacrelacre: TWideStringField
      FieldName = 'lacre'
    end
  end
  object dsUnidade: TDataSource
    DataSet = mtUnidade
    Left = 208
    Top = 96
  end
  object dsLacre: TDataSource
    DataSet = mtLacre
    Left = 200
    Top = 160
  end
end
