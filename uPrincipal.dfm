object FrmPrincipal: TFrmPrincipal
  Left = 0
  Top = 0
  Caption = 'MDFe'
  ClientHeight = 742
  ClientWidth = 968
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object JvMovableBevel1: TJvMovableBevel
    Left = 80
    Top = 496
    Width = 50
    Height = 50
    Shape = bsFrame
    Style = bsRaised
  end
  object ButtonGroup1: TButtonGroup
    Left = 0
    Top = 0
    Width = 968
    Height = 57
    Align = alTop
    BorderWidth = 1
    ButtonHeight = 50
    ButtonWidth = 80
    Images = ImageList1
    Items = <
      item
        Caption = 'Inserir'
        ImageIndex = 0
        OnClick = ButtonGroup1Items0Click
      end
      item
        Caption = 'Mostrar'
        OnClick = ButtonGroup1Items2Click
      end
      item
        Caption = 'Sair'
        OnClick = ButtonGroup1Items6Click
      end>
    TabOrder = 0
  end
  object Memo1: TMemo
    Left = 616
    Top = 63
    Width = 344
    Height = 633
    Lines.Strings = (
      'Memo1')
    ScrollBars = ssVertical
    TabOrder = 1
  end
  object Button1: TButton
    Left = 310
    Top = 671
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 310
    Top = 632
    Width = 75
    Height = 25
    Caption = 'Button2'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 310
    Top = 592
    Width = 75
    Height = 25
    Caption = 'Button3'
    TabOrder = 4
    OnClick = Button3Click
  end
  object JvDBGrid1: TJvDBGrid
    Left = 32
    Top = 96
    Width = 569
    Height = 313
    DataSource = DataSource1
    DrawingStyle = gdsGradient
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    SelectColumn = scGrid
    SelectColumnsDialogStrings.Caption = 'Select columns'
    SelectColumnsDialogStrings.OK = '&OK'
    SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
    ColumnResize = gcrDataSet
    EditControls = <
      item
        FieldName = 'SERIE'
        FitCell = fcCellSize
        LeaveOnEnterKey = True
        LeaveOnUpDownKey = True
      end>
    RowsHeight = 17
    TitleRowHeight = 17
  end
  object JvDBSearchComboBox1: TJvDBSearchComboBox
    Left = 152
    Top = 456
    Width = 145
    Height = 21
    TabOrder = 6
    Text = 'JvDBSearchComboBox1'
  end
  object JvDBFindEdit1: TJvDBFindEdit
    Left = 144
    Top = 424
    Width = 121
    Height = 21
    TabOrder = 7
    Text = 'JvDBFindEdit1'
  end
  object Button4: TButton
    Left = 136
    Top = 616
    Width = 75
    Height = 25
    Caption = 'Button4'
    TabOrder = 8
    OnClick = Button4Click
  end
  object JvCSVCheckBox1: TJvCSVCheckBox
    Left = 336
    Top = 472
    Width = 97
    Height = 17
    Caption = 'JvCSVCheckBox1'
    TabOrder = 9
  end
  object JvDBFindEdit2: TJvDBFindEdit
    Left = 310
    Top = 69
    Width = 121
    Height = 21
    TabOrder = 10
    Text = 'JvDBFindEdit2'
  end
  object JvDBLookupComboEdit1: TJvDBLookupComboEdit
    Left = 320
    Top = 344
    Width = 121
    Height = 21
    TabOrder = 11
    Text = 'JvDBLookupComboEdit1'
  end
  object JvItemsPanel1: TJvItemsPanel
    Left = 328
    Top = 544
    Width = 185
    Height = 41
    AutoGrow = False
    AutoSize = False
    HotTrack = False
    TabOrder = 12
  end
  object JvDBUltimGrid1: TJvDBUltimGrid
    Left = 48
    Top = 514
    Width = 417
    Height = 143
    DataSource = DataSource1
    TabOrder = 13
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleButtons = True
    SelectColumn = scGrid
    TitleArrow = True
    SelectColumnsDialogStrings.Caption = 'Select columns'
    SelectColumnsDialogStrings.OK = '&OK'
    SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
    EditControls = <>
    RowsHeight = 17
    TitleRowHeight = 17
  end
  object JvDBGridFooter1: TJvDBGridFooter
    Left = 0
    Top = 723
    Width = 968
    Height = 19
    SizeGrip = True
    Columns = <>
    ExplicitLeft = 176
    ExplicitTop = 640
    ExplicitWidth = 0
  end
  object JvDBGridFooter2: TJvDBGridFooter
    Left = 0
    Top = 704
    Width = 968
    Height = 19
    SizeGrip = True
    Columns = <>
    ExplicitLeft = 136
    ExplicitTop = 320
    ExplicitWidth = 0
  end
  object JvDBGridFooter3: TJvDBGridFooter
    Left = 0
    Top = 57
    Width = 968
    Height = 19
    Align = alTop
    SizeGrip = True
    Columns = <>
    DataSource = DataSource1
    DBGrid = JvDBGrid1
    ExplicitLeft = -72
    ExplicitTop = 371
  end
  object JvDBSearchComboBox2: TJvDBSearchComboBox
    Left = 408
    Top = 432
    Width = 145
    Height = 21
    TabOrder = 17
    Text = 'JvDBSearchComboBox2'
  end
  object JvDBLookupTreeViewCombo1: TJvDBLookupTreeViewCombo
    Left = 248
    Top = 488
    Width = 145
    Height = 21
    ListField = 'NF_OBSERVACAO'
    DetailField = 'NF_ALIQ_ICMS'
    ListSource = DataSource1
    TabOrder = 18
  end
  object JvDBSearchComboBox3: TJvDBSearchComboBox
    Left = 496
    Top = 480
    Width = 145
    Height = 21
    DataField = 'NF_NOTANUMBER'
    DataSource = DataSource1
    TabOrder = 19
    Text = '003303'
  end
  object JvDBFindEdit3: TJvDBFindEdit
    Left = 504
    Top = 520
    Width = 121
    Height = 21
    TabOrder = 20
    Text = 'JvDBFindEdit3'
    DataField = 'NF_STATUS_NFE'
    DataSource = DataSource1
  end
  object JvDBSearchEdit1: TJvDBSearchEdit
    Left = 520
    Top = 568
    Width = 121
    Height = 21
    DataSource = DataSource1
    DataField = 'NF_NOTANUMBER'
    TabOrder = 21
    Text = '003303'
  end
  object FDConnec: TFDConnection
    Params.Strings = (
      'CharacterSet=UTF8'
      'Server=localhost'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Database=C:\jobdados\BSC3108.FDB'
      'DriverID=FB')
    Connected = False
    Left = 40
    Top = 328
  end
  object FDSchemaAdapter1: TFDSchemaAdapter
    Left = 40
    Top = 280
  end
  object ImageList1: TImageList
    Left = 56
    Top = 384
    Bitmap = {
      494C010106000800540010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      00000000000000000000000000000000000000000000ACAEADFF8C8E8DFF8C8E
      8DFF8C8E8DFF8C8E8DFF8C8E8DFF8C8E8DFF8C8E8DFF8C8E8DFF8C8E8DFF8C8E
      8DFF8C8E8DFF8C8E8DFFACAEADFF000000000000000000000000020202036868
      68CC7D7D7DFF787878FF737373FF6F6F6FFF545454CA0000000000771FF5037A
      1DFF001003210000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008C8E8DFFFDFDFDFFFDFD
      FDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFD
      FDFFFDFDFDFFFDFDFDFF8C8E8DFF0000000000000000000000000C0C0C159191
      91FFD5D3D3FFE2E0DFFFDFDCDBFFE1DFDFFF6A6A6AF400000000017D28F542A0
      5EFF006D1BE40012042700000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008C8E8DFFFDFDFDFFEEEE
      EEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEE
      EEFFEEEEEEFFFDFDFDFF8C8E8DFF000000000000000000000000000000003E3E
      3E6F666666BDC3C1C0FF219650FF1A9048FF148E42FF0F8A3AFF399E5DFF7FC0
      95FF45A261FF0A7A25FF526656FF505050D70000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008C8E8DFFFDFDFDFFEEEE
      EEFFACAEADFFACAEADFFACAEADFFACAEADFFACAEADFFEEEEEEFFEEEEEEFFEEEE
      EEFFEEEEEEFFFDFDFDFF8C8E8DFF000000005C5C5C8D818181CC7C7C7CCC7878
      78CC7D7D7DDE9D9D9DFF289A5AFF8FCAA8FF8CC8A4FF89C5A0FF87C49DFF69B5
      84FF81C196FF47A465FF138530FF506755FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008C8E8DFFFDFDFDFFEEEE
      EEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEE
      EEFFEEEEEEFFFDFDFDFF8C8E8DFF00000000ADADADFFE4E2E2FFD7D5D5FFD5D3
      D2FFD1CECDFFCAC3C2FF309E62FF93CDACFF6EB98DFF6AB788FF65B584FF60B2
      7FFF66B481FF82C197FF3B9F5BFF017E25FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008C8E8DFFFDFDFDFFEEEE
      EEFFEEEEEEFFACAEADFFACAEADFFACAEADFFACAEADFFACAEADFFACAEADFFACAE
      ADFFEEEEEEFFFDFDFDFF8C8E8DFF00000000B3B3B3FFE0DDDDFFA6714CFFA671
      4CFFA6714CFFA6714CFF36A26AFF95CEAFFF93CDACFF90CBA9FF8FCBA7FF73BB
      8FFF89C7A0FF45A467FF098735FF666D68FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008C8E8DFFFDFDFDFFEEEE
      EEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEE
      EEFFEEEEEEFFFDFDFDFF8C8E8DFF00000000B9B9B9FFDEDBDBFFB47F59FFCE97
      6FFFD8AD90FFD9AE90FF3CA46EFF37A26CFF33A066FF2F9C60FF54AE7BFF90CB
      A9FF4EAA73FF178E45FFCBCDC8FF727272FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008C8E8DFFFDFDFDFFEEEE
      EEFFEEEEEEFFACAEADFFACAEADFFACAEADFFACAEADFFACAEADFFACAEADFFACAE
      ADFFEEEEEEFFFDFDFDFF8C8E8DFF00000000BFBFBFFFDFDCDCFFB37E58FFCB94
      6DFFCD966EFFCF9870FFD19A71FFD29B73FFD49D74FFA6714CFF37A066FF59B2
      80FF279756FF359337FFD6D1D0FF777777FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008C8E8DFFFDFDFDFFEEEE
      EEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEE
      EEFFEEEEEEFFFDFDFDFF8C8E8DFF00000000C4C4C4FFE1DEDCFFB27C57FFC790
      6AFFC9926CFFCB946DFFCD966FFFCF9870FFD19A72FFA6714CFF3CA46EFF309E
      64FF9BC5A1FF4FA855FFD7D3D1FF7D7D7DFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008C8E8DFFFDFDFDFFEEEE
      EEFFEEEEEEFFACAEADFFACAEADFFACAEADFFACAEADFFACAEADFFACAEADFFACAE
      ADFFEEEEEEFFFDFDFDFF8C8E8DFF00000000CACACAFFE1DFDEFFB07B56FFC38D
      67FFC58F69FFC8916AFFCA936CFFCC956EFFCE976FFFA6714CFFDBD6D6FF9090
      90FFC0BAB8FFBFB8B7FFD7D3D3FF838383FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008C8E8DFFFDFDFDFFEEEE
      EEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEE
      EEFFEEEEEEFFFDFDFDFF8C8E8DFF00000000CECECEFFE2DFDFFFAF7A55FFB07A
      55FFB07B56FFB17C57FFB27D57FFB37E58FFB47F59FFA6714CFFDCD8D7FF9797
      97FF8C8C8CFF898989FFD9D5D4FF8A8A8AFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008C8E8DFFFDFDFDFFEEEE
      EEFFACAEADFFACAEADFFACAEADFFACAEADFFACAEADFFEEEEEEFFFDFDFDFFFDFD
      FDFFFDFDFDFFFDFDFDFF8C8E8DFF00000000D3D3D3FFF1EFEFFFE2DFDFFFE2DF
      DFFFE1DFDEFFE1DEDDFFE0DDDCFFDFDCDBFFDEDBDBFFDEDBD9FFEDECEBFF9D9D
      9DFFC4BEBDFFC2BCBAFFDAD6D5FF909090FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008C8E8DFFFDFDFDFFEEEE
      EEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFFDFDFDFFECEC
      ECFFECECECFF8C8E8DFFACAEADFF00000000D1D1D1F9D3D3D3FFD0D0D0FFCCCC
      CCFFC8C8C8FFC2C2C2FFBEBEBEFFB9B9B9FFB4B4B4FFAFAFAFFFA9A9A9FFA4A4
      A4FF939292FF919090FFDBD7D6FF979797FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008C8E8DFFFDFDFDFFEEEE
      EEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFFDFDFDFFECEC
      ECFF8C8E8DFFACAEADFF00000000000000000000000000000000000000000000
      0000000000003A3A3A48B6B6B6E4DFDFDFFFEAEAEAFFCFCAC9FFCBC5C4FFCAC3
      C2FFC8C2C0FFC7C0C0FFDCD9D8FF9D9D9DFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008C8E8DFFFDFDFDFFFDFD
      FDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFF8C8E
      8DFFACAEADFF0000000000000000000000000000000000000000000000000000
      000000000000000000000C0C0C0F898989ABDCDCDCFFE6E3E3FFE1DEDCFFDFDC
      DCFFDFDCDBFFDEDBDBFFEEECECFFA4A4A4FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000ACAEADFF8C8E8DFF8C8E
      8DFF8C8E8DFF8C8E8DFF8C8E8DFF8C8E8DFF8C8E8DFF8C8E8DFF8C8E8DFFACAE
      ADFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080809FC6C6C6FBC3C3C3FFBFBF
      BFFFBABABAFFB5B5B5FFAFAFAFFF6F6F6FA70000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000ACAEADFF8C8E8DFF8C8E
      8DFF8C8E8DFF8C8E8DFF8C8E8DFF8C8E8DFF8C8E8DFF8C8E8DFF8C8E8DFF8C8E
      8DFF8C8E8DFF8C8E8DFFACAEADFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000133F57FF14415DFF2468
      9BFF2B75B3FF275E7EAD00000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008C8E8DFFFDFDFDFFFDFD
      FDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFD
      FDFFFDFDFDFFFDFDFDFF8C8E8DFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008A6245FF8A6245FF8A6245FF8A6245FF000000000000
      00000000000000000000000000000000000000000000124158FF5C9BD4FFA5CF
      F5FFA8CFECFF478AC0FF2B75B3FF000000000000000000000000000000000000
      000000000000000000000000000000000000000000008C8E8DFFFDFDFDFFEEEE
      EEFF6464FFFF6464FFFF6464FFFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEE
      EEFFEEEEEEFFFDFDFDFF8C8E8DFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008A6245FFE8CDB8FFE8CDB8FF8A6245FF000000000000
      000000000000000000000000000000000000000000001D6C92FFCBE3F9FF60A9
      ECFF3F97E8FF1466C1FF155FA9FF2B75B3FF0000000000000000000000000000
      000000000000000000000000000000000000000000008C8E8DFFFDFDFDFFEEEE
      EEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFACAEADFFACAEADFFACAE
      ADFFEEEEEEFFFDFDFDFF8C8E8DFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008A6245FFE8CDB8FFE8CDB8FF8A6245FF000000000000
      000000000000000000000000000000000000000000001D6C92FFC8E1F2FFD1E7
      FAFF337CB4FF3098C2FF6CC3DCFF499BCFFF3382C7FF00000000000000000000
      000000000000000000000000000000000000000000008C8E8DFFFDFDFDFFEEEE
      EEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEE
      EEFFEEEEEEFFFDFDFDFF8C8E8DFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008A6245FFE8CDB8FFE8CDB8FF8A6245FF000000000000
      00000000000000000000000000000000000000000000040C13202588B8FFAFCB
      E1FF66A8C8FF5FDCF5FF43D6F4FF8DEEFAFF5CB3E6FF3A8ED9FF000000000000
      000000000000000000000000000000000000000000008C8E8DFFFDFDFDFFEEEE
      EEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFACAEADFFACAEADFFACAE
      ADFFEEEEEEFFFDFDFDFF8C8E8DFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008A6245FF8A62
      45FF8A6245FF8A6245FF8A6245FFE8CDB8FFE8CDB8FF8A6245FF8A6245FF8A62
      45FF8A6245FF8A6245FF00000000000000000000000000000000000000002588
      B8FFBDE6F2FFB2F4FCFF5FDCF5FF43D6F4FF8DEEFAFF5CB3E6FF3A8ED9FF0000
      000000000000000000000000000000000000000000008C8E8DFFFDFDFDFFEEEE
      EEFF6464FFFF6464FFFF6464FFFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEE
      EEFFEEEEEEFFFDFDFDFF8C8E8DFF0000000000000000000000008A6245FF8A62
      45FF8A6245FF8A6245FF8A6245FF8A6245FF8A6245FF8A6245FF8A6245FF8A62
      45FF8A6245FF8A6245FF000000000000000000000000000000008A6245FFE8CD
      B8FFE8CDB8FFE8CDB8FFE8CDB8FFE8CDB8FFE8CDB8FFE8CDB8FFE8CDB8FFE8CD
      B8FFE8CDB8FF8A6245FF00000000000000000000000000000000000000000000
      0000268FBEFFC2EDF8FFB2F4FCFF5FDCF5FF43D6F4FF8DEEFAFF5CB3E6FF3A8E
      D9FF00000000000000000000000000000000000000008C8E8DFFFDFDFDFFEEEE
      EEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFACAEADFFACAEADFFACAE
      ADFFEEEEEEFFFDFDFDFF8C8E8DFF0000000000000000000000008A6245FFE8CD
      B8FFE8CDB8FFE8CDB8FFE8CDB8FFE8CDB8FFE8CDB8FFE8CDB8FFE8CDB8FFE8CD
      B8FFE8CDB8FF8A6245FF000000000000000000000000000000008A6245FFE8CD
      B8FFE8CDB8FFE8CDB8FFE8CDB8FFE8CDB8FFE8CDB8FFE8CDB8FFE8CDB8FFE8CD
      B8FFE8CDB8FF8A6245FF00000000000000000000000000000000000000000000
      0000000000002EB9E4FFC2EDF8FFB2F4FCFF5FDCF5FF43D6F4FF8DEEFAFF5CB3
      E6FF3A8ED9FF000000000000000000000000000000008C8E8DFFFDFDFDFFEEEE
      EEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEE
      EEFFEEEEEEFFFDFDFDFF8C8E8DFF0000000000000000000000008A6245FFE8CD
      B8FFE8CDB8FFE8CDB8FFE8CDB8FFE8CDB8FFE8CDB8FFE8CDB8FFE8CDB8FFE8CD
      B8FFE8CDB8FF8A6245FF000000000000000000000000000000008A6245FF8A62
      45FF8A6245FF8A6245FF8A6245FFE8CDB8FFE8CDB8FF8A6245FF8A6245FF8A62
      45FF8A6245FF8A6245FF00000000000000000000000000000000000000000000
      000000000000000000002EB9E4FFC2EDF8FFB2F4FCFF5FDCF5FF43D6F4FF8DEE
      FAFF5CB3E6FF3A8ED9FF0000000000000000000000008C8E8DFFFDFDFDFFEEEE
      EEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFACAEADFFACAEADFFACAE
      ADFFEEEEEEFFFDFDFDFF8C8E8DFF0000000000000000000000008A6245FF8A62
      45FF8A6245FF8A6245FF8A6245FF8A6245FF8A6245FF8A6245FF8A6245FF8A62
      45FF8A6245FF8A6245FF00000000000000000000000000000000000000000000
      000000000000000000008A6245FFE8CDB8FFE8CDB8FF8A6245FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000002EB9E4FFC2EDF8FFB2F4FCFF67D9F5FF6ECF
      F3FF589CD0FF72AADDFF4E90C9FF00000000000000008C8E8DFFFDFDFDFFEEEE
      EEFF6464FFFF6464FFFF6464FFFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEE
      EEFFEEEEEEFFFDFDFDFF8C8E8DFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008A6245FFE8CDB8FFE8CDB8FF8A6245FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002EB9E4FFC2EDF8FFA7E2F8FF6BAD
      DDFFA4CFF4FFA4CFF4FFBCDBF7FF4F8DC5F7000000008C8E8DFFFDFDFDFFEEEE
      EEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFFDFDFDFFFDFD
      FDFFFDFDFDFFFDFDFDFF8C8E8DFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008A6245FFE8CDB8FFE8CDB8FF8A6245FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000002EB9E4FFA6D4F4FFC4E1
      F8FFCCE3F9FFCCE3F9FFBCDBF7FF4D8EC7FD000000008C8E8DFFFDFDFDFFEEEE
      EEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFFDFDFDFFECEC
      ECFFECECECFF8C8E8DFFACAEADFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008A6245FF8A6245FF8A6245FF8A6245FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004FA7D9FF69A4
      D8FFC9E1F7FFCBE3F8FF4194CAFF215884AE000000008C8E8DFFFDFDFDFFEEEE
      EEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFFDFDFDFFECEC
      ECFF8C8E8DFFACAEADFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000002070809489B
      C9EA4E91C8FD4D8FC8FF2888B8DF05101619000000008C8E8DFFFDFDFDFFFDFD
      FDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFF8C8E
      8DFFACAEADFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000ACAEADFF8C8E8DFF8C8E
      8DFF8C8E8DFF8C8E8DFF8C8E8DFF8C8E8DFF8C8E8DFF8C8E8DFF8C8E8DFFACAE
      ADFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 14
    Top = 143
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 22
    Top = 87
  end
  object FDScript1: TFDScript
    SQLScripts = <>
    Connection = FDConnec
    Params = <>
    Macros = <>
    OnError = FDScript1Error
    Left = 32
    Top = 208
  end
  object FDFBNBackup1: TFDFBNBackup
    Left = 40
    Top = 448
  end
  object FDIBBackup1: TFDIBBackup
    Left = 32
    Top = 520
  end
  object FDQuery1: TFDQuery
    Active = True
    Connection = FDConnec
    SQL.Strings = (
      'select * from nf0001')
    Left = 120
    Top = 504
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 168
    Top = 504
  end
  object JvCSVBase1: TJvCSVBase
    Left = 360
    Top = 400
  end
  object JvGridFilter1: TJvGridFilter
    Left = 136
    Top = 64
  end
  object JvGridPrinter1: TJvGridPrinter
    PrintOptions.Orientation = poPortrait
    PrintOptions.PageTitleMargin = 0
    PrintOptions.PageFooter = 'date|time|page'
    PrintOptions.HeaderSize = 14
    PrintOptions.FooterSize = 8
    PrintOptions.DateFormat = 'd-mmm-yyyy'
    PrintOptions.TimeFormat = 'h:nn am/pm'
    PrintOptions.Copies = 0
    PrintOptions.PreviewPage = 1
    PrintOptions.BorderStyle = bsNone
    PrintOptions.Leftpadding = 0
    PrintOptions.MarginBottom = 0
    PrintOptions.MarginLeft = 0
    PrintOptions.MarginTop = 0
    PrintOptions.MarginRight = 0
    NumberFormat = '%.2f'
    Left = 192
    Top = 64
  end
  object JvDBGridExcelExport1: TJvDBGridExcelExport
    Caption = 'Exporting to MS Excel...'
    Grid = JvDBGrid1
    AutoFit = False
    Left = 136
    Top = 144
  end
end
