unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Phys.PGDef, FireDAC.Stan.Intf,
  FireDAC.Phys, FireDAC.Phys.PG, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Vcl.Menus, Vcl.ButtonGroup,
  System.ImageList, Vcl.ImgList, Vcl.CategoryButtons, Vcl.Tabs, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.DockTabSet, Vcl.StdCtrls, Vcl.Mask, Vcl.Buttons,
  FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.Phys.IBBase, FireDAC.Comp.UI, FireDAC.Comp.ScriptCommands, FireDAC.Stan.Util, FireDAC.Comp.Script,
  FireDAC.Phys.IBWrapper, JvExDBGrids, JvDBGrid, FireDAC.Stan.Param, FireDAC.Comp.DataSet, JvExMask, JvToolEdit, JvMaskEdit, JvDBFindEdit,
  JvExStdCtrls, JvCombobox, JvDBSearchComboBox, JvDBGridExport, JvExExtCtrls, JvExtComponent, JvItemsPanel, JvMovableBevel, JvDBLookup,
  JvDBLookupComboEdit, JvGridPrinter, JvGridFilter, JvCSVBaseControls, JvComponentBase, JvDBUltimGrid, Vcl.ComCtrls, JvDBGridFooter, JvExControls,
  JvDBLookupTreeView, JvEdit, JvDBSearchEdit;

type
  TFrmPrincipal = class(TForm)
    FDConnec: TFDConnection;
    FDSchemaAdapter1: TFDSchemaAdapter;
    ButtonGroup1: TButtonGroup;
    ImageList1: TImageList;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    Memo1: TMemo;
    Button1: TButton;
    FDScript1: TFDScript;
    Button2: TButton;
    Button3: TButton;
    FDFBNBackup1: TFDFBNBackup;
    FDIBBackup1: TFDIBBackup;
    JvDBGrid1: TJvDBGrid;
    JvDBSearchComboBox1: TJvDBSearchComboBox;
    JvDBFindEdit1: TJvDBFindEdit;
    FDQuery1: TFDQuery;
    Button4: TButton;
    DataSource1: TDataSource;
    JvCSVBase1: TJvCSVBase;
    JvCSVCheckBox1: TJvCSVCheckBox;
    JvGridFilter1: TJvGridFilter;
    JvGridPrinter1: TJvGridPrinter;
    JvDBFindEdit2: TJvDBFindEdit;
    JvDBLookupComboEdit1: TJvDBLookupComboEdit;
    JvMovableBevel1: TJvMovableBevel;
    JvItemsPanel1: TJvItemsPanel;
    JvDBGridExcelExport1: TJvDBGridExcelExport;
    JvDBUltimGrid1: TJvDBUltimGrid;
    JvDBGridFooter1: TJvDBGridFooter;
    JvDBGridFooter2: TJvDBGridFooter;
    JvDBGridFooter3: TJvDBGridFooter;
    JvDBSearchComboBox2: TJvDBSearchComboBox;
    JvDBLookupTreeViewCombo1: TJvDBLookupTreeViewCombo;
    JvDBSearchComboBox3: TJvDBSearchComboBox;
    JvDBFindEdit3: TJvDBFindEdit;
    JvDBSearchEdit1: TJvDBSearchEdit;
    procedure FormCreate(Sender: TObject);
    procedure ButtonGroup1Items6Click(Sender: TObject);
    procedure FaixaINSS2Click(Sender: TObject);
    procedure ButtonGroup1Items0Click(Sender: TObject);
    procedure ButtonGroup1Items2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FDScript1Error(ASender, AInitiator: TObject; var AException: Exception);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    HostName: string;
    DataBase: string;
    Port: string;
    Protocol:string;
    user: string;
    password :string;
    altura : integer;
   procedure LerIni;
   procedure FazerConexao;
   procedure FazerBackup(const versao: string);
   procedure LerScripts(const versao: integer);
   function ExecutarScript(const arq:string): boolean;
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

uses IniFiles, uteste, uFormBasePesquisa, uFormMDF, upesquisamdf;

procedure TFrmPrincipal.Button1Click(Sender: TObject);
begin
   LerScripts(520);
end;

procedure TFrmPrincipal.Button2Click(Sender: TObject);
var b: boolean;
begin
  b:=ExecutarScript('C:\Users\monassakorc\Documents\Delphi_MDFe\settings\IBPT18.sql');

end;

procedure TFrmPrincipal.Button3Click(Sender: TObject);
begin
FazerBackup('300 patch3');
end;

procedure TFrmPrincipal.Button4Click(Sender: TObject);
begin
  FDQuery1.Open('select * from nf0001');
end;

procedure TFrmPrincipal.ButtonGroup1Items0Click(Sender: TObject);
begin
  if not assigned(FrmMDF) then
    FrmMDF := TFrmMDF.Create(Application);
  try
    FrmMDF.Estado := eNovo;
    FrmMDF.ShowModal;
  finally
    FreeAndNil(FrmMDF);
  end;



end;

procedure TFrmPrincipal.ButtonGroup1Items2Click(Sender: TObject);
begin
  if not assigned(FrmPesquisarMDFe) then
    FrmPesquisarMDFe := TFrmPesquisarMDFe.Create(self);
  try
    FrmPesquisarMDFe.ShowModal;
  finally
    FreeAndNil(FrmPesquisarMDFe);
  end;
end;

procedure TFrmPrincipal.ButtonGroup1Items6Click(Sender: TObject);
begin
 Close;
end;

function TFrmPrincipal.ExecutarScript(const arq: string): boolean;
begin
  with FDScript1 do
  begin
    SQLScriptFileName := arq;
    result := ValidateAll;
    if result then
      result:=  ExecuteAll;

  end;
end;

procedure TFrmPrincipal.FaixaINSS2Click(Sender: TObject);
begin
 if not assigned(FrmBasePesquisa) then
   FrmBasePesquisa := TFrmBasePesquisa.Create(Application);
 FrmBasePesquisa.ShowModal;
end;

procedure TFrmPrincipal.FazerBackup (const versao: string);
begin
  FDIBBackup1.DriverLink := FDPhysFBDriverLink1;

  FDIBBackup1.UserName := user;
  FDIBBackup1.Password := password;
  FDIBBackup1.Host := HostName;
  FDIBBackup1.Protocol := ipTCPIP;

  FDIBBackup1.Database :=DataBase;
  FDIBBackup1.BackupFiles.Add(ExtractFilePath(Application.ExeName) + versao+'.fdb');

  FDIBBackup1.Backup;
end;

procedure TFrmPrincipal.FazerConexao;
begin
  FDPhysFBDriverLink1.VendorHome := ExtractFilePath(Application.ExeName) ;
 //FDPhysPgDriverLink1.VendorLib := 'libpg.dll';
 FDPhysFBDriverLink1.Release;
 with FDConnec do
 begin

   connected := False;
   Params.Values['Database'] := DataBase;
   params.Values['user_name'] := user;
   params.Values['password'] := password;
   // params.Values['server'] := HostName;
   params.Values['port'] := port;
   params.Values['CharacterSet'] := 'UTF8'


 end;
 FDConnec.connected := True;
end;

procedure TFrmPrincipal.FDScript1Error(ASender, AInitiator: TObject; var AException: Exception);
begin

   Memo1.Lines.Add(AException.Message)
end;

procedure TFrmPrincipal.FormCreate(Sender: TObject);
begin
 LerIni;
 FazerConexao;
end;

procedure TFrmPrincipal.LerIni;
var
  ArqIni: TIniFile;
begin
  ArqIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ArquivoFB.ini');
  try
    HostName :=  ArqIni.ReadString('conexao','hostname','localhost');
   // database :=  ExtractFilePath(Application.ExeName)+ '\'+ ArqIni.ReadString('conexao','database','');
    database :=   ArqIni.ReadString('conexao','database','');

    Port :=   ArqIni.ReadString('conexao','port','3050');
    user := 'sysdba';
    password := 'masterkey';
  finally
    FreeAndNil(ArqIni);
  end;
end;

procedure TFrmPrincipal.LerScripts(const versao: integer);
var dir : string;
   pesq : TSearchRec;
    ret,i: integer;
    verscript : integer;
begin
  Memo1.Lines.Clear;
  dir:= ExtractFilePath(Application.ExeName) + '\settings';
  try
  if FindFirst(Dir+'\Adjutor*.sql', faAnyFile, pesq) = 0 then
  repeat
    ret := 0;
    for I := 1 to 3 do
      ret := ret + Pos('.',copy(pesq.Name,ret+1,length(pesq.Name)))  ;
    verscript := StrToIntDef(copy(pesq.Name,ret+1,3),0);
    if verscript >= versao then
      Memo1.Lines.Add(Dir+'\'+pesq.Name );

  until FindNext(pesq) <> 0 ;
  finally
    FindClose(pesq);
  end;
end;

end.
