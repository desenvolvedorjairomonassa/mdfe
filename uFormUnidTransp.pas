unit uFormUnidTransp;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFormBase, FireDAC.UI.Intf,
  FireDAC.VCLUI.Wait, FireDAC.Phys.FBDef, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, Data.DB, Vcl.StdCtrls,
  Vcl.DBCtrls, Vcl.ExtCtrls, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  ACBrBase, ACBrEnterTab, FireDAC.Phys.IBBase, FireDAC.Comp.UI, Vcl.Mask,
  Vcl.Grids, Vcl.DBGrids;

type
  TFrmUnidTransp = class(TFrmBase)
    mtUnidade: TFDMemTable;
    mtLacre: TFDMemTable;
    dsUnidade: TDataSource;
    dsLacre: TDataSource;
    Panel1: TPanel;
    DBComboBox1: TDBComboBox;
    Label1: TLabel;
    mtUnidadetipo: TIntegerField;
    mtUnidadeidUnidTransp: TWideStringField;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    mtUnidadeqtdeRateada: TFMTBCDField;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Panel2: TPanel;
    dbLacre: TDBGrid;
    Panel3: TPanel;
    Panel4: TPanel;
    btnConfirmarDoc: TButton;
    btnCancelarDoc: TButton;
    btnexcluirUnidade: TButton;
    btnIncluirLacre: TButton;
    edlacre: TEdit;
    Label4: TLabel;
    mtUnidademdoc_registro: TIntegerField;
    mtLacrelacre: TWideStringField;
    procedure mtUnidadetipoSetText(Sender: TField; const Text: string);
    procedure btnConfirmarDocClick(Sender: TObject);
    procedure btnCancelarDocClick(Sender: TObject);
    procedure btnIncluirLacreClick(Sender: TObject);
    procedure btnexcluirUnidadeClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure mtUnidadetipoGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure edlacreEnter(Sender: TObject);
    procedure edlacreExit(Sender: TObject);
    procedure edlacreKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmUnidTransp: TFrmUnidTransp;

implementation

{$R *.dfm}

procedure TFrmUnidTransp.btnCancelarDocClick(Sender: TObject);
begin
  inherited;
  ModalResult := mrCancel;
end;

procedure TFrmUnidTransp.btnConfirmarDocClick(Sender: TObject);
begin
  inherited;
  ModalResult := mrOk;
end;

procedure TFrmUnidTransp.btnexcluirUnidadeClick(Sender: TObject);
var
  I: Integer;
begin
  inherited;
  if dbLacre.SelectedRows.Count>0 then
  begin
    for I := 0 to dbLacre.SelectedRows.Count-1 do
    begin
      dbLacre.DataSource.DataSet.GotoBookmark(dbLacre.SelectedRows.Items[i]);
      dbLacre.DataSource.DataSet.Delete;
    end;
  end;
end;

procedure TFrmUnidTransp.btnIncluirLacreClick(Sender: TObject);
begin
  inherited;
  mtLacre.Insert;
  mtLacre.FieldByName('lacre').AsString := edlacre.Text ;
  mtLacre.Post;
  edlacre.Clear;
end;

procedure TFrmUnidTransp.edlacreEnter(Sender: TObject);
begin
  inherited;
  ACBrEnterTab1.EnterAsTab := False;
end;

procedure TFrmUnidTransp.edlacreExit(Sender: TObject);
begin
  inherited;
  ACBrEnterTab1.EnterAsTab := True;
end;

procedure TFrmUnidTransp.edlacreKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #13 then
    btnIncluirLacre.Click;
end;

procedure TFrmUnidTransp.FormCreate(Sender: TObject);
begin
  inherited;
  mtUnidade.Open;
  mtLacre.Open;
end;

procedure TFrmUnidTransp.mtUnidadetipoGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    0 : text := '';
    1: text := 'Rodoviário Tração';
    2: text := 'Rodoviário Reboque';
    3: text := 'Navio' ;
    4: text := 'Balsa';
    5: text := 'Aeronave';
    6: text := 'Vagão' ;
    7: text := 'Outros' ;
  end;
end;

procedure TFrmUnidTransp.mtUnidadetipoSetText(Sender: TField; const Text: string);
begin
  inherited;
  if text = 'Rodoviário Tração' then  Sender.Value := 1
  else if text = 'Rodoviário Reboque' then  Sender.Value := 2
  else if text = 'Navio' then Sender.Value := 3
  else if text = 'Balsa' then Sender.Value := 4
  else if text = 'Aeronave' then Sender.Value := 5
  else if text = 'Vagão' then Sender.Value := 6
  else if text = 'Outros' then Sender.Value := 7;

//  if text = 'Container' then Sender.Value := 1
//  else if text = 'ULD' then Sender.Value := 2
//  else if text = 'Pallet' then Sender.Value := 3
//  else if text = 'Outros' then Sender.Value := 4;
end;

end.
