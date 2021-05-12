object FrmBase: TFrmBase
  Left = 0
  Top = 0
  Caption = 'FrmBase'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 40
    Top = 96
  end
  object link: TFDPhysFBDriverLink
    Left = 22
    Top = 159
  end
  object FDConnec: TFDConnection
    Params.Strings = (
      'DriverID=FB'
      'CharacterSet=UTF8'
      'Server=localhost'
      'User_Name=SYSDBA')
    LoginPrompt = False
    Transaction = FDTransac
    Left = 64
    Top = 159
  end
  object FDTransac: TFDTransaction
    Connection = FDConnec
    Left = 32
    Top = 240
  end
  object ACBrEnterTab1: TACBrEnterTab
    EnterAsTab = True
    Left = 64
    Top = 40
  end
end
