inherited FrmPesquisarMDFe: TFrmPesquisarMDFe
  Caption = 'Pesquisar MDFe'
  ClientHeight = 554
  ClientWidth = 1136
  OnShow = FormShow
  ExplicitWidth = 1152
  ExplicitHeight = 592
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel [0]
    Left = 0
    Top = 0
    Width = 1136
    Height = 121
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 13
      Width = 113
      Height = 13
      Caption = 'chave ou n'#250'mero MDFe'
    end
    object edPesquisa: TEdit
      Left = 16
      Top = 32
      Width = 337
      Height = 21
      TabOrder = 0
      OnChange = edPesquisaChange
    end
    object btnPesquisas: TButton
      Left = 360
      Top = 31
      Width = 75
      Height = 25
      Caption = ' pesquisar'
      TabOrder = 1
      OnClick = btnPesquisasClick
    end
  end
  object DBGrid1: TDBGrid [1]
    Left = 0
    Top = 121
    Width = 1136
    Height = 433
    Align = alClient
    DataSource = dsBusca
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'MDF_CHAVE'
        Title.Caption = 'Chave'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MDF_NUMERO'
        Title.Caption = 'n'#250'mero mdf'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SERIE'
        Title.Caption = 's'#233'rie'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MDF_EMISSAO'
        Title.Caption = 'emiss'#227'o'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MDF_STATUS'
        Title.Caption = 'status'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MDF_TOTAL'
        Title.Caption = 'Valor Carga'
        Visible = True
      end>
  end
  inherited FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Left = 120
    Top = 112
  end
  inherited link: TFDPhysFBDriverLink
    Left = 65534
    Top = 111
  end
  inherited FDConnec: TFDConnection
    Params.Strings = (
      'CharacterSet=UTF8'
      'Server=localhost'
      'User_Name=SYSDBA'
      'Database=C:\Users\monassakorc\Documents\Delphi_MDFe\BASE.FDB'
      'Password=masterkey'
      'DriverID=FB')
    Top = 191
  end
  inherited FDTransac: TFDTransaction
    Left = 0
    Top = 72
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 40
    Top = 104
  end
  object dsBusca: TDataSource
    DataSet = fdBusca
    Left = 152
    Top = 96
  end
  object fdBusca: TFDQuery
    Connection = FDConnec
    SQL.Strings = (
      'SELECT * FROM MANIFESTO_DOC')
    Left = 152
    Top = 176
    object fdBuscaMDF_REGISTRO: TIntegerField
      FieldName = 'MDF_REGISTRO'
      Origin = 'MDF_REGISTRO'
    end
    object fdBuscaSERIE: TWideStringField
      FieldName = 'SERIE'
      Origin = 'SERIE'
      Size = 3
    end
    object fdBuscaMDF_NUMERO: TIntegerField
      FieldName = 'MDF_NUMERO'
      Origin = 'MDF_NUMERO'
    end
    object fdBuscaMDF_EMISSAO: TSQLTimeStampField
      FieldName = 'MDF_EMISSAO'
      Origin = 'MDF_EMISSAO'
    end
    object fdBuscaMDF_INICIO_VIAGEM: TSQLTimeStampField
      FieldName = 'MDF_INICIO_VIAGEM'
      Origin = 'MDF_INICIO_VIAGEM'
    end
    object fdBuscaMDF_TIPO_EMITENTE: TIntegerField
      FieldName = 'MDF_TIPO_EMITENTE'
      Origin = 'MDF_TIPO_EMITENTE'
    end
    object fdBuscaMDF_MODALIDADE: TIntegerField
      FieldName = 'MDF_MODALIDADE'
      Origin = 'MDF_MODALIDADE'
    end
    object fdBuscaMDF_FORMA_EMISSAO: TIntegerField
      FieldName = 'MDF_FORMA_EMISSAO'
      Origin = 'MDF_FORMA_EMISSAO'
    end
    object fdBuscaMDF_UFDESCARREGAMENTO: TWideStringField
      FieldName = 'MDF_UFDESCARREGAMENTO'
      Origin = 'MDF_UFDESCARREGAMENTO'
      Size = 2
    end
    object fdBuscaMDF_RNTRC: TWideStringField
      FieldName = 'MDF_RNTRC'
      Origin = 'MDF_RNTRC'
      Size = 8
    end
    object fdBuscaMDF_CIOT: TWideStringField
      FieldName = 'MDF_CIOT'
      Origin = 'MDF_CIOT'
      Size = 12
    end
    object fdBuscaMDF_UFVEICULO: TWideStringField
      FieldName = 'MDF_UFVEICULO'
      Origin = 'MDF_UFVEICULO'
      Size = 2
    end
    object fdBuscaMDF_TIPOCARROCEIRA: TIntegerField
      FieldName = 'MDF_TIPOCARROCEIRA'
      Origin = 'MDF_TIPOCARROCEIRA'
    end
    object fdBuscaMDF_TIPORODADO: TIntegerField
      FieldName = 'MDF_TIPORODADO'
      Origin = 'MDF_TIPORODADO'
    end
    object fdBuscaMDF_PLACA: TWideStringField
      FieldName = 'MDF_PLACA'
      Origin = 'MDF_PLACA'
      Size = 7
    end
    object fdBuscaMDF_CAPACIDADEKG: TFMTBCDField
      FieldName = 'MDF_CAPACIDADEKG'
      Origin = 'MDF_CAPACIDADEKG'
      Precision = 18
      Size = 5
    end
    object fdBuscaMDF_CAPACIDADEM3: TFMTBCDField
      FieldName = 'MDF_CAPACIDADEM3'
      Origin = 'MDF_CAPACIDADEM3'
      Precision = 18
      Size = 5
    end
    object fdBuscaMDF_TARA: TBCDField
      FieldName = 'MDF_TARA'
      Origin = 'MDF_TARA'
      Precision = 18
    end
    object fdBuscaMDF_RENAVAM: TWideStringField
      FieldName = 'MDF_RENAVAM'
      Origin = 'MDF_RENAVAM'
      Size = 11
    end
    object fdBuscaMDF_TOTAL: TFMTBCDField
      FieldName = 'MDF_TOTAL'
      Origin = 'MDF_TOTAL'
      Precision = 18
      Size = 5
    end
    object fdBuscaMDF_NAO_PERTENCE: TWideStringField
      FieldName = 'MDF_NAO_PERTENCE'
      Origin = 'MDF_NAO_PERTENCE'
      Size = 1
    end
    object fdBuscaMDF_UN: TWideStringField
      FieldName = 'MDF_UN'
      Origin = 'MDF_UN'
      Size = 3
    end
    object fdBuscaMDF_PESOBRUTO: TFMTBCDField
      FieldName = 'MDF_PESOBRUTO'
      Origin = 'MDF_PESOBRUTO'
      Precision = 18
      Size = 5
    end
    object fdBuscaMDF_INFADCIIONAIS: TBlobField
      FieldName = 'MDF_INFADCIIONAIS'
      Origin = 'MDF_INFADCIIONAIS'
    end
    object fdBuscaMDF_INFCOMPLEMNETARES: TBlobField
      FieldName = 'MDF_INFCOMPLEMNETARES'
      Origin = 'MDF_INFCOMPLEMNETARES'
    end
    object fdBuscaMDF_UFCARREGAMENTO: TWideStringField
      FieldName = 'MDF_UFCARREGAMENTO'
      Origin = 'MDF_UFCARREGAMENTO'
      Size = 2
    end
    object fdBuscaMDF_CHAVE: TWideStringField
      FieldName = 'MDF_CHAVE'
      Origin = 'MDF_CHAVE'
      Size = 44
    end
    object fdBuscaMDF_PROTOCOLO: TWideStringField
      FieldName = 'MDF_PROTOCOLO'
      Origin = 'MDF_PROTOCOLO'
      Size = 15
    end
    object fdBuscaMDF_DHRECEBIMENTO: TSQLTimeStampField
      FieldName = 'MDF_DHRECEBIMENTO'
      Origin = 'MDF_DHRECEBIMENTO'
    end
    object fdBuscaMDF_STATUS: TIntegerField
      FieldName = 'MDF_STATUS'
      Origin = 'MDF_STATUS'
      OnGetText = fdBuscaMDF_STATUSGetText
    end
  end
end
