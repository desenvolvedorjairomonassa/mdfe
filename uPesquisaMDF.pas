unit uPesquisaMDF;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFormBase, FireDAC.UI.Intf, FireDAC.VCLUI.Wait, FireDAC.Phys.FBDef, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, ACBrBase,
  ACBrEnterTab, FireDAC.Phys.IBBase, FireDAC.Comp.UI, Vcl.StdCtrls;

type
  TFrmPesquisarMDFe = class(TFrmBase)
    Panel1: TPanel;
    dsBusca: TDataSource;
    DBGrid1: TDBGrid;
    fdBusca: TFDQuery;
    fdBuscaMDF_REGISTRO: TIntegerField;
    fdBuscaSERIE: TWideStringField;
    fdBuscaMDF_NUMERO: TIntegerField;
    fdBuscaMDF_EMISSAO: TSQLTimeStampField;
    fdBuscaMDF_INICIO_VIAGEM: TSQLTimeStampField;
    fdBuscaMDF_TIPO_EMITENTE: TIntegerField;
    fdBuscaMDF_MODALIDADE: TIntegerField;
    fdBuscaMDF_FORMA_EMISSAO: TIntegerField;
    fdBuscaMDF_UFDESCARREGAMENTO: TWideStringField;
    fdBuscaMDF_RNTRC: TWideStringField;
    fdBuscaMDF_CIOT: TWideStringField;
    fdBuscaMDF_UFVEICULO: TWideStringField;
    fdBuscaMDF_TIPOCARROCEIRA: TIntegerField;
    fdBuscaMDF_TIPORODADO: TIntegerField;
    fdBuscaMDF_PLACA: TWideStringField;
    fdBuscaMDF_CAPACIDADEKG: TFMTBCDField;
    fdBuscaMDF_CAPACIDADEM3: TFMTBCDField;
    fdBuscaMDF_TARA: TBCDField;
    fdBuscaMDF_RENAVAM: TWideStringField;
    fdBuscaMDF_TOTAL: TFMTBCDField;
    fdBuscaMDF_NAO_PERTENCE: TWideStringField;
    fdBuscaMDF_UN: TWideStringField;
    fdBuscaMDF_PESOBRUTO: TFMTBCDField;
    fdBuscaMDF_INFADCIIONAIS: TBlobField;
    fdBuscaMDF_INFCOMPLEMNETARES: TBlobField;
    fdBuscaMDF_UFCARREGAMENTO: TWideStringField;
    fdBuscaMDF_CHAVE: TWideStringField;
    fdBuscaMDF_PROTOCOLO: TWideStringField;
    fdBuscaMDF_DHRECEBIMENTO: TSQLTimeStampField;
    fdBuscaMDF_STATUS: TIntegerField;
    Label1: TLabel;
    btnPesquisas: TButton;
    edPesquisa: TEdit;
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure fdBuscaMDF_STATUSGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure btnPesquisasClick(Sender: TObject);
    procedure edPesquisaChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    procedure filtro;
  public
    { Public declarations }
  end;

var
  FrmPesquisarMDFe: TFrmPesquisarMDFe;

implementation

{$R *.dfm}
uses uformmdf, uprincipal;

procedure TFrmPesquisarMDFe.btnPesquisasClick(Sender: TObject);
begin
  inherited;
  filtro;
end;

procedure TFrmPesquisarMDFe.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  if not assigned(FrmMDF) then
    FrmMDF := TFrmMDF.Create(Application);
  try
    FrmMDF.Estado := eEdicao;
    FrmMDF.MDF_reg := fdBusca.FieldByName('mdf_registro').AsInteger;
    FrmMDF.ShowModal;
  finally
    FreeAndNil(FrmMDF);
    filtro;
  end;

end;

procedure TFrmPesquisarMDFe.edPesquisaChange(Sender: TObject);
begin
  inherited;
  filtro;
end;

procedure TFrmPesquisarMDFe.fdBuscaMDF_STATUSGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if not fdBusca.IsEmpty then
  begin
    case Sender.AsInteger of
        0: text :=  'Cadastrado';
      103: text := 'em processo';
      104: TEXT := 'processado';
      100: text := 'autorizado';
      101: text := 'cancelado';
      else
        text := 'rejeitado';
    end;

  end;
end;

procedure TFrmPesquisarMDFe.filtro;
var sql :string;
begin
  sql := 'select * from MANIFESTO_DOC';
  if edPesquisa.Text <> '' then
    sql := sql + ' where mdf_chave CONTAINING '+QuotedStr(edPesquisa.Text)+
                 ' or mdf_numero CONTAINING '+QuotedStr(edPesquisa.Text);
  fdBusca.Open(sql);
end;

procedure TFrmPesquisarMDFe.FormCreate(Sender: TObject);
begin
  inherited;
  FDConnec := FrmPrincipal.FDConnec;
end;

procedure TFrmPesquisarMDFe.FormShow(Sender: TObject);
begin
  inherited;
  filtro;
end;

end.
