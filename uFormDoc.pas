unit uFormDoc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFormBase, FireDAC.UI.Intf,
  FireDAC.VCLUI.Wait, FireDAC.Phys.FBDef, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, Data.DB, Vcl.StdCtrls,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Mask, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.ComCtrls, Vcl.ExtCtrls, FireDAC.Phys.IBBase,
  FireDAC.Comp.UI, ACBrBase, ACBrEnterTab;
type
  TestadoDoc = (eNovoDoc, eEdicaoDoc, eConsultaDoc, eExclusaoDoc);

type
  TTipoDoc = (tCte, tNFe, tMDFe, tNF);

type
  TFrmDocMDFe = class(TFrmBase)
    Panel1: TPanel;
    Panel2: TPanel;
    PageControl1: TPageControl;
    tsUnidades: TTabSheet;
    tsperi: TTabSheet;
    mtDoc: TFDMemTable;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    mtDocchave: TWideStringField;
    mtDocSegcodBarra: TWideStringField;
    mtDocindReentrega: TStringField;
    DBCheckBox1: TDBCheckBox;
    dsDoc: TDataSource;
    btnCancelarDoc: TButton;
    btnConfirmarDoc: TButton;
    dsPeri: TDataSource;
    mtPeri: TFDMemTable;
    mtPerinONU: TWideStringField;
    mtPeriNomeAE: TWideStringField;
    mtPeriClaRisco: TWideStringField;
    mtPerigrEmb: TWideStringField;
    mtPeriTotProd: TFMTBCDField;
    mtPeriVolTipo: TFMTBCDField;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    btnIncluirPeri: TButton;
    btnExcluirPeri: TButton;
    Panel4: TPanel;
    Button4: TButton;
    Button5: TButton;
    btnincCte: TButton;
    mtDocmdoc_registro: TIntegerField;
    mtPerimdoc_registro: TIntegerField;
    mtLacre: TFDMemTable;
    mtLacrelacre: TWideStringField;
    mtUnidade: TFDMemTable;
    mtUnidadetipo: TIntegerField;
    mtUnidadeidUnidTransp: TWideStringField;
    mtUnidadeqtdeRateada: TFMTBCDField;
    mtUnidademdoc_registro: TIntegerField;
    dsUnidade: TDataSource;
    mtLacreutc_registro: TIntegerField;
    mtUnidadeutc_registro: TIntegerField;
    dsLacre: TDataSource;
    GroupBox1: TGroupBox;
    DBGrid2: TDBGrid;
    Splitter1: TSplitter;
    GroupBox2: TGroupBox;
    DBGrid3: TDBGrid;
    mtLacremdoc_registro: TIntegerField;
    mtDocCD_GCMUN: TIntegerField;
    mtDocNM_MUN_2017: TWideStringField;
    mtDocnm_uf: TWideStringField;
    GroupBox3: TGroupBox;
    DBEdit23: TDBEdit;
    btnSelecionarCID: TButton;
    Label30: TLabel;
    cbUF: TDBComboBox;
    procedure btnConfirmarDocClick(Sender: TObject);
    procedure btnCancelarDocClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnIncluirPeriClick(Sender: TObject);
    procedure btnExcluirPeriClick(Sender: TObject);
    procedure mtDocAfterInsert(DataSet: TDataSet);
    procedure mtPeriAfterInsert(DataSet: TDataSet);
    procedure btnincCteClick(Sender: TObject);
    procedure mtLacreAfterInsert(DataSet: TDataSet);
    procedure Button5Click(Sender: TObject);
    procedure mtUnidadetipoSetText(Sender: TField; const Text: string);
    procedure mtUnidadetipoGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure btnSelecionarCIDClick(Sender: TObject);
    procedure DBEdit23Enter(Sender: TObject);
  private
    festado: TestadoDoc;
    fTipoDoc : TTipoDoc;
    procedure SetTipoDoc (const value : TTipoDoc);
    procedure SetEstado (const Value: TestadoDoc);
  public
    property Estado: TestadoDoc read festado write SetEstado;
    property TipoDoc : TTipoDoc read fTipoDoc write SetTipoDoc;
  end;

var
  FrmDocMDFe: TFrmDocMDFe;

implementation

{$R *.dfm}
uses uformunidTransp, frmcidades;

procedure TFrmDocMDFe.btnCancelarDocClick(Sender: TObject);
begin
  inherited;
  ModalResult := mrCancel;
end;

procedure TFrmDocMDFe.btnConfirmarDocClick(Sender: TObject);
begin
  inherited;
  if mtdoc.FieldByName('chave').AsString = '' then
     raise Exception.Create('Chave não foi preenchida!');
  if mtdoc.fieldByname('CD_GCMUN').AsInteger =0 then
      raise Exception.Create('Município de descarga não foi preenchida!');

 // if Length(mtDoc.FieldByName('SegcodBarra').AsString) <> 36 then
 //   raise Exception.Create('Cód. barras deve ser tamanho 36');

  mtDoc.Post;
  if mtPeri.State  = dsInsert then
    mtPeri.Cancel;

  ModalResult := mrok;
end;

procedure TFrmDocMDFe.btnExcluirPeriClick(Sender: TObject);
begin
  inherited;
  mtPeri.Delete;
end;

procedure TFrmDocMDFe.btnincCteClick(Sender: TObject);
begin
  inherited;
  if not assigned (FrmUnidTransp) then
    FrmUnidTransp := TFrmUnidTransp.Create(application);
  try
    if FrmUnidTransp.ShowModal = mrOk then
    begin
       mtUnidade.Insert;
       mtUnidade.CopyRecord(FrmUnidTransp.mtUnidade);
       mtUnidade.FieldByName('mdoc_registro').AsInteger :=
                   mtDoc.FieldByName('mdoc_registro').AsInteger;
       if TipoDoc = tCte then
         mtUnidade.FieldByName('utc_registro').AsInteger :=
                   proximaSequencia('gen_unidTransp_cte')
       else if TipoDoc = tNFe then
         mtUnidade.FieldByName('utc_registro').AsInteger :=
                   proximaSequencia('gen_unidTransp_nfe');
       mtUnidade.Post;
       if not FrmUnidTransp.mtLacre.IsEmpty then
         mtLacre.CopyDataSet(FrmUnidTransp.mtLacre,[coAppend,coRestart]);
    end;
  finally
    FreeAndNil(FrmUnidTransp);
  end;
end;

procedure TFrmDocMDFe.btnIncluirPeriClick(Sender: TObject);
begin
  inherited;
  mtPeri.Post;
  mtPeri.Insert;
end;

procedure TFrmDocMDFe.Button5Click(Sender: TObject);
var reg : integer;
    clone : TFDMemTable;
begin
  inherited;
  if not mtUnidade.IsEmpty then
  begin
    reg := mtUnidade.FieldByName('utc_registro').AsInteger;
    if not mtlacre.IsEmpty then
    begin
      clone := TFDMemTable.Create(self);
      try
        clone.CloneCursor(mtLacre,false);
        clone.Filter := 'utc_registro = '+inttostr(reg);
        clone.Filtered := True;
        clone.First;
        while not clone.Eof do
          clone.Delete;


      finally
        FreeAndNil(clone);
      end;
    end;


    mtUnidade.Delete;
  end;
end;

procedure TFrmDocMDFe.btnSelecionarCIDClick(Sender: TObject);
begin
  inherited;
  if not assigned (frmMunicicios) then
    frmMunicicios := tfrmMunicicios.Create(self);
  try
    frmMunicicios.DBcidade.Options :=  [dgTitles,dgIndicator,dgColumnResize,dgColLines,dgRowLines,dgTabs,dgCancelOnExit,dgTitleClick,dgTitleHotTrack];
    frmMunicicios.cbUF.Text := cbUF.Text;
    if frmMunicicios.ShowModal = mrOk then
    begin

      mtDoc.FieldByName('cd_gcmun').AsInteger :=  frmMunicicios.DBcidade.DataSource.DataSet.FieldByName('cd_gcmun').AsInteger ;
      mtdoc.FieldByName('NM_MUN_2017').AsString :=  frmMunicicios.DBcidade.DataSource.DataSet.FieldByName('NM_MUN_2017').AsString;
    end;

  finally
    FreeAndNil(frmMunicicios);
  end;
end;

procedure TFrmDocMDFe.DBEdit23Enter(Sender: TObject);
begin
  inherited;
  btnSelecionarCID.Click;
end;

procedure TFrmDocMDFe.FormCreate(Sender: TObject);
begin
  inherited;
  if estado = eNovoDoc then
  begin
    mtdoc.Open;
    mtDoc.Insert;
    mtPeri.Open;
    mtPeri.Insert;
    mtUnidade.Open;
    mtLacre.Open;
  end;
end;

procedure TFrmDocMDFe.mtDocAfterInsert(DataSet: TDataSet);
begin
  inherited;
  mtDoc.FieldByName('indReentrega').AsString := '0';
  if mtDoc.FieldByName('mdoc_registro').IsNull then
  begin
    if TipoDoc = tCte then
      mtDoc.FieldByName('mdoc_registro').AsInteger := proximaSequencia('gen_cte_reg')
    else if TipoDoc = tNFe then
      mtDoc.FieldByName('mdoc_registro').AsInteger := proximaSequencia('gen_nfe_reg');

  end;
end;

procedure TFrmDocMDFe.mtLacreAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if mtLacre.FieldByName('utc_registro').IsNull then
     mtLacre.FieldByName('utc_registro').AsInteger :=
                           mtUnidade.FieldByName('utc_registro').AsInteger;
  if (mtLacre.FieldByName('mdoc_registro').IsNull) or
      (mtLacre.FieldByName('mdoc_registro').AsInteger = 0 ) then
    mtLacre.FieldByName('mdoc_registro').AsInteger :=
                           mtUnidade.FieldByName('mdoc_registro').AsInteger;

end;

procedure TFrmDocMDFe.mtPeriAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if mtPeri.FieldByName ('mdoc_registro').IsNull then
    mtPeri.FieldByName ('mdoc_registro').AsInteger :=
                                   mtDoc.FieldByName('mdoc_registro').AsInteger;
end;

procedure TFrmDocMDFe.mtUnidadetipoGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    0: text := '';
    1: text := 'Rodoviário Tração';
    2: text := 'Rodoviário Reboque';
    3: text := 'Navio' ;
    4: text := 'Balsa';
    5: text := 'Aeronave';
    6: text := 'Vagão' ;
    7: text := 'Outros' ;
  end;
end;

procedure TFrmDocMDFe.mtUnidadetipoSetText(Sender: TField; const Text: string);
begin
  inherited;
  if text = 'Rodoviário Tração' then  Sender.Value := 1
  else if text = 'Rodoviário Reboque' then  Sender.Value := 2
  else if text = 'Navio' then Sender.Value := 3
  else if text = 'Balsa' then Sender.Value := 4
  else if text = 'Aeronave' then Sender.Value := 5
  else if text = 'Vagão' then Sender.Value := 6
  else if text = 'Outros' then Sender.Value := 7;
end;

procedure TFrmDocMDFe.SetEstado(const Value: TestadoDoc);
begin
  festado := Value;
end;

procedure TFrmDocMDFe.SetTipoDoc(const value: TTipoDoc);
begin
  fTipoDoc := value;
end;

end.
