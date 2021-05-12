inherited FrmBase4: TFrmBase4
  Caption = 'CT-e'
  ClientHeight = 708
  ClientWidth = 1203
  ExplicitWidth = 1219
  ExplicitHeight = 747
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel [0]
    Left = 0
    Top = 0
    Width = 1203
    Height = 201
    Align = alTop
    Caption = 'Panel1'
    TabOrder = 0
    ExplicitWidth = 1054
    object Label1: TLabel
      Left = 18
      Top = 40
      Width = 39
      Height = 13
      Caption = 'fantasia'
      FocusControl = DBEdit2
    end
    object Label2: TLabel
      Left = 32
      Top = 13
      Width = 25
      Height = 13
      Caption = 'CNPJ'
      FocusControl = dbEdit
    end
    object Label3: TLabel
      Left = 304
      Top = 13
      Width = 64
      Height = 13
      Caption = 'Insc estadual'
      FocusControl = DBEdit3
    end
    object Label4: TLabel
      Left = 30
      Top = 67
      Width = 27
      Height = 13
      Caption = 'raz'#227'o'
      FocusControl = DBEdit4
    end
    object Label5: TLabel
      Left = 5
      Top = 94
      Width = 52
      Height = 13
      Caption = 'logradouro'
      FocusControl = DBEdit5
    end
    object Label6: TLabel
      Left = 20
      Top = 118
      Width = 37
      Height = 13
      Caption = 'N'#250'mero'
      FocusControl = DBEdit6
    end
    object Label7: TLabel
      Left = 206
      Top = 118
      Width = 63
      Height = 13
      Caption = 'complemento'
      FocusControl = DBEdit7
    end
    object Label8: TLabel
      Left = 29
      Top = 142
      Width = 28
      Height = 13
      Caption = 'bairro'
      FocusControl = DBEdit8
    end
    object Label9: TLabel
      Left = 20
      Top = 165
      Width = 40
      Height = 13
      Caption = 'telefone'
      FocusControl = DBEdit9
    end
    object Label10: TLabel
      Left = 408
      Top = 142
      Width = 19
      Height = 13
      Caption = 'CEP'
      FocusControl = DBEdit10
    end
    object Label11: TLabel
      Left = 288
      Top = 166
      Width = 24
      Height = 13
      Caption = 'email'
      FocusControl = DBEdit11
    end
    object Label30: TLabel
      Left = 918
      Top = 141
      Width = 13
      Height = 13
      Caption = 'UF'
      FocusControl = DBEdit10
    end
    object Label31: TLabel
      Left = 581
      Top = 142
      Width = 31
      Height = 13
      Caption = 'cidade'
    end
    object DBEdit2: TDBEdit
      Left = 64
      Top = 37
      Width = 977
      Height = 21
      DataField = 'fantasia'
      TabOrder = 2
    end
    object dbEdit: TDBEdit
      Left = 64
      Top = 10
      Width = 186
      Height = 21
      DataField = 'cnpj'
      TabOrder = 0
    end
    object DBEdit3: TDBEdit
      Left = 375
      Top = 10
      Width = 186
      Height = 21
      DataField = 'insc_estadual'
      TabOrder = 1
    end
    object DBEdit4: TDBEdit
      Left = 64
      Top = 64
      Width = 977
      Height = 21
      DataField = 'razao'
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 64
      Top = 91
      Width = 975
      Height = 21
      DataField = 'logradouro'
      TabOrder = 4
    end
    object DBEdit6: TDBEdit
      Left = 64
      Top = 115
      Width = 134
      Height = 21
      DataField = 'numero_ende'
      TabOrder = 5
    end
    object DBEdit7: TDBEdit
      Left = 275
      Top = 115
      Width = 400
      Height = 21
      DataField = 'complemento'
      TabOrder = 6
    end
    object DBEdit8: TDBEdit
      Left = 64
      Top = 138
      Width = 302
      Height = 21
      DataField = 'bairro'
      TabOrder = 7
    end
    object DBEdit9: TDBEdit
      Left = 64
      Top = 161
      Width = 147
      Height = 21
      DataField = 'telefone'
      TabOrder = 11
    end
    object DBEdit10: TDBEdit
      Left = 431
      Top = 139
      Width = 108
      Height = 21
      DataField = 'cep'
      TabOrder = 8
    end
    object DBEdit11: TDBEdit
      Left = 318
      Top = 161
      Width = 291
      Height = 21
      DataField = 'email'
      TabOrder = 12
    end
    object cbUF_empresa: TDBComboBox
      Left = 943
      Top = 138
      Width = 53
      Height = 21
      DataField = 'uf'
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
      TabOrder = 10
    end
    object DBEdit23: TDBEdit
      Left = 618
      Top = 138
      Width = 221
      Height = 21
      DataField = 'municipio'
      Enabled = False
      ReadOnly = True
      TabOrder = 9
    end
    object btnselecionarCidade: TButton
      Left = 845
      Top = 136
      Width = 64
      Height = 25
      Caption = 'selecionar'
      TabOrder = 13
    end
    object rgAmbiente: TDBRadioGroup
      Left = 614
      Top = 159
      Width = 185
      Height = 32
      Caption = 'ambiente'
      Columns = 2
      DataField = 'ambiente'
      Items.Strings = (
        'produ'#231#227'o'
        'homologa'#231#227'o')
      TabOrder = 14
      Values.Strings = (
        '1'
        '2')
    end
  end
  object pControle: TPanel [1]
    Left = 0
    Top = 667
    Width = 1203
    Height = 41
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 575
    ExplicitWidth = 1054
    object btncancelar: TButton
      Left = 90
      Top = 6
      Width = 75
      Height = 25
      Caption = 'fechar'
      TabOrder = 0
    end
    object btnconfirmar: TButton
      Left = 9
      Top = 6
      Width = 75
      Height = 25
      Caption = 'confirmar'
      TabOrder = 1
    end
    object btnTransmitir: TButton
      Left = 171
      Top = 6
      Width = 75
      Height = 25
      Caption = 'transmitir'
      TabOrder = 2
    end
    object btnCancelarMdfe: TButton
      Left = 551
      Top = 6
      Width = 75
      Height = 25
      Caption = 'cancelar MDF'
      TabOrder = 3
      Visible = False
    end
    object Button1: TButton
      Left = 249
      Top = 6
      Width = 75
      Height = 25
      Caption = 'GerarXML'
      TabOrder = 4
    end
    object btnPrevisualizacao: TButton
      Left = 330
      Top = 6
      Width = 101
      Height = 25
      Caption = 'Pr'#233'-visualiza'#231#227'o'
      TabOrder = 5
    end
    object btnimpressao: TButton
      Left = 437
      Top = 6
      Width = 84
      Height = 25
      Caption = '2a via'
      TabOrder = 6
    end
    object teste: TButton
      Left = 650
      Top = 6
      Width = 75
      Height = 25
      Caption = 'teste'
      TabOrder = 7
      Visible = False
    end
  end
  object PageControl1: TPageControl [2]
    Left = 0
    Top = 201
    Width = 1203
    Height = 466
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 2
    object TabSheet1: TTabSheet
      Caption = 'TabSheet1'
      object Panel2: TPanel
        Left = 16
        Top = 48
        Width = 1097
        Height = 201
        Caption = 'Panel2'
        TabOrder = 0
        object Edit1: TEdit
          Left = 3
          Top = 18
          Width = 62
          Height = 21
          ReadOnly = True
          TabOrder = 0
          Text = 'Modelo 58'
        end
        object DBEdit12: TDBEdit
          Left = 71
          Top = 18
          Width = 43
          Height = 21
          DataField = 'SERIE'
          DataSource = dsMDFe
          TabOrder = 1
        end
        object DBEdit13: TDBEdit
          Left = 120
          Top = 18
          Width = 134
          Height = 21
          DataField = 'MDF_NUMERO'
          DataSource = dsMDFe
          TabOrder = 2
        end
        object DBEdit14: TDBEdit
          Left = 258
          Top = 18
          Width = 145
          Height = 21
          DataField = 'MDF_EMISSAO'
          DataSource = dsMDFe
          TabOrder = 3
        end
        object DBComboBox5: TDBComboBox
          Left = 562
          Top = 18
          Width = 145
          Height = 21
          DataField = 'MDF_FORMA_EMISSAO'
          DataSource = dsMDFe
          Items.Strings = (
            'Normal'
            'Conting'#234'ncia')
          TabOrder = 4
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'TabSheet2'
      ImageIndex = 1
    end
    object TabSheet3: TTabSheet
      Caption = 'TabSheet3'
      ImageIndex = 2
    end
  end
  inherited FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Left = 0
    Top = 8
  end
  inherited link: TFDPhysFBDriverLink
    Left = 126
    Top = 167
  end
  inherited FDConnec: TFDConnection
    Left = 128
    Top = 127
  end
  inherited FDTransac: TFDTransaction
    Left = 8
    Top = 152
  end
  object dsMDFe: TDataSource
    Left = 680
    Top = 3
  end
  object fdMDFe: TFDQuery
    CachedUpdates = True
    Connection = FDConnec
    SQL.Strings = (
      'select * from manifesto_doc')
    Left = 629
    Top = 65533
    object fdMDFeMDF_REGISTRO: TIntegerField
      FieldName = 'MDF_REGISTRO'
      Origin = 'MDF_REGISTRO'
    end
    object fdMDFeSERIE: TWideStringField
      FieldName = 'SERIE'
      Origin = 'SERIE'
      Size = 3
    end
    object fdMDFeMDF_NUMERO: TIntegerField
      FieldName = 'MDF_NUMERO'
      Origin = 'MDF_NUMERO'
    end
    object fdMDFeMDF_EMISSAO: TSQLTimeStampField
      FieldName = 'MDF_EMISSAO'
      Origin = 'MDF_EMISSAO'
      DisplayFormat = 'dd/mm/yyyy hh:nn'
    end
    object fdMDFeMDF_INICIO_VIAGEM: TSQLTimeStampField
      DisplayLabel = #237'nicio da viagem'
      FieldName = 'MDF_INICIO_VIAGEM'
      Origin = 'MDF_INICIO_VIAGEM'
      DisplayFormat = 'dd/mm/yyyy hh:nn'
    end
    object fdMDFeMDF_TIPO_EMITENTE: TIntegerField
      FieldName = 'MDF_TIPO_EMITENTE'
      Origin = 'MDF_TIPO_EMITENTE'
    end
    object fdMDFeMDF_MODALIDADE: TIntegerField
      FieldName = 'MDF_MODALIDADE'
      Origin = 'MDF_MODALIDADE'
    end
    object fdMDFeMDF_UFCARREGAMENTO: TWideStringField
      FieldName = 'MDF_UFCARREGAMENTO'
      Origin = 'MDF_UFCARREGAMENTO'
      Size = 2
    end
    object fdMDFeMDF_FORMA_EMISSAO: TIntegerField
      FieldName = 'MDF_FORMA_EMISSAO'
      Origin = 'MDF_FORMA_EMISSAO'
    end
    object fdMDFeMDF_UFDESCARREGAMENTO: TWideStringField
      FieldName = 'MDF_UFDESCARREGAMENTO'
      Origin = 'MDF_UFDESCARREGAMENTO'
      Size = 2
    end
    object fdMDFeMDF_RNTRC: TWideStringField
      FieldName = 'MDF_RNTRC'
      Origin = 'MDF_RNTRC'
      Size = 8
    end
    object fdMDFeMDF_CIOT: TWideStringField
      FieldName = 'MDF_CIOT'
      Origin = 'MDF_CIOT'
      Size = 12
    end
    object fdMDFeMDF_UFVEICULO: TWideStringField
      FieldName = 'MDF_UFVEICULO'
      Origin = 'MDF_UFVEICULO'
      Size = 2
    end
    object fdMDFeMDF_TIPOCARROCEIRA: TIntegerField
      FieldName = 'MDF_TIPOCARROCEIRA'
      Origin = 'MDF_TIPOCARROCEIRA'
    end
    object fdMDFeMDF_TIPORODADO: TIntegerField
      FieldName = 'MDF_TIPORODADO'
      Origin = 'MDF_TIPORODADO'
    end
    object fdMDFeMDF_PLACA: TWideStringField
      FieldName = 'MDF_PLACA'
      Origin = 'MDF_PLACA'
      Size = 7
    end
    object fdMDFeMDF_CAPACIDADEKG: TFMTBCDField
      FieldName = 'MDF_CAPACIDADEKG'
      Origin = 'MDF_CAPACIDADEKG'
      Precision = 18
      Size = 5
    end
    object fdMDFeMDF_CAPACIDADEM3: TFMTBCDField
      FieldName = 'MDF_CAPACIDADEM3'
      Origin = 'MDF_CAPACIDADEM3'
      Precision = 18
      Size = 5
    end
    object fdMDFeMDF_TARA: TBCDField
      FieldName = 'MDF_TARA'
      Origin = 'MDF_TARA'
      Precision = 18
    end
    object fdMDFeMDF_RENAVAM: TWideStringField
      FieldName = 'MDF_RENAVAM'
      Origin = 'MDF_RENAVAM'
      Size = 11
    end
    object fdMDFeMDF_TOTAL: TFMTBCDField
      FieldName = 'MDF_TOTAL'
      Origin = 'MDF_TOTAL'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      currency = True
      Precision = 18
      Size = 5
    end
    object fdMDFeMDF_NAO_PERTENCE: TWideStringField
      FieldName = 'MDF_NAO_PERTENCE'
      Origin = 'MDF_NAO_PERTENCE'
      Size = 1
    end
    object fdMDFeMDF_UN: TWideStringField
      FieldName = 'MDF_UN'
      Origin = 'MDF_UN'
      Size = 3
    end
    object fdMDFeMDF_PESOBRUTO: TFMTBCDField
      FieldName = 'MDF_PESOBRUTO'
      Origin = 'MDF_PESOBRUTO'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      currency = True
      Precision = 18
      Size = 5
    end
    object fdMDFeMDF_INFADCIIONAIS: TBlobField
      FieldName = 'MDF_INFADCIIONAIS'
      Origin = 'MDF_INFADCIIONAIS'
    end
    object fdMDFeMDF_INFCOMPLEMNETARES: TBlobField
      FieldName = 'MDF_INFCOMPLEMNETARES'
      Origin = 'MDF_INFCOMPLEMNETARES'
    end
    object fdMDFeMDF_STATUS: TSmallintField
      FieldName = 'MDF_STATUS'
      ProviderFlags = [pfInUpdate]
    end
    object fdMDFemdf_chave: TWideStringField
      FieldName = 'mdf_chave'
      ProviderFlags = [pfInUpdate]
      Size = 44
    end
    object fdMDFeMDF_PROTOCOLO: TWideStringField
      FieldName = 'MDF_PROTOCOLO'
      Origin = 'MDF_PROTOCOLO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object fdMDFeMDF_DHRECEBIMENTO: TSQLTimeStampField
      FieldName = 'MDF_DHRECEBIMENTO'
      Origin = 'MDF_DHRECEBIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object fdMDFeMDF_LOTE: TIntegerField
      FieldName = 'MDF_LOTE'
      Origin = 'MDF_LOTE'
      ProviderFlags = [pfInUpdate]
    end
    object fdMDFeMDF_ERROS: TWideMemoField
      FieldName = 'MDF_ERROS'
      Origin = 'MDF_ERROS'
      ProviderFlags = [pfInUpdate]
      BlobType = ftWideMemo
    end
    object fdMDFeMDF_RECEBIMENTO: TWideStringField
      FieldName = 'MDF_RECEBIMENTO'
      Origin = 'MDF_RECEBIMENTO'
      Size = 15
    end
    object fdMDFeMDF_CNPJSEGURADORA: TWideStringField
      FieldName = 'MDF_CNPJSEGURADORA'
      Origin = 'MDF_CNPJSEGURADORA'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object fdMDFeMDF_NOMESEGURADORA: TWideStringField
      FieldName = 'MDF_NOMESEGURADORA'
      Origin = 'MDF_NOMESEGURADORA'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object fdMDFeMDF_CPFRESP: TWideStringField
      FieldName = 'MDF_CPFRESP'
      Origin = 'MDF_CPFRESP'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object fdMDFeMDF_CNPJRESP: TWideStringField
      FieldName = 'MDF_CNPJRESP'
      Origin = 'MDF_CNPJRESP'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object fdMDFeMDF_RESPSEG: TIntegerField
      FieldName = 'MDF_RESPSEG'
      Origin = 'MDF_RESPSEG'
      ProviderFlags = [pfInUpdate]
    end
    object fdMDFeMDF_NAPOLICE: TWideStringField
      FieldName = 'MDF_NAPOLICE'
      Origin = 'MDF_NAPOLICE'
    end
    object fdMDFeMDF_XML: TWideMemoField
      FieldName = 'MDF_XML'
      Origin = 'MDF_XML'
      BlobType = ftWideMemo
    end
  end
end
