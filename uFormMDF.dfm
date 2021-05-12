inherited FrmMDF: TFrmMDF
  Caption = 'MDF-e'
  ClientHeight = 616
  ClientWidth = 1054
  OnShow = FormShow
  ExplicitWidth = 1070
  ExplicitHeight = 655
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel [0]
    Left = 0
    Top = 0
    Width = 1054
    Height = 201
    Align = alTop
    Caption = 'Panel1'
    TabOrder = 0
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
      DataSource = dsempresa
      TabOrder = 2
    end
    object dbEdit: TDBEdit
      Left = 64
      Top = 10
      Width = 186
      Height = 21
      DataField = 'cnpj'
      DataSource = dsempresa
      TabOrder = 0
    end
    object DBEdit3: TDBEdit
      Left = 375
      Top = 10
      Width = 186
      Height = 21
      DataField = 'insc_estadual'
      DataSource = dsempresa
      TabOrder = 1
    end
    object DBEdit4: TDBEdit
      Left = 64
      Top = 64
      Width = 977
      Height = 21
      DataField = 'razao'
      DataSource = dsempresa
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 64
      Top = 91
      Width = 975
      Height = 21
      DataField = 'logradouro'
      DataSource = dsempresa
      TabOrder = 4
    end
    object DBEdit6: TDBEdit
      Left = 64
      Top = 115
      Width = 134
      Height = 21
      DataField = 'numero_ende'
      DataSource = dsempresa
      TabOrder = 5
    end
    object DBEdit7: TDBEdit
      Left = 275
      Top = 115
      Width = 400
      Height = 21
      DataField = 'complemento'
      DataSource = dsempresa
      TabOrder = 6
    end
    object DBEdit8: TDBEdit
      Left = 64
      Top = 138
      Width = 302
      Height = 21
      DataField = 'bairro'
      DataSource = dsempresa
      TabOrder = 7
    end
    object DBEdit9: TDBEdit
      Left = 64
      Top = 161
      Width = 147
      Height = 21
      DataField = 'telefone'
      DataSource = dsempresa
      TabOrder = 11
    end
    object DBEdit10: TDBEdit
      Left = 431
      Top = 139
      Width = 108
      Height = 21
      DataField = 'cep'
      DataSource = dsempresa
      TabOrder = 8
    end
    object DBEdit11: TDBEdit
      Left = 318
      Top = 161
      Width = 291
      Height = 21
      DataField = 'email'
      DataSource = dsempresa
      TabOrder = 12
    end
    object cbUF_empresa: TDBComboBox
      Left = 943
      Top = 138
      Width = 53
      Height = 21
      DataField = 'uf'
      DataSource = dsempresa
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
      DataSource = dsempresa
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
      OnClick = btnselecionarCidadeClick
    end
    object rgAmbiente: TDBRadioGroup
      Left = 614
      Top = 159
      Width = 185
      Height = 32
      Caption = 'ambiente'
      Columns = 2
      DataField = 'ambiente'
      DataSource = dsempresa
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
    Top = 575
    Width = 1054
    Height = 41
    Align = alBottom
    TabOrder = 1
    object btncancelar: TButton
      Left = 90
      Top = 6
      Width = 75
      Height = 25
      Caption = 'fechar'
      TabOrder = 0
      OnClick = btn
    end
    object btnconfirmar: TButton
      Left = 9
      Top = 6
      Width = 75
      Height = 25
      Caption = 'confirmar'
      TabOrder = 1
      OnClick = btnconfirmarClick
    end
    object btnTransmitir: TButton
      Left = 171
      Top = 6
      Width = 75
      Height = 25
      Caption = 'transmitir'
      TabOrder = 2
      OnClick = btnTransmitirClick
    end
    object btnCancelarMdfe: TButton
      Left = 551
      Top = 6
      Width = 75
      Height = 25
      Caption = 'cancelar MDF'
      TabOrder = 3
      Visible = False
      OnClick = btnconfirmarClick
    end
    object Button1: TButton
      Left = 249
      Top = 6
      Width = 75
      Height = 25
      Caption = 'GerarXML'
      TabOrder = 4
      OnClick = Button1Click
    end
    object btnPrevisualizacao: TButton
      Left = 330
      Top = 6
      Width = 101
      Height = 25
      Caption = 'Pr'#233'-visualiza'#231#227'o'
      TabOrder = 5
      OnClick = btnPrevisualizacaoClick
    end
    object btnimpressao: TButton
      Left = 437
      Top = 6
      Width = 84
      Height = 25
      Caption = '2a via'
      TabOrder = 6
      OnClick = btnimpressaoClick
    end
    object teste: TButton
      Left = 650
      Top = 6
      Width = 75
      Height = 25
      Caption = 'teste'
      TabOrder = 7
      OnClick = testeClick
    end
  end
  object Panel2: TPanel [2]
    Left = 0
    Top = 201
    Width = 1054
    Height = 374
    Align = alClient
    Caption = 'Panel2'
    TabOrder = 2
    object pcMDF: TPageControl
      Left = 1
      Top = 1
      Width = 1052
      Height = 372
      ActivePage = tsDados
      Align = alClient
      TabOrder = 0
      object tsDados: TTabSheet
        Caption = 'principal'
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object Label12: TLabel
          Left = 72
          Top = 0
          Width = 24
          Height = 13
          Caption = 'S'#233'rie'
          FocusControl = DBEdit12
        end
        object Label13: TLabel
          Left = 120
          Top = 0
          Width = 37
          Height = 13
          Caption = 'N'#250'mero'
          FocusControl = DBEdit13
        end
        object Label14: TLabel
          Left = 258
          Top = 0
          Width = 38
          Height = 13
          Caption = 'Emiss'#227'o'
          FocusControl = DBEdit14
        end
        object Label15: TLabel
          Left = 409
          Top = 0
          Width = 75
          Height = 13
          Caption = 'in'#237'cio de viagem'
          FocusControl = DBEdit15
        end
        object Label16: TLabel
          Left = 313
          Top = 48
          Width = 54
          Height = 13
          Caption = 'Modalidade'
        end
        object uf: TLabel
          Left = 3
          Top = 48
          Width = 54
          Height = 13
          Caption = 'UF emiss'#227'o'
        end
        object Label17: TLabel
          Left = 72
          Top = 48
          Width = 74
          Height = 13
          Caption = 'Tipo de emissor'
        end
        object Label18: TLabel
          Left = 522
          Top = 48
          Width = 100
          Height = 13
          Caption = 'UF descarregamento'
        end
        object Label19: TLabel
          Left = 562
          Top = 1
          Width = 71
          Height = 13
          Caption = 'Forma Emiss'#227'o'
        end
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
        object DBEdit15: TDBEdit
          Left = 409
          Top = 18
          Width = 147
          Height = 21
          DataField = 'MDF_INICIO_VIAGEM'
          DataSource = dsMDFe
          TabOrder = 4
        end
        object DBComboBox1: TDBComboBox
          Left = 313
          Top = 67
          Width = 190
          Height = 21
          DataField = 'MDF_MODALIDADE'
          DataSource = dsMDFe
          Items.Strings = (
            'Rodovi'#225'rio'
            'A'#233'reo '
            'Aquavi'#225'rio'
            'Ferrovi'#225'rio')
          TabOrder = 8
        end
        object cbUFEmissao: TDBComboBox
          Left = 3
          Top = 67
          Width = 53
          Height = 21
          DataField = 'MDF_UFCARREGAMENTO'
          DataSource = dsMDFe
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
          TabOrder = 6
        end
        object cbUFdescarga: TDBComboBox
          Left = 522
          Top = 67
          Width = 53
          Height = 21
          DataField = 'MDF_UFDESCARREGAMENTO'
          DataSource = dsMDFe
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
          TabOrder = 9
        end
        object DBComboBox4: TDBComboBox
          Left = 72
          Top = 67
          Width = 235
          Height = 21
          DataField = 'MDF_TIPO_EMITENTE'
          DataSource = dsMDFe
          Items.Strings = (
            'Prestador de servi'#231'o de transporte'
            'Transportador de Carga Pr'#243'pria')
          TabOrder = 7
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
          TabOrder = 5
        end
        object gbLocalCarrega: TGroupBox
          Left = 3
          Top = 94
          Width = 687
          Height = 247
          Caption = 'Local de carregamento'
          TabOrder = 10
          object Panel5: TPanel
            Left = 2
            Top = 216
            Width = 683
            Height = 29
            Align = alBottom
            TabOrder = 0
            object Button2: TButton
              Left = 600
              Top = 2
              Width = 75
              Height = 25
              Caption = 'excluir'
              TabOrder = 0
              OnClick = Button2Click
            end
            object btnAdLocal: TButton
              Left = 519
              Top = 2
              Width = 75
              Height = 25
              Caption = 'adicionar'
              TabOrder = 1
              OnClick = btnAdLocalClick
            end
          end
          object dblocalcarga: TDBGrid
            Left = 2
            Top = 15
            Width = 683
            Height = 201
            Align = alClient
            DataSource = mun_carga
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
            ReadOnly = True
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'nm_uf'
                Title.Caption = 'estado'
                Width = 142
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NM_MUN_2017'
                Title.Caption = 'munic'#237'pio'
                Width = 298
                Visible = True
              end>
          end
        end
        object GroupBox2: TGroupBox
          Left = 696
          Top = 94
          Width = 257
          Height = 247
          Caption = 'UF percurso'
          TabOrder = 11
          object Panel6: TPanel
            Left = 2
            Top = 216
            Width = 253
            Height = 29
            Align = alBottom
            TabOrder = 0
            object btnExcluir: TButton
              Left = 160
              Top = 2
              Width = 75
              Height = 25
              Caption = 'excluir'
              TabOrder = 0
              OnClick = btnExcluirClick
            end
            object btnAdUFPercursor: TButton
              Left = 79
              Top = 2
              Width = 75
              Height = 25
              Caption = 'adicionar'
              TabOrder = 1
              OnClick = btnAdUFPercursorClick
            end
            object cbUF: TComboBox
              Left = 8
              Top = 4
              Width = 65
              Height = 21
              TabOrder = 2
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
          end
          object DBGrid2: TDBGrid
            Left = 2
            Top = 15
            Width = 253
            Height = 201
            Align = alClient
            DataSource = dsUFPercurso
            Options = [dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            ReadOnly = True
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'MDF_UF_PERCURSO'
                Width = 50
                Visible = True
              end>
          end
        end
      end
      object tsRodoviario: TTabSheet
        Caption = 'rodovi'#225'rio'
        ImageIndex = 1
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object PageControl2: TPageControl
          Left = 0
          Top = 0
          Width = 1044
          Height = 344
          ActivePage = TabSheet1
          Align = alClient
          TabOrder = 0
          object TabSheet1: TTabSheet
            Caption = 've'#237'culo de tra'#231#227'o'
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            DesignSize = (
              1036
              316)
            object Label20: TLabel
              Left = 16
              Top = 8
              Width = 34
              Height = 13
              Caption = 'RNTRC'
              FocusControl = DBEdit16
            end
            object Label21: TLabel
              Left = 166
              Top = 8
              Width = 25
              Height = 13
              Caption = 'CIOT'
              FocusControl = DBEdit17
            end
            object DBEdit16: TDBEdit
              Left = 52
              Top = 5
              Width = 108
              Height = 21
              DataField = 'MDF_RNTRC'
              DataSource = dsMDFe
              TabOrder = 0
            end
            object DBEdit17: TDBEdit
              Left = 197
              Top = 5
              Width = 160
              Height = 21
              DataField = 'MDF_CIOT'
              DataSource = dsMDFe
              TabOrder = 1
            end
            object GroupBox3: TGroupBox
              Left = 3
              Top = 32
              Width = 1025
              Height = 86
              Anchors = [akLeft, akTop, akRight]
              Caption = 've'#237'culo de tra'#231#227'o'
              TabOrder = 2
              DesignSize = (
                1025
                86)
              object Label23: TLabel
                Left = 95
                Top = 29
                Width = 69
                Height = 13
                Caption = 'tipo carroceria'
              end
              object Label24: TLabel
                Left = 323
                Top = 29
                Width = 25
                Height = 13
                Caption = 'placa'
                FocusControl = DBEdit18
              end
              object Label25: TLabel
                Left = 469
                Top = 32
                Width = 42
                Height = 13
                Caption = 'tara (kg)'
                FocusControl = DBEdit19
              end
              object Label26: TLabel
                Left = 631
                Top = 33
                Width = 48
                Height = 13
                Caption = 'RENAVAM'
                FocusControl = DBEdit20
              end
              object Label27: TLabel
                Left = 94
                Top = 56
                Width = 70
                Height = 13
                Caption = 'tipo de rodado'
              end
              object Label22: TLabel
                Left = 12
                Top = 26
                Width = 13
                Height = 13
                Anchors = []
                Caption = 'UF'
              end
              object Label28: TLabel
                Left = 321
                Top = 56
                Width = 77
                Height = 13
                Caption = 'capacidade (Kg)'
                FocusControl = DBEdit21
              end
              object Label29: TLabel
                Left = 506
                Top = 58
                Width = 79
                Height = 13
                Caption = 'capacidade (M3)'
                FocusControl = DBEdit22
              end
              object DBComboBox7: TDBComboBox
                Left = 170
                Top = 26
                Width = 145
                Height = 21
                DataField = 'MDF_TIPOCARROCEIRA'
                DataSource = dsMDFe
                Items.Strings = (
                  'N'#227'o aplic'#225'vel'
                  'Aberta'
                  'Fechada/Ba'#250
                  'Granelera'
                  'Porta Container'
                  'Sider')
                TabOrder = 0
              end
              object DBEdit18: TDBEdit
                Left = 354
                Top = 27
                Width = 95
                Height = 21
                DataField = 'MDF_PLACA'
                DataSource = dsMDFe
                TabOrder = 1
              end
              object DBEdit19: TDBEdit
                Left = 517
                Top = 29
                Width = 95
                Height = 21
                DataField = 'MDF_TARA'
                DataSource = dsMDFe
                TabOrder = 2
              end
              object DBEdit20: TDBEdit
                Left = 685
                Top = 29
                Width = 147
                Height = 21
                DataField = 'MDF_RENAVAM'
                DataSource = dsMDFe
                TabOrder = 3
              end
              object DBComboBox8: TDBComboBox
                Left = 170
                Top = 53
                Width = 145
                Height = 21
                DataField = 'MDF_TIPORODADO'
                DataSource = dsMDFe
                Items.Strings = (
                  'Truck'
                  'Toco'
                  'Cavalo Mec'#226'nico'
                  'VAN'
                  'Utilit'#225'rio'
                  'Outros')
                TabOrder = 4
              end
              object DBComboBox6: TDBComboBox
                Left = 29
                Top = 24
                Width = 50
                Height = 21
                Anchors = []
                DataField = 'MDF_UFVEICULO'
                DataSource = dsMDFe
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
                TabOrder = 5
              end
              object DBEdit21: TDBEdit
                Left = 404
                Top = 53
                Width = 88
                Height = 21
                DataField = 'MDF_CAPACIDADEKG'
                DataSource = dsMDFe
                TabOrder = 6
              end
              object DBEdit22: TDBEdit
                Left = 591
                Top = 56
                Width = 98
                Height = 21
                DataField = 'MDF_CAPACIDADEM3'
                DataSource = dsMDFe
                TabOrder = 7
              end
            end
            object GroupBox4: TGroupBox
              Left = 0
              Top = 124
              Width = 481
              Height = 189
              Caption = 'Condutores'
              TabOrder = 3
              object DBGrid1: TDBGrid
                Left = 2
                Top = 15
                Width = 477
                Height = 131
                Align = alClient
                DataSource = dscondutores
                Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
                ReadOnly = True
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'Tahoma'
                TitleFont.Style = []
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'MCO_CPF'
                    Title.Caption = 'CPF'
                    Width = 92
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'MCO_NOME'
                    Title.Caption = 'Nome'
                    Visible = True
                  end>
              end
              object Panel4: TPanel
                Left = 2
                Top = 146
                Width = 477
                Height = 41
                Align = alBottom
                TabOrder = 1
                DesignSize = (
                  477
                  41)
                object btnAlterCondutor: TButton
                  Left = 305
                  Top = 6
                  Width = 75
                  Height = 25
                  Anchors = [akTop, akRight]
                  Caption = 'Alterar'
                  TabOrder = 0
                  OnClick = btnAlterCondutorClick
                end
                object btnExcluirCondutor: TButton
                  Left = 386
                  Top = 6
                  Width = 75
                  Height = 25
                  Anchors = [akTop, akRight]
                  Caption = 'Excluir'
                  TabOrder = 1
                  OnClick = btnExcluirCondutorClick
                end
                object btnIncCondutor: TButton
                  Left = 224
                  Top = 6
                  Width = 75
                  Height = 25
                  Anchors = [akTop, akRight]
                  Caption = 'Incluir'
                  TabOrder = 2
                  OnClick = btnIncCondutorClick
                end
              end
            end
          end
        end
      end
      object tsAquaviario: TTabSheet
        Caption = 'Aquavi'#225'rio'
        ImageIndex = 2
        TabVisible = False
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
      end
      object tsInfDoc: TTabSheet
        Caption = 'Informa'#231#245'es dos documentos'
        ImageIndex = 3
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object PageControl3: TPageControl
          Left = 0
          Top = 0
          Width = 1044
          Height = 344
          ActivePage = TabSheet6
          Align = alClient
          TabOrder = 0
          object tsmunicipios_descarga: TTabSheet
            Caption = 'resumo dos munic'#237'pios descarregamento'
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object Panel7: TPanel
              Left = 0
              Top = 283
              Width = 1036
              Height = 33
              Align = alBottom
              TabOrder = 0
              object btnAdMuniDescarga: TButton
                Left = 874
                Top = 5
                Width = 75
                Height = 25
                Caption = 'adicionar'
                TabOrder = 0
                Visible = False
                OnClick = btnAdMuniDescargaClick
              end
              object btnExcluirDecarga: TButton
                Left = 955
                Top = 5
                Width = 75
                Height = 25
                Caption = 'excluir'
                TabOrder = 1
                Visible = False
                OnClick = btnExcluirDecargaClick
              end
            end
            object DBGrid3: TDBGrid
              Left = 0
              Top = 0
              Width = 1036
              Height = 283
              Align = alClient
              DataSource = dsCidadedescarga
              Options = [dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
              ReadOnly = True
              TabOrder = 1
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              Columns = <
                item
                  Expanded = False
                  FieldName = 'NM_MUN_2017'
                  Visible = True
                end>
            end
          end
          object tsCTE: TTabSheet
            Caption = 'conhecimento de transporte - CTe'
            ImageIndex = 1
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object Panel8: TPanel
              Left = 0
              Top = 286
              Width = 1036
              Height = 30
              Align = alBottom
              TabOrder = 0
              object Button4: TButton
                Left = 791
                Top = 2
                Width = 75
                Height = 25
                Caption = 'alterar'
                TabOrder = 0
                Visible = False
                OnClick = Button4Click
              end
              object Button5: TButton
                Left = 953
                Top = 2
                Width = 75
                Height = 25
                Caption = 'excluir'
                TabOrder = 1
                OnClick = Button5Click
              end
              object btnincCte: TButton
                Left = 874
                Top = 2
                Width = 75
                Height = 25
                Caption = 'incluir'
                TabOrder = 2
                OnClick = btnincCteClick
              end
            end
            object DBGrid4: TDBGrid
              Left = 0
              Top = 0
              Width = 1036
              Height = 286
              Align = alClient
              DataSource = dsCte
              TabOrder = 1
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              Columns = <
                item
                  Expanded = False
                  FieldName = 'CHAVE'
                  Title.Caption = 'chave cte'
                  Width = 381
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'SEGCODBARRA'
                  Title.Caption = 'codigo de barra'
                  Width = 261
                  Visible = True
                end>
            end
          end
          object TabSheet6: TTabSheet
            Caption = 'nota fiscal  - NFe'
            ImageIndex = 2
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object Panel11: TPanel
              Left = 0
              Top = 286
              Width = 1036
              Height = 30
              Align = alBottom
              TabOrder = 0
              object Button3: TButton
                Left = 792
                Top = 2
                Width = 75
                Height = 25
                Caption = 'alterar'
                TabOrder = 0
                Visible = False
                OnClick = Button4Click
              end
              object Button6: TButton
                Left = 953
                Top = 2
                Width = 75
                Height = 25
                Caption = 'excluir'
                TabOrder = 1
                OnClick = Button6Click
              end
              object btnNfe: TButton
                Left = 874
                Top = 2
                Width = 75
                Height = 25
                Caption = 'incluir'
                TabOrder = 2
                OnClick = btnNfeClick
              end
            end
            object DBGrid8: TDBGrid
              Left = 0
              Top = 0
              Width = 1036
              Height = 286
              Align = alClient
              DataSource = dsDocNfe
              TabOrder = 1
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              Columns = <
                item
                  Expanded = False
                  FieldName = 'CHAVE'
                  Title.Caption = 'chave cte'
                  Width = 410
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'SEGCODBARRA'
                  Title.Caption = 'codigo de barra'
                  Visible = True
                end>
            end
          end
        end
      end
      object tstotalizadores: TTabSheet
        Caption = 'totalizadores'
        ImageIndex = 4
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object Label32: TLabel
          Left = 11
          Top = 111
          Width = 248
          Height = 13
          Caption = 'Peso bruto total da carga/ mercadoria transportada'
          FocusControl = DBEdit24
        end
        object Label33: TLabel
          Left = 9
          Top = 60
          Width = 217
          Height = 13
          Caption = 'Valor total da mercadoria/carga transportada'
          FocusControl = DBEdit25
        end
        object Label34: TLabel
          Left = 9
          Top = 8
          Width = 246
          Height = 13
          Caption = 'Quantidade total de CTe relacionados ao manifesto'
        end
        object Label35: TLabel
          Left = 9
          Top = 36
          Width = 221
          Height = 13
          Caption = 'Quantidade de NFe relacionados ao manifesto'
        end
        object Label36: TLabel
          Left = 11
          Top = 80
          Width = 329
          Height = 13
          Caption = 'Unidade de medida do peso bruto da carga/mercadoria transportada'
          WordWrap = True
        end
        object DBEdit24: TDBEdit
          Left = 381
          Top = 108
          Width = 121
          Height = 21
          DataField = 'MDF_PESOBRUTO'
          DataSource = dsMDFe
          TabOrder = 2
        end
        object DBEdit25: TDBEdit
          Left = 381
          Top = 57
          Width = 121
          Height = 21
          DataField = 'MDF_TOTAL'
          DataSource = dsMDFe
          TabOrder = 3
        end
        object DBEdit26: TDBEdit
          Left = 381
          Top = 8
          Width = 121
          Height = 21
          DataField = 'qtde'
          DataSource = dsCte
          ReadOnly = True
          TabOrder = 0
        end
        object cbUnidade: TDBComboBox
          Left = 381
          Top = 83
          Width = 121
          Height = 21
          DataField = 'MDF_UN'
          DataSource = dsMDFe
          Items.Strings = (
            'M3'
            'KG'
            'TON'
            'UN'
            'LT')
          TabOrder = 4
        end
        object DBEdit27: TDBEdit
          Left = 381
          Top = 32
          Width = 121
          Height = 21
          DataField = 'qtde'
          DataSource = dsDocNfe
          ReadOnly = True
          TabOrder = 1
        end
        object GroupBox1: TGroupBox
          Left = 11
          Top = 130
          Width = 493
          Height = 211
          Caption = ' lacres'
          TabOrder = 5
          object Panel9: TPanel
            Left = 2
            Top = 176
            Width = 489
            Height = 33
            Align = alBottom
            TabOrder = 0
            object Label37: TLabel
              Left = 65
              Top = 9
              Width = 37
              Height = 13
              Caption = 'n'#186' lacre'
            end
            object btnexcluirUnidade: TButton
              Left = 399
              Top = 4
              Width = 75
              Height = 25
              Caption = 'excluir'
              TabOrder = 2
              OnClick = btnexcluirUnidadeClick
            end
            object btnIncluirLacre: TButton
              Left = 323
              Top = 4
              Width = 75
              Height = 25
              Caption = 'incluir'
              TabOrder = 1
              OnClick = btnIncluirLacreClick
            end
            object edlacre: TEdit
              Left = 113
              Top = 6
              Width = 202
              Height = 21
              MaxLength = 20
              TabOrder = 0
              OnEnter = edlacreEnter
              OnExit = edlacreExit
              OnKeyPress = edlacreKeyPress
            end
          end
          object dbLacre: TDBGrid
            Left = 2
            Top = 15
            Width = 489
            Height = 161
            Align = alClient
            DataSource = dsLacres
            Options = [dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'LAC_LACRE'
                Width = 450
                Visible = True
              end>
          end
        end
        object GroupBox5: TGroupBox
          Left = 510
          Top = 5
          Width = 531
          Height = 338
          Caption = 'autorizados para Download do XML do MDFe'
          TabOrder = 6
          object Panel10: TPanel
            Left = 2
            Top = 303
            Width = 527
            Height = 33
            Align = alBottom
            TabOrder = 0
            object Label38: TLabel
              Left = 120
              Top = 10
              Width = 48
              Height = 13
              Caption = 'CNPJ/CPF'
            end
            object btnIncluirDown: TButton
              Left = 365
              Top = 5
              Width = 75
              Height = 25
              Caption = 'incluir'
              TabOrder = 0
              OnClick = btnIncluirDownClick
            end
            object btnExcluirDown: TButton
              Left = 444
              Top = 6
              Width = 75
              Height = 25
              Caption = 'excluir'
              TabOrder = 1
              OnClick = btnExcluirDownClick
            end
            object eddoc_download: TEdit
              Left = 174
              Top = 7
              Width = 185
              Height = 21
              MaxLength = 20
              TabOrder = 2
              OnEnter = edlacreEnter
              OnExit = edlacreExit
              OnKeyPress = eddoc_downloadKeyPress
            end
          end
          object dbDownload: TDBGrid
            Left = 2
            Top = 15
            Width = 527
            Height = 288
            Align = alClient
            DataSource = dsDownload
            Options = [dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'MDF_CNPJCPF'
                Title.Caption = 'Documento'
                Width = 400
                Visible = True
              end>
          end
        end
      end
      object tsInfAdic: TTabSheet
        Caption = 'informa'#231#245'es adicionais'
        ImageIndex = 5
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object DBMemo1: TDBMemo
          Left = 0
          Top = 0
          Width = 1044
          Height = 344
          Align = alClient
          DataField = 'MDF_INFADCIIONAIS'
          DataSource = dsMDFe
          TabOrder = 0
        end
      end
      object tsInfCompl: TTabSheet
        Caption = 'informa'#231#245'es complementares'
        ImageIndex = 6
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object DBMemo2: TDBMemo
          Left = 0
          Top = 0
          Width = 1044
          Height = 344
          Align = alClient
          DataField = 'MDF_INFCOMPLEMNETARES'
          DataSource = dsMDFe
          TabOrder = 0
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'seguro de carga'
        ImageIndex = 8
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object Label39: TLabel
          Left = 16
          Top = 8
          Width = 117
          Height = 13
          Caption = 'respons'#225'vel pelo seguro'
        end
        object Label40: TLabel
          Left = 15
          Top = 64
          Width = 163
          Height = 13
          Caption = ' CNPJ do respons'#225'vel pelo seguro'
        end
        object Label41: TLabel
          Left = 15
          Top = 120
          Width = 154
          Height = 13
          Caption = 'CPF do respons'#225'vel pelo seguro'
        end
        object DBEdit1: TDBEdit
          Left = 15
          Top = 83
          Width = 222
          Height = 21
          DataField = 'MDF_CNPJRESP'
          DataSource = dsMDFe
          TabOrder = 1
        end
        object DBComboBox2: TDBComboBox
          Left = 15
          Top = 27
          Width = 222
          Height = 21
          DataField = 'MDF_RESPSEG'
          DataSource = dsMDFe
          Items.Strings = (
            'Emitente do MDF-e'
            
              'Respons'#225'vel pela contrata'#231#227'o do servi'#231'o de transporte (contratan' +
              'te) ')
          TabOrder = 0
        end
        object DBEdit28: TDBEdit
          Left = 16
          Top = 136
          Width = 221
          Height = 21
          DataField = 'MDF_CPFRESP'
          DataSource = dsMDFe
          TabOrder = 2
        end
        object GroupBox6: TGroupBox
          Left = 16
          Top = 176
          Width = 345
          Height = 153
          Caption = ' seguradora '
          TabOrder = 3
          object Label42: TLabel
            Left = 16
            Top = 16
            Width = 26
            Height = 13
            Caption = 'nome'
          end
          object Label43: TLabel
            Left = 16
            Top = 58
            Width = 25
            Height = 13
            Caption = 'CNPJ'
          end
          object Label44: TLabel
            Left = 16
            Top = 104
            Width = 87
            Height = 13
            Caption = 'n'#250'mero da ap'#243'lice'
          end
          object DBEdit29: TDBEdit
            Left = 16
            Top = 32
            Width = 265
            Height = 21
            DataField = 'MDF_NOMESEGURADORA'
            DataSource = dsMDFe
            TabOrder = 0
          end
          object DBEdit30: TDBEdit
            Left = 16
            Top = 77
            Width = 265
            Height = 21
            DataField = 'MDF_CNPJSEGURADORA'
            DataSource = dsMDFe
            MaxLength = 30
            TabOrder = 1
          end
          object DBEdit31: TDBEdit
            Left = 16
            Top = 121
            Width = 265
            Height = 21
            DataField = 'MDF_NAPOLICE'
            DataSource = dsMDFe
            TabOrder = 2
          end
        end
        object GroupBox7: TGroupBox
          Left = 367
          Top = 8
          Width = 450
          Height = 321
          Caption = ' averba'#231#245'es'
          TabOrder = 4
          object Panel3: TPanel
            Left = 2
            Top = 286
            Width = 446
            Height = 33
            Align = alBottom
            TabOrder = 0
            object btnExcluirAverba: TButton
              Left = 352
              Top = 4
              Width = 75
              Height = 25
              Caption = 'excluir'
              TabOrder = 0
              OnClick = btnExcluirAverbaClick
            end
            object btnIncaverba: TButton
              Left = 276
              Top = 4
              Width = 75
              Height = 25
              Caption = 'incluir'
              TabOrder = 1
              OnClick = btnIncaverbaClick
            end
            object edaverba: TEdit
              Left = 8
              Top = 6
              Width = 262
              Height = 21
              MaxLength = 40
              TabOrder = 2
              OnEnter = edaverbaEnter
              OnExit = edaverbaExit
              OnKeyPress = edaverbaKeyPress
            end
          end
          object gdAverba: TDBGrid
            Left = 2
            Top = 15
            Width = 446
            Height = 271
            Align = alClient
            DataSource = dsAverbacao
            Options = [dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
            ReadOnly = True
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'AVERBACAO'
                Width = 400
                Visible = True
              end>
          end
        end
      end
      object tsErros: TTabSheet
        Caption = 'Erros'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 7
        ParentFont = False
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object merro: TDBMemo
          Left = 0
          Top = 0
          Width = 1044
          Height = 344
          Align = alClient
          DataField = 'MDF_ERROS'
          DataSource = dsMDFe
          TabOrder = 0
        end
      end
    end
  end
  inherited FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Left = 256
    Top = 160
  end
  inherited link: TFDPhysFBDriverLink
    Left = 846
    Top = 167
  end
  object fdempresa: TFDQuery [5]
    CachedUpdates = True
    Connection = FDConnec
    SQL.Strings = (
      'select * from empresa')
    Left = 616
    object fdempresacnpj: TWideStringField
      FieldName = 'cnpj'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      OnGetText = fdempresacnpjGetText
      OnSetText = fdempresacnpjSetText
      Size = 18
    end
    object fdempresainsc_estadual: TWideStringField
      FieldName = 'insc_estadual'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object fdempresafantasia: TWideStringField
      FieldName = 'fantasia'
      ProviderFlags = [pfInUpdate]
      Size = 160
    end
    object fdempresarazao: TWideStringField
      FieldName = 'razao'
      ProviderFlags = [pfInUpdate]
      Size = 160
    end
    object fdempresalogradouro: TWideStringField
      FieldName = 'logradouro'
      ProviderFlags = [pfInUpdate]
      Size = 150
    end
    object fdempresanumero_ende: TIntegerField
      FieldName = 'numero_ende'
      ProviderFlags = [pfInUpdate]
    end
    object fdempresacomplemento: TWideStringField
      FieldName = 'complemento'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object fdempresabairro: TWideStringField
      FieldName = 'bairro'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object fdempresaemail: TWideStringField
      FieldName = 'email'
      ProviderFlags = [pfInUpdate]
      Size = 150
    end
    object fdempresauf: TWideStringField
      FieldName = 'uf'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object fdempresamunicipio: TWideStringField
      FieldName = 'municipio'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object fdempresatelefone: TWideStringField
      FieldName = 'telefone'
      ProviderFlags = [pfInUpdate]
      EditMask = '\(999\)9999\-9999;0;_'
      Size = 11
    end
    object fdempresacep: TWideStringField
      FieldName = 'cep'
      ProviderFlags = [pfInUpdate]
      EditMask = '00000-000;1;_'
      Size = 8
    end
    object fdempresaCD_GCMUN: TIntegerField
      FieldName = 'CD_GCMUN'
      Origin = 'CD_GCMUN'
      ProviderFlags = [pfInUpdate]
    end
    object fdempresaambiente: TIntegerField
      FieldName = 'ambiente'
      ProviderFlags = [pfInUpdate]
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
    Left = 792
    Top = 175
  end
  inherited FDTransac: TFDTransaction
    Left = 936
    Top = 176
  end
  object fdMDFe: TFDQuery [8]
    CachedUpdates = True
    Connection = FDConnec
    SQL.Strings = (
      'select * from manifesto_doc')
    Left = 5
    Top = 149
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
      OnGetText = fdMDFeMDF_TIPO_EMITENTEGetText
      OnSetText = fdMDFeMDF_TIPO_EMITENTESetText
    end
    object fdMDFeMDF_MODALIDADE: TIntegerField
      FieldName = 'MDF_MODALIDADE'
      Origin = 'MDF_MODALIDADE'
      OnGetText = fdMDFeMDF_MODALIDADEGetText
      OnSetText = fdMDFeMDF_MODALIDADESetText
    end
    object fdMDFeMDF_UFCARREGAMENTO: TWideStringField
      FieldName = 'MDF_UFCARREGAMENTO'
      Origin = 'MDF_UFCARREGAMENTO'
      Size = 2
    end
    object fdMDFeMDF_FORMA_EMISSAO: TIntegerField
      FieldName = 'MDF_FORMA_EMISSAO'
      Origin = 'MDF_FORMA_EMISSAO'
      OnGetText = fdMDFeMDF_FORMA_EMISSAOGetText
      OnSetText = fdMDFeMDF_FORMA_EMISSAOSetText
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
      OnGetText = fdMDFeMDF_TIPOCARROCEIRAGetText
      OnSetText = fdMDFeMDF_TIPOCARROCEIRASetText
    end
    object fdMDFeMDF_TIPORODADO: TIntegerField
      FieldName = 'MDF_TIPORODADO'
      Origin = 'MDF_TIPORODADO'
      OnGetText = fdMDFeMDF_TIPORODADOGetText
      OnSetText = fdMDFeMDF_TIPORODADOSetText
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
      OnGetText = fdMDFeMDF_CNPJSEGURADORAGetText
      OnSetText = fdMDFeMDF_CNPJSEGURADORASetText
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
      OnGetText = fdMDFeMDF_CNPJRESPGetText
      OnSetText = fdMDFeMDF_CNPJRESPSetText
      Size = 14
    end
    object fdMDFeMDF_RESPSEG: TIntegerField
      FieldName = 'MDF_RESPSEG'
      Origin = 'MDF_RESPSEG'
      ProviderFlags = [pfInUpdate]
      OnGetText = fdMDFeMDF_RESPSEGGetText
      OnSetText = fdMDFeMDF_RESPSEGSetText
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
  object dsMDFe: TDataSource [9]
    DataSet = fdMDFe
    Left = 32
    Top = 147
  end
  object dsempresa: TDataSource [10]
    DataSet = fdempresa
    Left = 648
    Top = 8
  end
  object fdCondutores: TFDQuery [11]
    CachedUpdates = True
    Connection = FDConnec
    SQL.Strings = (
      'select * from MDF_CONDUTORES')
    Left = 961
    Top = 66
    object fdCondutoresMCO_NOME: TWideStringField
      FieldName = 'MCO_NOME'
      Origin = 'MCO_NOME'
      Size = 60
    end
    object fdCondutoresMCO_CPF: TWideStringField
      FieldName = 'MCO_CPF'
      Origin = 'MCO_CPF'
      Size = 11
    end
    object fdCondutoresMDF_REGISTRO: TIntegerField
      FieldName = 'MDF_REGISTRO'
      Origin = 'MDF_REGISTRO'
    end
  end
  object dscondutores: TDataSource [12]
    DataSet = fdCondutores
    Left = 1001
    Top = 62
  end
  object ACBrValidadorCpf: TACBrValidador [13]
    IgnorarChar = './-'
    Left = 329
    Top = 422
  end
  object ACBrMDFe1: TACBrMDFe [14]
    Configuracoes.Geral.SSLLib = libWinCrypt
    Configuracoes.Geral.SSLCryptLib = cryWinCrypt
    Configuracoes.Geral.SSLHttpLib = httpWinHttp
    Configuracoes.Geral.SSLXmlSignLib = xsLibXml2
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Arquivos.OrdenacaoPath = <>
    Configuracoes.Arquivos.SepararPorAno = True
    Configuracoes.Arquivos.EmissaoPathMDFe = True
    Configuracoes.Arquivos.NormatizarMunicipios = True
    Configuracoes.WebServices.UF = 'SP'
    Configuracoes.WebServices.AguardarConsultaRet = 0
    Configuracoes.WebServices.QuebradeLinha = '|'
    Configuracoes.RespTec.IdCSRT = 0
    DAMDFE = ACBrMDFeDAMDFeRL1
    Left = 629
    Top = 330
  end
  object ACBrMDFeDAMDFeRL1: TACBrMDFeDAMDFeRL [15]
    Sistema = 'Projeto ACBr - www.projetoacbr.com.br'
    MargemInferior = 0.800000000000000000
    MargemSuperior = 0.800000000000000000
    MargemEsquerda = 0.600000000000000000
    MargemDireita = 0.510000000000000000
    CasasDecimais.Formato = tdetInteger
    CasasDecimais.qCom = 2
    CasasDecimais.vUnCom = 2
    CasasDecimais.MaskqCom = ',0.00'
    CasasDecimais.MaskvUnCom = ',0.00'
    ACBrMDFe = ACBrMDFe1
    ImprimeHoraSaida = False
    TipoDAMDFe = tiSemGeracao
    TamanhoPapel = tpA4
    Cancelada = False
    Encerrado = False
    PrintDialog = True
    Left = 429
    Top = 450
  end
  object fdmunicipios_carrega: TFDQuery [16]
    CachedUpdates = True
    Connection = FDConnec
    Left = 816
    Top = 64
    object fdmunicipios_carregaCD_GCMUN: TIntegerField
      FieldName = 'CD_GCMUN'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object fdmunicipios_carreganm_uf: TWideStringField
      FieldName = 'nm_uf'
      ProviderFlags = []
      Size = 100
    end
    object fdmunicipios_carregaNM_MUN_2017: TWideStringField
      FieldName = 'NM_MUN_2017'
      ProviderFlags = []
      Size = 150
    end
    object fdmunicipios_carregamdf_registro: TIntegerField
      FieldName = 'mdf_registro'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object mun_carga: TDataSource [17]
    DataSet = fdmunicipios_carrega
    Left = 840
    Top = 64
  end
  object fdUFpercurso: TFDQuery [18]
    CachedUpdates = True
    Connection = FDConnec
    SQL.Strings = (
      'select * from MDF_UF_PERCURSO')
    Left = 1004
    Top = 120
    object fdUFpercursoMDF_UF_PERCURSO: TWideStringField
      FieldName = 'MDF_UF_PERCURSO'
      Origin = 'MDF_UF_PERCURSO'
      Size = 2
    end
    object fdUFpercursoMDF_REGISTRO: TIntegerField
      FieldName = 'MDF_REGISTRO'
      Origin = 'MDF_REGISTRO'
    end
  end
  object dsUFPercurso: TDataSource [19]
    DataSet = fdUFpercurso
    Left = 1004
    Top = 168
  end
  object dsCidadedescarga: TDataSource [20]
    DataSet = fdcidadeDescarga
    Left = 849
    Top = 10
  end
  object fdcidadeDescarga: TFDQuery [21]
    CachedUpdates = True
    Connection = FDConnec
    SQL.Strings = (
      'select mc.*, nm_uf, nm_mun_2017 from mdf_cidades mc '
      '  join cidades ci on (ci.CD_GCMUN = mc.CD_GCMUN)')
    Left = 817
    Top = 10
    object fdcidadeDescargaCD_GCMUN: TIntegerField
      FieldName = 'CD_GCMUN'
      Origin = 'CD_GCMUN'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object fdcidadeDescargaMDF_REGISTRO: TIntegerField
      FieldName = 'MDF_REGISTRO'
      Origin = 'MDF_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object fdcidadeDescargaNM_UF: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'NM_UF'
      Origin = 'NM_UF'
      ProviderFlags = []
      Size = 100
    end
    object fdcidadeDescargaNM_MUN_2017: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'NM_MUN_2017'
      Origin = 'NM_MUN_2017'
      ProviderFlags = []
      Size = 150
    end
  end
  object fdDocCte: TFDQuery [22]
    AfterInsert = mdfAfterInsert
    CachedUpdates = True
    AggregatesActive = True
    Connection = FDConnec
    SQL.Strings = (
      'select * from mdf_cte')
    Left = 985
    Top = 242
    object fdDocCtemdoc_registro: TIntegerField
      FieldName = 'mdoc_registro'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object fdDocCteCHAVE: TWideStringField
      FieldName = 'CHAVE'
      Origin = 'CHAVE'
      Size = 44
    end
    object fdDocCteSEGCODBARRA: TWideStringField
      FieldName = 'SEGCODBARRA'
      Origin = 'SEGCODBARRA'
      Size = 36
    end
    object fdDocCteINDREENTREGA: TWideStringField
      FieldName = 'INDREENTREGA'
      Origin = 'INDREENTREGA'
      Size = 1
    end
    object fdDocCteMDF_REGISTRO: TIntegerField
      FieldName = 'MDF_REGISTRO'
      Origin = 'MDF_REGISTRO'
    end
    object fdDocCteCD_GCMUN: TIntegerField
      FieldName = 'CD_GCMUN'
      ProviderFlags = [pfInUpdate]
    end
    object fdDocCteNM_MUN_2017: TWideStringField
      FieldName = 'NM_MUN_2017'
      Size = 150
    end
    object fdDocCtenm_uf: TWideStringField
      FieldName = 'nm_uf'
      Size = 2
    end
    object fdDocCteqtde: TAggregateField
      FieldName = 'qtde'
      Active = True
      DisplayName = ''
      Expression = 'count(mdoc_registro)'
    end
  end
  object dsCte: TDataSource [23]
    DataSet = fdDocCte
    Left = 1017
    Top = 242
  end
  object fdPeriCte: TFDQuery [24]
    AfterInsert = mdfAfterInsert
    CachedUpdates = True
    Connection = FDConnec
    SQL.Strings = (
      'select * from mdfcte_peri')
    Left = 977
    Top = 298
    object fdPeriCteNONU: TWideStringField
      FieldName = 'NONU'
      Origin = 'NONU'
      Size = 4
    end
    object fdPeriCteNOMEAE: TWideStringField
      FieldName = 'NOMEAE'
      Origin = 'NOMEAE'
      Size = 150
    end
    object fdPeriCteCLARISCO: TWideStringField
      FieldName = 'CLARISCO'
      Origin = 'CLARISCO'
      Size = 40
    end
    object fdPeriCteGREMB: TWideStringField
      FieldName = 'GREMB'
      Origin = 'GREMB'
      Size = 2
    end
    object fdPeriCteTOTPROD: TBCDField
      FieldName = 'TOTPROD'
      Origin = 'TOTPROD'
      Precision = 18
    end
    object fdPeriCteVOLTIPO: TBCDField
      FieldName = 'VOLTIPO'
      Origin = 'VOLTIPO'
      Precision = 18
    end
    object fdPeriCteMDF_REGISTRO: TIntegerField
      FieldName = 'MDF_REGISTRO'
      Origin = 'MDF_REGISTRO'
    end
    object fdPeriCteMDOC_REGISTRO: TIntegerField
      FieldName = 'MDOC_REGISTRO'
      Origin = 'MDOC_REGISTRO'
    end
  end
  object dsPeriCte: TDataSource [25]
    DataSet = fdPeriCte
    Left = 1017
    Top = 298
  end
  object dsLacre: TDataSource
    Left = 88
    Top = 152
  end
  object fdLacres: TFDQuery
    AfterInsert = fdLacresAfterInsert
    CachedUpdates = True
    Connection = FDConnec
    SQL.Strings = (
      'select * from mdf_lacres')
    Left = 904
    Top = 4
    object fdLacresLAC_LACRE: TWideStringField
      FieldName = 'LAC_LACRE'
      Origin = 'LAC_LACRE'
    end
    object fdLacresMDF_REGISTRO: TIntegerField
      FieldName = 'MDF_REGISTRO'
      Origin = 'MDF_REGISTRO'
    end
  end
  object dsLacres: TDataSource
    DataSet = fdLacres
    Left = 928
    Top = 4
  end
  object fdDownload: TFDQuery
    CachedUpdates = True
    Connection = FDConnec
    SQL.Strings = (
      'select * from mdf_download')
    Left = 976
    Top = 4
    object fdDownloadMDF_CNPJCPF: TWideStringField
      FieldName = 'MDF_CNPJCPF'
      Origin = 'MDF_CNPJCPF'
      Size = 14
    end
    object fdDownloadMDF_REGISTRO: TIntegerField
      FieldName = 'MDF_REGISTRO'
      Origin = 'MDF_REGISTRO'
    end
  end
  object dsDownload: TDataSource
    DataSet = fdDownload
    Left = 1016
    Top = 4
  end
  object fdLacre_cte: TFDQuery
    AfterInsert = mdfAfterInsert
    CachedUpdates = True
    Connection = FDConnec
    SQL.Strings = (
      'select * from lacre_UnidTransp_cte')
    Left = 1009
    Top = 338
    object fdLacre_cteLACRE: TWideStringField
      FieldName = 'LACRE'
      Origin = 'LACRE'
    end
    object fdLacre_cteUTC_REGISTRO: TIntegerField
      FieldName = 'UTC_REGISTRO'
      Origin = 'UTC_REGISTRO'
    end
    object fdLacre_cteMDF_REGISTRO: TIntegerField
      FieldName = 'MDF_REGISTRO'
      Origin = 'MDF_REGISTRO'
    end
    object fdLacre_cteMDOC_REGISTRO: TIntegerField
      FieldName = 'MDOC_REGISTRO'
      Origin = 'MDOC_REGISTRO'
    end
  end
  object fdUnid_cte: TFDQuery
    AfterInsert = mdfAfterInsert
    CachedUpdates = True
    Connection = FDConnec
    SQL.Strings = (
      'select * from UnidTransp_cte')
    Left = 1009
    Top = 386
    object fdUnid_cteUTC_REGISTRO: TIntegerField
      FieldName = 'UTC_REGISTRO'
      Origin = 'UTC_REGISTRO'
    end
    object fdUnid_cteTIPO: TIntegerField
      FieldName = 'TIPO'
      Origin = 'TIPO'
    end
    object fdUnid_cteIDUNIDTRANSP: TWideStringField
      FieldName = 'IDUNIDTRANSP'
      Origin = 'IDUNIDTRANSP'
    end
    object fdUnid_cteQTDERATEADA: TBCDField
      FieldName = 'QTDERATEADA'
      Origin = 'QTDERATEADA'
      Precision = 18
    end
    object fdUnid_cteMDOC_REGISTRO: TIntegerField
      FieldName = 'MDOC_REGISTRO'
      Origin = 'MDOC_REGISTRO'
    end
    object fdUnid_cteMDF_REGISTRO: TIntegerField
      FieldName = 'MDF_REGISTRO'
      Origin = 'MDF_REGISTRO'
    end
  end
  object DataSource1: TDataSource
    DataSet = fdLacre_cte
    Left = 953
    Top = 506
  end
  object DataSource2: TDataSource
    DataSet = fdUnid_cte
    Left = 961
    Top = 554
  end
  object fdDocNfe: TFDQuery
    AfterInsert = mdfAfterInsert
    CachedUpdates = True
    AggregatesActive = True
    Connection = FDConnec
    SQL.Strings = (
      'select * from mdf_nfe')
    Left = 897
    Top = 474
    object fdDocNfeMDOC_REGISTRO: TIntegerField
      FieldName = 'MDOC_REGISTRO'
      Origin = 'MDOC_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object fdDocNfeCHAVE: TWideStringField
      FieldName = 'CHAVE'
      Origin = 'CHAVE'
      ProviderFlags = [pfInUpdate]
      Size = 44
    end
    object fdDocNfeSEGCODBARRA: TWideStringField
      FieldName = 'SEGCODBARRA'
      Origin = 'SEGCODBARRA'
      ProviderFlags = [pfInUpdate]
      Size = 36
    end
    object fdDocNfeINDREENTREGA: TWideStringField
      FieldName = 'INDREENTREGA'
      Origin = 'INDREENTREGA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object fdDocNfeMDF_REGISTRO: TIntegerField
      FieldName = 'MDF_REGISTRO'
      Origin = 'MDF_REGISTRO'
      ProviderFlags = [pfInUpdate]
    end
    object fdDocNfeCD_GCMUN: TIntegerField
      FieldName = 'CD_GCMUN'
      ProviderFlags = [pfInUpdate]
    end
    object fdDocNfeNM_MUN_2017: TWideStringField
      FieldName = 'NM_MUN_2017'
      ProviderFlags = []
      Size = 150
    end
    object fdDocNfenm_uf: TWideStringField
      FieldName = 'nm_uf'
      ProviderFlags = []
      Size = 2
    end
    object AggregateField1: TAggregateField
      FieldName = 'qtde'
      Active = True
      DisplayName = ''
      Expression = 'count(mdoc_registro)'
    end
  end
  object dsDocNfe: TDataSource
    DataSet = fdDocNfe
    Left = 929
    Top = 482
  end
  object fdPeriNfe: TFDQuery
    AfterInsert = mdfAfterInsert
    CachedUpdates = True
    Connection = FDConnec
    SQL.Strings = (
      'select * from mdfnfe_peri')
    Left = 897
    Top = 434
    object fdPeriNfeNONU: TWideStringField
      FieldName = 'NONU'
      Origin = 'NONU'
      Size = 4
    end
    object fdPeriNfeNOMEAE: TWideStringField
      FieldName = 'NOMEAE'
      Origin = 'NOMEAE'
      Size = 150
    end
    object fdPeriNfeCLARISCO: TWideStringField
      FieldName = 'CLARISCO'
      Origin = 'CLARISCO'
      Size = 40
    end
    object fdPeriNfeGREMB: TWideStringField
      FieldName = 'GREMB'
      Origin = 'GREMB'
      Size = 2
    end
    object fdPeriNfeTOTPROD: TBCDField
      FieldName = 'TOTPROD'
      Origin = 'TOTPROD'
      Precision = 18
    end
    object fdPeriNfeVOLTIPO: TBCDField
      FieldName = 'VOLTIPO'
      Origin = 'VOLTIPO'
      Precision = 18
    end
    object fdPeriNfeMDOC_REGISTRO: TIntegerField
      FieldName = 'MDOC_REGISTRO'
      Origin = 'MDOC_REGISTRO'
    end
    object fdPeriNfeMDF_REGISTRO: TIntegerField
      FieldName = 'MDF_REGISTRO'
      Origin = 'MDF_REGISTRO'
    end
  end
  object dsPeriNfe: TDataSource
    DataSet = fdPeriNfe
    Left = 929
    Top = 434
  end
  object fdLacre_nfe: TFDQuery
    AfterInsert = mdfAfterInsert
    CachedUpdates = True
    Connection = FDConnec
    SQL.Strings = (
      'select * from lacre_UnidTransp_nfe')
    Left = 897
    Top = 554
    object WideStringField1: TWideStringField
      FieldName = 'LACRE'
      Origin = 'LACRE'
    end
    object IntegerField1: TIntegerField
      FieldName = 'UTC_REGISTRO'
      Origin = 'UTC_REGISTRO'
    end
    object IntegerField2: TIntegerField
      FieldName = 'MDF_REGISTRO'
      Origin = 'MDF_REGISTRO'
    end
    object fdLacre_nfeMDOC_REGISTRO: TIntegerField
      FieldName = 'MDOC_REGISTRO'
      Origin = 'MDOC_REGISTRO'
    end
  end
  object fdUnid_nfe: TFDQuery
    AfterInsert = mdfAfterInsert
    CachedUpdates = True
    Connection = FDConnec
    SQL.Strings = (
      'select * from UnidTransp_nfe')
    Left = 897
    Top = 514
    object IntegerField5: TIntegerField
      FieldName = 'UTC_REGISTRO'
      Origin = 'UTC_REGISTRO'
    end
    object IntegerField6: TIntegerField
      FieldName = 'TIPO'
      Origin = 'TIPO'
    end
    object WideStringField2: TWideStringField
      FieldName = 'IDUNIDTRANSP'
      Origin = 'IDUNIDTRANSP'
    end
    object BCDField3: TBCDField
      FieldName = 'QTDERATEADA'
      Origin = 'QTDERATEADA'
      Precision = 18
    end
    object IntegerField7: TIntegerField
      FieldName = 'MDOC_REGISTRO'
      Origin = 'MDOC_REGISTRO'
    end
    object IntegerField8: TIntegerField
      FieldName = 'MDF_REGISTRO'
      Origin = 'MDF_REGISTRO'
    end
  end
  object fdaverbacao: TFDQuery
    AfterInsert = fdaverbacaoAfterInsert
    CachedUpdates = True
    Connection = FDConnec
    SQL.Strings = (
      'select * from mdf_averbacao')
    Left = 369
    Top = 306
    object fdaverbacaoMDF_REGISTRO: TIntegerField
      FieldName = 'MDF_REGISTRO'
      Origin = 'MDF_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object fdaverbacaoAVERBACAO: TWideStringField
      FieldName = 'AVERBACAO'
      Origin = 'AVERBACAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 40
    end
  end
  object dsAverbacao: TDataSource
    DataSet = fdaverbacao
    Left = 293
    Top = 306
  end
end
