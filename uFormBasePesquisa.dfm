inherited FrmBasePesquisa: TFrmBasePesquisa
  Caption = 'FrmBasePesquisa'
  ClientHeight = 479
  ClientWidth = 789
  ExplicitWidth = 805
  ExplicitHeight = 518
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid [0]
    Left = 8
    Top = 200
    Width = 761
    Height = 257
    DataSource = dsresult
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'aliquota_inss'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'faixa_ini'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'faixa_final'
        Visible = True
      end>
  end
  object ComboBox1: TComboBox [1]
    Left = 536
    Top = 224
    Width = 145
    Height = 21
    TabOrder = 1
    Text = 'ComboBox1'
  end
  object Edit1: TEdit [2]
    Left = 400
    Top = 240
    Width = 121
    Height = 21
    TabOrder = 2
    Text = 'Edit1'
  end
  object ButtonedEdit1: TButtonedEdit [3]
    Left = 360
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 3
    Text = 'ButtonedEdit1'
  end
  object dsresult: TDataSource
    DataSet = fdPesquisa
    Left = 208
    Top = 264
  end
  object fdPesquisa: TFDQuery
    CachedUpdates = True
    SQL.Strings = (
      'select * from faixainss')
    Left = 336
    Top = 264
    object fdPesquisaaliquota_inss: TFloatField
      FieldName = 'aliquota_inss'
      ProviderFlags = [pfInUpdate]
    end
    object fdPesquisafaixa_ini: TFMTBCDField
      FieldName = 'faixa_ini'
      Size = 0
    end
    object fdPesquisafaixa_final: TFMTBCDField
      FieldName = 'faixa_final'
      Size = 0
    end
  end
end
