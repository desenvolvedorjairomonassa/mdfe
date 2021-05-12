unit uFormCTE;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFormBase, FireDAC.UI.Intf, FireDAC.VCLUI.Wait, FireDAC.Phys.FBDef, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB, ACBrBase,
  ACBrEnterTab, FireDAC.Comp.Client, Data.DB, FireDAC.Phys.IBBase, FireDAC.Comp.UI, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask, FireDAC.Comp.DataSet;

type
  TFrmBase4 = class(TFrmBase)
    dsMDFe: TDataSource;
    fdMDFe: TFDQuery;
    fdMDFeMDF_REGISTRO: TIntegerField;
    fdMDFeSERIE: TWideStringField;
    fdMDFeMDF_NUMERO: TIntegerField;
    fdMDFeMDF_EMISSAO: TSQLTimeStampField;
    fdMDFeMDF_INICIO_VIAGEM: TSQLTimeStampField;
    fdMDFeMDF_TIPO_EMITENTE: TIntegerField;
    fdMDFeMDF_MODALIDADE: TIntegerField;
    fdMDFeMDF_UFCARREGAMENTO: TWideStringField;
    fdMDFeMDF_FORMA_EMISSAO: TIntegerField;
    fdMDFeMDF_UFDESCARREGAMENTO: TWideStringField;
    fdMDFeMDF_RNTRC: TWideStringField;
    fdMDFeMDF_CIOT: TWideStringField;
    fdMDFeMDF_UFVEICULO: TWideStringField;
    fdMDFeMDF_TIPOCARROCEIRA: TIntegerField;
    fdMDFeMDF_TIPORODADO: TIntegerField;
    fdMDFeMDF_PLACA: TWideStringField;
    fdMDFeMDF_CAPACIDADEKG: TFMTBCDField;
    fdMDFeMDF_CAPACIDADEM3: TFMTBCDField;
    fdMDFeMDF_TARA: TBCDField;
    fdMDFeMDF_RENAVAM: TWideStringField;
    fdMDFeMDF_TOTAL: TFMTBCDField;
    fdMDFeMDF_NAO_PERTENCE: TWideStringField;
    fdMDFeMDF_UN: TWideStringField;
    fdMDFeMDF_PESOBRUTO: TFMTBCDField;
    fdMDFeMDF_INFADCIIONAIS: TBlobField;
    fdMDFeMDF_INFCOMPLEMNETARES: TBlobField;
    fdMDFeMDF_STATUS: TSmallintField;
    fdMDFemdf_chave: TWideStringField;
    fdMDFeMDF_PROTOCOLO: TWideStringField;
    fdMDFeMDF_DHRECEBIMENTO: TSQLTimeStampField;
    fdMDFeMDF_LOTE: TIntegerField;
    fdMDFeMDF_ERROS: TWideMemoField;
    fdMDFeMDF_RECEBIMENTO: TWideStringField;
    fdMDFeMDF_CNPJSEGURADORA: TWideStringField;
    fdMDFeMDF_NOMESEGURADORA: TWideStringField;
    fdMDFeMDF_CPFRESP: TWideStringField;
    fdMDFeMDF_CNPJRESP: TWideStringField;
    fdMDFeMDF_RESPSEG: TIntegerField;
    fdMDFeMDF_NAPOLICE: TWideStringField;
    fdMDFeMDF_XML: TWideMemoField;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    DBEdit2: TDBEdit;
    dbEdit: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    cbUF_empresa: TDBComboBox;
    DBEdit23: TDBEdit;
    btnselecionarCidade: TButton;
    rgAmbiente: TDBRadioGroup;
    pControle: TPanel;
    btncancelar: TButton;
    btnconfirmar: TButton;
    btnTransmitir: TButton;
    btnCancelarMdfe: TButton;
    Button1: TButton;
    btnPrevisualizacao: TButton;
    btnimpressao: TButton;
    teste: TButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Panel2: TPanel;
    Edit1: TEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBComboBox5: TDBComboBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmBase4: TFrmBase4;

implementation

{$R *.dfm}

end.
