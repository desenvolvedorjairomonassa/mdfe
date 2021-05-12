inherited frmMunicicios: TfrmMunicicios
  Caption = 'Cidades'
  ClientWidth = 600
  OnShow = FormShow
  ExplicitWidth = 616
  PixelsPerInch = 96
  TextHeight = 13
  object uf: TLabel [0]
    Left = 8
    Top = 11
    Width = 13
    Height = 13
    Caption = 'UF'
  end
  object DBcidade: TDBGrid [1]
    Left = 8
    Top = 35
    Width = 584
    Height = 222
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DSCIDADE
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'NM_UF'
        Title.Caption = 'estados'
        Width = 125
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NM_MUN_2017'
        Title.Caption = 'municipios'
        Width = 331
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CD_GCMUN'
        Title.Caption = 'IBGE'
        Visible = True
      end>
  end
  object EdMunicipio: TEdit [2]
    Left = 88
    Top = 8
    Width = 504
    Height = 21
    TabOrder = 1
    OnChange = EdMunicipioChange
  end
  object cbUF: TComboBox [3]
    Left = 27
    Top = 8
    Width = 55
    Height = 21
    TabOrder = 2
    OnChange = cbUFChange
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
  end
  object Panel1: TPanel [4]
    Left = 0
    Top = 258
    Width = 600
    Height = 41
    Align = alBottom
    TabOrder = 3
    object btnOk: TButton
      Left = 407
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Adicionar'
      ModalResult = 1
      TabOrder = 0
      OnClick = btnOkClick
    end
    object btnCancelar: TButton
      Left = 488
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      ModalResult = 2
      TabOrder = 1
      OnClick = btnCancelarClick
    end
  end
  inherited FDConnec: TFDConnection
    Params.Strings = (
      'CharacterSet=UTF8'
      'Server=localhost'
      'User_Name=SYSDBA'
      'Database=C:\Users\monassakorc\Documents\Delphi_MDFe\BASE.FDB'
      'Password=masterkey'
      'DriverID=FB')
  end
  object fdcidade: TFDQuery [9]
    Connection = FDConnec
    SQL.Strings = (
      'select * from cidades')
    Left = 104
    Top = 240
    object fdcidadeID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
    end
    object fdcidadeCD_GCUF: TIntegerField
      FieldName = 'CD_GCUF'
      Origin = 'CD_GCUF'
    end
    object fdcidadeNM_UF: TWideStringField
      FieldName = 'NM_UF'
      Origin = 'NM_UF'
      Size = 100
    end
    object fdcidadeNM_UF_SIGLA: TWideStringField
      FieldName = 'NM_UF_SIGLA'
      Origin = 'NM_UF_SIGLA'
      Size = 2
    end
    object fdcidadeCD_GCMUN: TIntegerField
      FieldName = 'CD_GCMUN'
      Origin = 'CD_GCMUN'
    end
    object fdcidadeNM_MUN_2017: TWideStringField
      FieldName = 'NM_MUN_2017'
      Origin = 'NM_MUN_2017'
      Size = 150
    end
  end
  object DSCIDADE: TDataSource [10]
    DataSet = fdcidade
    Left = 144
    Top = 96
  end
end
