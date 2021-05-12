unit FrmCidades;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFormBase, FireDAC.UI.Intf,
  FireDAC.VCLUI.Wait, FireDAC.Phys.FBDef, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Comp.Client, Data.DB, FireDAC.Phys.IBBase, FireDAC.Comp.UI,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.DBCtrls, FireDAC.Comp.DataSet, Vcl.ExtCtrls,
  ACBrBase, ACBrEnterTab;

type
  TfrmMunicicios = class(TFrmBase)
    fdcidade: TFDQuery;
    uf: TLabel;
    DSCIDADE: TDataSource;
    fdcidadeID: TIntegerField;
    fdcidadeCD_GCUF: TIntegerField;
    fdcidadeNM_UF: TWideStringField;
    fdcidadeNM_UF_SIGLA: TWideStringField;
    fdcidadeCD_GCMUN: TIntegerField;
    fdcidadeNM_MUN_2017: TWideStringField;
    DBcidade: TDBGrid;
    EdMunicipio: TEdit;
    cbUF: TComboBox;
    Panel1: TPanel;
    btnOk: TButton;
    btnCancelar: TButton;
    procedure FormCreate(Sender: TObject);
    procedure EdMunicipioChange(Sender: TObject);
    procedure cbUFChange(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    procedure filtro;
  end;

var
  frmMunicicios: TfrmMunicicios;

implementation

{$R *.dfm}

procedure TfrmMunicicios.btnCancelarClick(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TfrmMunicicios.btnOkClick(Sender: TObject);
begin
  inherited;
  close;
  ModalResult := mrOk
end;

procedure TfrmMunicicios.cbUFChange(Sender: TObject);
begin
  inherited;
  filtro;
end;

procedure TfrmMunicicios.EdMunicipioChange(Sender: TObject);
begin
  inherited;
  filtro;
end;

procedure TfrmMunicicios.filtro;
var sql : string;
begin
    sql:= 'select * from cidades ' +
        'WHERE NM_MUN_2017 containing '+QuotedStr(EdMunicipio.Text) ;
  if cbUF.Text <> '' then
    sql:= sql + ' and nm_uf_sigla = '+QuotedStr(cbUF.Text) ;
  fdcidade.Open(sql);
end;

procedure TfrmMunicicios.FormCreate(Sender: TObject);
begin
  inherited;
 /// fdcidade.Open('select * from cidades');
end;

procedure TfrmMunicicios.FormShow(Sender: TObject);
begin
  inherited;
  filtro;
end;

end.
