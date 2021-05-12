object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 571
  ClientWidth = 786
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=postgres'
      'User_Name=postgres'
      'Password=postgres'
      'MetaDefSchema=folha'
      'CharacterSet=UTF8'
      'DriverID=pG'
      'MetaCurSchema=folha')
    Connected = True
    Left = 64
    Top = 32
  end
  object FDPhysPgDriverLink1: TFDPhysPgDriverLink
    VendorHome = 'C:\Users\monassakorc\Documents\delphifolha'
    Left = 184
    Top = 32
  end
  object DataSource1: TDataSource
    DataSet = FDTable1
    Left = 72
    Top = 104
  end
  object FDTable1: TFDTable
    IndexFieldNames = 'id'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'faixainss'
    CatalogName = 'postgres'
    SchemaName = 'folha'
    TableName = 'faixainss'
    Left = 160
    Top = 120
  end
end
