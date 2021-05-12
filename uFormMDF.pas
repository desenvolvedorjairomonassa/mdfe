unit uFormMDF;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFormBase, FireDAC.UI.Intf,
  FireDAC.VCLUI.Wait, FireDAC.Phys.FBDef, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.FB, Data.DB, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.ComCtrls, ACBrEnterTab, ACBrMDFeDAMDFeClass, ACBrMDFeDAMDFeRLClass,
  ACBrDFe, ACBrMDFe, ACBrBase, ACBrValidador, Vcl.Mask, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet, FireDAC.Phys.IBBase, FireDAC.Comp.UI,
  System.MaskUtils, uformdoc,   ACBrUtil,
  pcnconversao, pmdfeConversaoMDFe, ACBrDFeSSL, ACBrDFeReport;
type
  Testado = (eNovo, eEdicao,eConsulta, eExclussao, eCancelamento);

type
  TFrmMDF = class(TFrmBase)
    Panel1: TPanel;
    fdempresa: TFDQuery;
    fdempresacnpj: TWideStringField;
    fdempresainsc_estadual: TWideStringField;
    fdempresafantasia: TWideStringField;
    fdempresalogradouro: TWideStringField;
    fdempresanumero_ende: TIntegerField;
    fdempresacomplemento: TWideStringField;
    fdempresabairro: TWideStringField;
    fdempresarazao: TWideStringField;
    Label1: TLabel;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    dbEdit: TDBEdit;
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
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    fdempresaemail: TWideStringField;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    fdempresauf: TWideStringField;
    fdempresamunicipio: TWideStringField;
    fdempresatelefone: TWideStringField;
    fdempresacep: TWideStringField;
    pControle: TPanel;
    btncancelar: TButton;
    fdMDFe: TFDQuery;
    fdMDFeMDF_REGISTRO: TIntegerField;
    fdMDFeSERIE: TWideStringField;
    fdMDFeMDF_NUMERO: TIntegerField;
    fdMDFeMDF_EMISSAO: TSQLTimeStampField;
    fdMDFeMDF_INICIO_VIAGEM: TSQLTimeStampField;
    fdMDFeMDF_TIPO_EMITENTE: TIntegerField;
    fdMDFeMDF_MODALIDADE: TIntegerField;
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
    dsMDFe: TDataSource;
    dsempresa: TDataSource;
    fdMDFeMDF_UFCARREGAMENTO: TWideStringField;
    fdCondutores: TFDQuery;
    dscondutores: TDataSource;
    fdCondutoresMCO_NOME: TWideStringField;
    fdCondutoresMCO_CPF: TWideStringField;
    fdCondutoresMDF_REGISTRO: TIntegerField;
    ACBrValidadorCpf: TACBrValidador;
    ACBrMDFe1: TACBrMDFe;
    ACBrMDFeDAMDFeRL1: TACBrMDFeDAMDFeRL;
    fdmunicipios_carrega: TFDQuery;
    fdmunicipios_carregaCD_GCMUN: TIntegerField;
    mun_carga: TDataSource;
    fdmunicipios_carreganm_uf: TWideStringField;
    fdmunicipios_carregaNM_MUN_2017: TWideStringField;
    fdmunicipios_carregamdf_registro: TIntegerField;
    cbUF_empresa: TDBComboBox;
    Label30: TLabel;
    DBEdit23: TDBEdit;
    Label31: TLabel;
    fdUFpercurso: TFDQuery;
    fdUFpercursoMDF_UF_PERCURSO: TWideStringField;
    fdUFpercursoMDF_REGISTRO: TIntegerField;
    dsUFPercurso: TDataSource;
    dsCidadedescarga: TDataSource;
    fdcidadeDescarga: TFDQuery;
    fdcidadeDescargaCD_GCMUN: TIntegerField;
    fdcidadeDescargaMDF_REGISTRO: TIntegerField;
    fdcidadeDescargaNM_UF: TWideStringField;
    fdcidadeDescargaNM_MUN_2017: TWideStringField;
    fdDocCte: TFDQuery;
    fdDocCteSEGCODBARRA: TWideStringField;
    fdDocCteINDREENTREGA: TWideStringField;
    fdDocCteMDF_REGISTRO: TIntegerField;
    fdDocCteCHAVE: TWideStringField;
    dsCte: TDataSource;
    fdDocCteqtde: TAggregateField;
    fdPeriCte: TFDQuery;
    dsPeriCte: TDataSource;
    fdPeriCteNONU: TWideStringField;
    fdPeriCteNOMEAE: TWideStringField;
    fdPeriCteCLARISCO: TWideStringField;
    fdPeriCteGREMB: TWideStringField;
    fdPeriCteTOTPROD: TBCDField;
    fdPeriCteVOLTIPO: TBCDField;
    fdPeriCteMDF_REGISTRO: TIntegerField;
    fdDocCtemdoc_registro: TIntegerField;
    dsLacre: TDataSource;
    fdLacres: TFDQuery;
    fdLacresLAC_LACRE: TWideStringField;
    fdLacresMDF_REGISTRO: TIntegerField;
    dsLacres: TDataSource;
    fdDownload: TFDQuery;
    dsDownload: TDataSource;
    fdDownloadMDF_CNPJCPF: TWideStringField;
    fdDownloadMDF_REGISTRO: TIntegerField;
    fdLacre_cte: TFDQuery;
    fdUnid_cte: TFDQuery;
    fdUnid_cteUTC_REGISTRO: TIntegerField;
    fdUnid_cteTIPO: TIntegerField;
    fdUnid_cteIDUNIDTRANSP: TWideStringField;
    fdUnid_cteQTDERATEADA: TBCDField;
    fdUnid_cteMDOC_REGISTRO: TIntegerField;
    fdUnid_cteMDF_REGISTRO: TIntegerField;
    fdLacre_cteLACRE: TWideStringField;
    fdLacre_cteUTC_REGISTRO: TIntegerField;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    fdLacre_cteMDF_REGISTRO: TIntegerField;
    btnconfirmar: TButton;
    fdDocNfe: TFDQuery;
    AggregateField1: TAggregateField;
    dsDocNfe: TDataSource;
    fdPeriNfe: TFDQuery;
    dsPeriNfe: TDataSource;
    Panel2: TPanel;
    pcMDF: TPageControl;
    tsDados: TTabSheet;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    uf: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Edit1: TEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBComboBox1: TDBComboBox;
    cbUFEmissao: TDBComboBox;
    cbUFdescarga: TDBComboBox;
    DBComboBox4: TDBComboBox;
    DBComboBox5: TDBComboBox;
    gbLocalCarrega: TGroupBox;
    Panel5: TPanel;
    Button2: TButton;
    btnAdLocal: TButton;
    dblocalcarga: TDBGrid;
    GroupBox2: TGroupBox;
    Panel6: TPanel;
    btnExcluir: TButton;
    btnAdUFPercursor: TButton;
    cbUF: TComboBox;
    DBGrid2: TDBGrid;
    tsRodoviario: TTabSheet;
    PageControl2: TPageControl;
    TabSheet1: TTabSheet;
    Label20: TLabel;
    Label21: TLabel;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    GroupBox3: TGroupBox;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label22: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    DBComboBox7: TDBComboBox;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBComboBox8: TDBComboBox;
    DBComboBox6: TDBComboBox;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    GroupBox4: TGroupBox;
    DBGrid1: TDBGrid;
    Panel4: TPanel;
    btnAlterCondutor: TButton;
    btnExcluirCondutor: TButton;
    btnIncCondutor: TButton;
    tsAquaviario: TTabSheet;
    tsInfDoc: TTabSheet;
    PageControl3: TPageControl;
    tsmunicipios_descarga: TTabSheet;
    Panel7: TPanel;
    btnAdMuniDescarga: TButton;
    btnExcluirDecarga: TButton;
    DBGrid3: TDBGrid;
    tsCTE: TTabSheet;
    Panel8: TPanel;
    Button4: TButton;
    Button5: TButton;
    btnincCte: TButton;
    DBGrid4: TDBGrid;
    TabSheet6: TTabSheet;
    Panel11: TPanel;
    Button3: TButton;
    Button6: TButton;
    btnNfe: TButton;
    tstotalizadores: TTabSheet;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    cbUnidade: TDBComboBox;
    DBEdit27: TDBEdit;
    GroupBox1: TGroupBox;
    Panel9: TPanel;
    Label37: TLabel;
    btnexcluirUnidade: TButton;
    btnIncluirLacre: TButton;
    edlacre: TEdit;
    dbLacre: TDBGrid;
    GroupBox5: TGroupBox;
    Panel10: TPanel;
    Label38: TLabel;
    btnIncluirDown: TButton;
    btnExcluirDown: TButton;
    eddoc_download: TEdit;
    dbDownload: TDBGrid;
    tsInfAdic: TTabSheet;
    DBMemo1: TDBMemo;
    tsInfCompl: TTabSheet;
    DBMemo2: TDBMemo;
    fdDocNfeMDOC_REGISTRO: TIntegerField;
    fdDocNfeCHAVE: TWideStringField;
    fdDocNfeSEGCODBARRA: TWideStringField;
    fdDocNfeINDREENTREGA: TWideStringField;
    fdDocNfeMDF_REGISTRO: TIntegerField;
    fdLacre_nfe: TFDQuery;
    WideStringField1: TWideStringField;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    fdUnid_nfe: TFDQuery;
    IntegerField5: TIntegerField;
    IntegerField6: TIntegerField;
    WideStringField2: TWideStringField;
    BCDField3: TBCDField;
    IntegerField7: TIntegerField;
    IntegerField8: TIntegerField;
    fdPeriNfeNONU: TWideStringField;
    fdPeriNfeNOMEAE: TWideStringField;
    fdPeriNfeCLARISCO: TWideStringField;
    fdPeriNfeGREMB: TWideStringField;
    fdPeriNfeTOTPROD: TBCDField;
    fdPeriNfeVOLTIPO: TBCDField;
    fdPeriNfeMDOC_REGISTRO: TIntegerField;
    fdPeriNfeMDF_REGISTRO: TIntegerField;
    fdPeriCteMDOC_REGISTRO: TIntegerField;
    DBGrid8: TDBGrid;
    fdLacre_cteMDOC_REGISTRO: TIntegerField;
    fdLacre_nfeMDOC_REGISTRO: TIntegerField;
    fdempresaCD_GCMUN: TIntegerField;
    btnselecionarCidade: TButton;
    fdDocNfeCD_GCMUN: TIntegerField;
    fdDocCteCD_GCMUN: TIntegerField;
    fdDocNfeNM_MUN_2017: TWideStringField;
    fdDocCteNM_MUN_2017: TWideStringField;
    fdDocCtenm_uf: TWideStringField;
    fdDocNfenm_uf: TWideStringField;
    btnTransmitir: TButton;
    btnCancelarMdfe: TButton;
    fdempresaambiente: TIntegerField;
    fdMDFeMDF_STATUS: TSmallintField;
    fdMDFemdf_chave: TWideStringField;
    rgAmbiente: TDBRadioGroup;
    tsErros: TTabSheet;
    Button1: TButton;
    btnPrevisualizacao: TButton;
    fdMDFeMDF_PROTOCOLO: TWideStringField;
    fdMDFeMDF_DHRECEBIMENTO: TSQLTimeStampField;
    fdMDFeMDF_LOTE: TIntegerField;
    fdMDFeMDF_ERROS: TWideMemoField;
    merro: TDBMemo;
    TabSheet3: TTabSheet;
    fdMDFeMDF_RECEBIMENTO: TWideStringField;
    fdMDFeMDF_CNPJSEGURADORA: TWideStringField;
    fdMDFeMDF_NOMESEGURADORA: TWideStringField;
    fdMDFeMDF_CPFRESP: TWideStringField;
    fdMDFeMDF_CNPJRESP: TWideStringField;
    fdMDFeMDF_RESPSEG: TIntegerField;
    DBEdit1: TDBEdit;
    DBComboBox2: TDBComboBox;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    DBEdit28: TDBEdit;
    GroupBox6: TGroupBox;
    Label42: TLabel;
    Label43: TLabel;
    DBEdit29: TDBEdit;
    DBEdit30: TDBEdit;
    fdMDFeMDF_NAPOLICE: TWideStringField;
    DBEdit31: TDBEdit;
    Label44: TLabel;
    fdMDFeMDF_XML: TWideMemoField;
    fdaverbacao: TFDQuery;
    fdaverbacaoMDF_REGISTRO: TIntegerField;
    fdaverbacaoAVERBACAO: TWideStringField;
    dsAverbacao: TDataSource;
    GroupBox7: TGroupBox;
    Panel3: TPanel;
    btnExcluirAverba: TButton;
    btnIncaverba: TButton;
    edaverba: TEdit;
    gdAverba: TDBGrid;
    btnimpressao: TButton;
    teste: TButton;
    procedure FormShow(Sender: TObject);
    procedure fdMDFeMDF_MODALIDADEGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure fdMDFeMDF_MODALIDADESetText(Sender: TField; const Text: string);
    procedure fdMDFeMDF_TIPO_EMITENTEGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure fdMDFeMDF_TIPO_EMITENTESetText(Sender: TField;
      const Text: string);
    procedure fdMDFeMDF_FORMA_EMISSAOGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure fdMDFeMDF_FORMA_EMISSAOSetText(Sender: TField;
      const Text: string);
    procedure fdMDFeMDF_TIPOCARROCEIRAGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure fdMDFeMDF_TIPOCARROCEIRASetText(Sender: TField;
      const Text: string);
    procedure fdMDFeMDF_TIPORODADOGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure fdMDFeMDF_TIPORODADOSetText(Sender: TField; const Text: string);
    procedure btnIncCondutorClick(Sender: TObject);
    procedure btnAdLocalClick(Sender: TObject);
    procedure btnconfirmarClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure btnAlterCondutorClick(Sender: TObject);
    procedure btnExcluirCondutorClick(Sender: TObject);
    procedure fdempresacnpjSetText(Sender: TField; const Text: string);
    procedure fdempresacnpjGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure btnAdUFPercursorClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnAdMuniDescargaClick(Sender: TObject);
    procedure btnExcluirDecargaClick(Sender: TObject);
    procedure btn(Sender: TObject);
    procedure btnincCteClick(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure btnIncluirLacreClick(Sender: TObject);
    procedure fdLacresAfterInsert(DataSet: TDataSet);
    procedure edlacreKeyPress(Sender: TObject; var Key: Char);
    procedure btnexcluirUnidadeClick(Sender: TObject);
    procedure edlacreEnter(Sender: TObject);
    procedure edlacreExit(Sender: TObject);
    procedure btnIncluirDownClick(Sender: TObject);
    procedure eddoc_downloadKeyPress(Sender: TObject; var Key: Char);
    procedure btnExcluirDownClick(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure btnNfeClick(Sender: TObject);
    procedure Button6Click(Sender: TObject);

    procedure btnselecionarCidadeClick(Sender: TObject);
    procedure btnTransmitirClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure mdfAfterInsert(DataSet: TDataSet);
    procedure btnPrevisualizacaoClick(Sender: TObject);
    procedure fdMDFeMDF_CNPJSEGURADORAGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure fdMDFeMDF_CNPJSEGURADORASetText(Sender: TField; const Text: string);
    procedure fdMDFeMDF_CNPJRESPSetText(Sender: TField; const Text: string);
    procedure fdMDFeMDF_CNPJRESPGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure fdMDFeMDF_RESPSEGGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure fdMDFeMDF_RESPSEGSetText(Sender: TField; const Text: string);
    procedure fdaverbacaoAfterInsert(DataSet: TDataSet);
    procedure edaverbaKeyPress(Sender: TObject; var Key: Char);
    procedure edaverbaEnter(Sender: TObject);
    procedure edaverbaExit(Sender: TObject);
    procedure btnIncaverbaClick(Sender: TObject);
    procedure btnExcluirAverbaClick(Sender: TObject);
    procedure btnimpressaoClick(Sender: TObject);
    procedure testeClick(Sender: TObject);
  private
    fEstado : Testado;
    fmdf_reg : integer;
    procedure SetEstado (const Value: Testado);
    procedure SetMdf_reg (const value : integer);

    procedure ValidarEnvio ;
    procedure GerarMDFe ;
    procedure Configurar;
    procedure GravarRetorno( const chave, protocolo :string ; const DataRecebimento : TDateTime; const Status,Lote, reg : Integer;
                            const recebimento, mensagem : string);
    procedure GravarXMLFinal (const xml: WideString; const reg : integer);
    procedure ExcluiMunicipioDescarga(cd_gcmun: Integer);
  public
    property Estado: Testado read festado  write SetEstado ;
    property MDF_reg : integer read fmdf_reg write SetMdf_reg;
  end;

var
  FrmMDF: TFrmMDF;

implementation

{$R *.dfm}
uses  frmcidades;

procedure TFrmMDF.btnAdLocalClick(Sender: TObject);
var
   i : integer;
begin
  inherited;
  if not assigned (frmMunicicios) then
    frmMunicicios := tfrmMunicicios.Create(self);
  try
    if frmMunicicios.ShowModal=mrOk then
    begin
      if frmMunicicios.DBcidade.SelectedRows.Count> 0 then
      begin

       // clone.CloneCursor(frmMunicicios.fdcidade,false);
        for i:=0 to frmMunicicios.DBcidade.SelectedRows.Count-1 do
        begin
          frmMunicicios.DBcidade.DataSource.DataSet.GotoBookmark((frmMunicicios.DBcidade.SelectedRows.Items[i]));
          fdmunicipios_carrega.Insert;
          fdmunicipios_carregaCD_GCMUN.AsInteger :=  frmMunicicios.DBcidade.DataSource.DataSet.FieldByName('CD_GCMUN').AsInteger;
          fdmunicipios_carregamdf_registro.AsInteger := fdMDFeMDF_REGISTRO.AsInteger;
          fdmunicipios_carreganm_uf.AsString :=  frmMunicicios.DBcidade.DataSource.DataSet.FieldByName('nm_uf').AsString;
          fdmunicipios_carregaNM_MUN_2017.AsString := frmMunicicios.DBcidade.DataSource.DataSet.FieldByName('NM_MUN_2017').AsString;
          fdmunicipios_carrega.Post;

          //clone.FieldByName('NM_MUN_2017')
        end;
      end;
    end;
  finally
    FreeAndNil(frmMunicicios);
  end;


end;

procedure TFrmMDF.btnAdMuniDescargaClick(Sender: TObject);
var
   i : integer;
begin
  if not assigned (frmMunicicios) then
    frmMunicicios := tfrmMunicicios.Create(self);
  try
    if frmMunicicios.ShowModal=mrOk then
    begin
      if frmMunicicios.DBcidade.SelectedRows.Count> 0 then
      begin

       // clone.CloneCursor(frmMunicicios.fdcidade,false);
        for i:=0 to frmMunicicios.DBcidade.SelectedRows.Count-1 do
        begin
          frmMunicicios.DBcidade.DataSource.DataSet.GotoBookmark((frmMunicicios.DBcidade.SelectedRows.Items[i]));
          fdcidadeDescarga.Insert;
          fdcidadeDescargaCD_GCMUN.AsInteger :=  frmMunicicios.DBcidade.DataSource.DataSet.FieldByName('CD_GCMUN').AsInteger;
          fdcidadeDescargaMDF_REGISTRO.AsInteger := fdMDFeMDF_REGISTRO.AsInteger;
          fdcidadeDescargaNM_UF.AsString :=  frmMunicicios.DBcidade.DataSource.DataSet.FieldByName('nm_uf').AsString;
          fdcidadeDescargaNM_MUN_2017.AsString := frmMunicicios.DBcidade.DataSource.DataSet.FieldByName('NM_MUN_2017').AsString;
          fdcidadeDescarga.Post;

          //clone.FieldByName('NM_MUN_2017')
        end;
      end;
    end;
  finally
    FreeAndNil(frmMunicicios);
  end;


end;

procedure TFrmMDF.btnAdUFPercursorClick(Sender: TObject);
begin
  inherited;
  if cbUF.ItemIndex <> -1 then
  begin
    if fdUFpercurso.Active then
       fdUFpercurso.Insert;
    fdUFpercursoMDF_UF_PERCURSO.AsString := cbUF.Text;
    fdUFpercursoMDF_REGISTRO.AsInteger := fdMDFe.FieldByName('mdf_registro').AsInteger;
    fdUFpercurso.Post;
  end;

end;

procedure TFrmMDF.btnAlterCondutorClick(Sender: TObject);
var cpf,nome : string ;
begin
  if fdCondutores.IsEmpty then
    exit;
  cpf := InputBox('Digite CPF','CPF válido: ',fdCondutores.FieldByName('mco_cpf').AsString) ;
  cpf := OnlyNumber(cpf);
  ACBrValidadorCpf.Documento := cpf ;
  while not ACBrValidadorCpf.Validar do
  begin
     cpf := InputBox('Digite CPF válido','CPF inválido: ',cpf) ;
     if cpf = ''  then
        exit;
      cpf := OnlyNumber(cpf) ;
     ACBrValidadorCpf.Documento := cpf ;
  end;
  nome := InputBox('Digite condutor','Condutor',fdCondutores.FieldByName('mco_nome').AsString) ;
  fdCondutores.Edit;
  fdCondutoresMCO_NOME.AsString := nome;
  fdCondutoresMCO_CPF.AsString := cpf;
  fdCondutores.Post;
end;

procedure TFrmMDF.btnExcluirAverbaClick(Sender: TObject);
var
  I: Integer;
begin
  inherited;
  if gdAverba.SelectedRows.Count>0 then
  begin
    for I := 0 to gdAverba.SelectedRows.Count-1 do
    begin
      gdAverba.DataSource.DataSet.GotoBookmark(gdAverba.SelectedRows.Items[i]);
      gdAverba.DataSource.DataSet.Delete;
    end;
  end;
end;

procedure TFrmMDF.btnExcluirClick(Sender: TObject);
begin
  inherited;
  if not fdUFpercurso.IsEmpty then
  begin
    fdUFpercurso.Delete;
  end;
end;

procedure TFrmMDF.btnExcluirCondutorClick(Sender: TObject);
begin
  inherited;
  if not fdCondutores.IsEmpty then
    fdCondutores.Delete;
end;

procedure TFrmMDF.btnExcluirDecargaClick(Sender: TObject);
begin
  inherited;
  if not fdcidadeDescarga.IsEmpty then
  begin
    fdcidadeDescarga.Delete;

  end;

end;

procedure TFrmMDF.btnExcluirDownClick(Sender: TObject);
var
  I: Integer;
begin
  inherited;
  if dbDownload.SelectedRows.Count>0 then
  begin
    for I := 0 to dbDownload.SelectedRows.Count-1 do
    begin
      dbDownload.DataSource.DataSet.GotoBookmark(dbDownload.SelectedRows.Items[i]);
      dbDownload.DataSource.DataSet.Delete;
    end;
  end;
end;

procedure TFrmMDF.btnexcluirUnidadeClick(Sender: TObject);
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

procedure TFrmMDF.btnIncaverbaClick(Sender: TObject);
begin
  inherited;
  fdaverbacao.Insert;
  fdaverbacao.FieldByName('averbacao').AsString := edaverba.Text;
  fdaverbacao.Post;
  edaverba.Clear;
end;

procedure TFrmMDF.btnIncCondutorClick(Sender: TObject);
var cpf,nome : string ;
begin
  inherited;
  cpf := InputBox('Digite CPF','CPF válido: ','') ;
  cpf := OnlyNumber(cpf);
  ACBrValidadorCpf.Documento := cpf ;
  while not ACBrValidadorCpf.Validar do
  begin
     cpf := InputBox('Digite CPF válido','CPF inválido: ',cpf) ;
     if cpf = ''  then
        exit;
      cpf := OnlyNumber(cpf) ;
     ACBrValidadorCpf.Documento := cpf ;
  end;
  nome := InputBox('Digite condutor','Condutor','') ;
  if fdCondutores.Active then
  fdCondutores.Insert;
  fdCondutoresMCO_NOME.AsString := nome;
  fdCondutoresMCO_CPF.AsString := cpf;
  fdCondutoresMDF_REGISTRO.AsInteger := fdMDFeMDF_REGISTRO.AsInteger;
  fdCondutores.Post;
end;

procedure TFrmMDF.btn(Sender: TObject);
begin
  inherited;
  try
    fdempresa.Cancel;
    fdempresa.CancelUpdates;
    fdMDFe.CancelUpdates;
    fdUFpercurso.CancelUpdates;
    fdCondutores.CancelUpdates;
    fdmunicipios_carrega.CancelUpdates;
    fdcidadeDescarga.CancelUpdates;
    fdaverbacao.CancelUpdates;
    fdDownload.CancelUpdates;
    fdLacres.CancelUpdates;
    fdDocCte.CancelUpdates;
    fdPeriCte.CancelUpdates;
    fdUnid_cte.CancelUpdates;
    fdLacre_cte.CancelUpdates;

    fdDocNfe.CancelUpdates;
    fdPeriNfe.CancelUpdates;
    fdUnid_nfe.CancelUpdates;
    fdLacre_nfe.CancelUpdates;
  except
   on e: exception do
   begin

     ShowMessage('Erro:'+ e.Message);

   end;

  end;
    close;
end;

procedure TFrmMDF.Button1Click(Sender: TObject);
var chave : string;
begin
  inherited;
  GerarMDFe;
  chave := Copy(ACBrMDFe1.Manifestos.Items[0].MDFe.infMDFe.Id, 5, 44) ;
  ACBrMDFe1.Manifestos.Items[0].GravarXML(CHAVE+'-mdfe.xml' , '');
  //ACBrMDFe1.Manifestos.Items[0].ImprimirPDF;
  ACBrMDFe1.Manifestos.Items[0].Imprimir;
end;

procedure TFrmMDF.Button2Click(Sender: TObject);
var i : integer;
begin
  inherited;
  try
    fdmunicipios_carrega.DisableControls;
    if dblocalcarga.SelectedRows.Count = 0 then
      raise Exception.Create('Selecione ao menos uma linha.');
    for I := 0 to dblocalcarga.SelectedRows.Count-1 do
    begin
      dblocalcarga.DataSource.DataSet.GotoBookmark(dblocalcarga.SelectedRows.Items[i]);
      dblocalcarga.DataSource.DataSet.Delete;
    end;
  finally
    fdmunicipios_carrega.EnableControls;
  end;
end;

procedure TFrmMDF.btnconfirmarClick(Sender: TObject);
begin
  inherited;
  try
    if fdempresa.State  in dsEditModes then
    begin
      fdempresa.Post;
      fdempresa.ApplyUpdates(-1) ;
    end;
    fdMDFe.ApplyUpdates(-1) ;
    fdUFpercurso.ApplyUpdates(-1);
    fdCondutores.ApplyUpdates(-1);
    fdmunicipios_carrega.ApplyUpdates(-1) ;
    fdcidadeDescarga.ApplyUpdates(-1);
    fdDownload.ApplyUpdates(-1)  ;
    fdLacres.ApplyUpdates(-1) ;

    fdDocCte.ApplyUpdates(-1);
    fdPeriCte.ApplyUpdates(-1) ;
    fdLacre_cte.ApplyUpdates(-1) ;
    fdUnid_cte.ApplyUpdates(-1);

    fdDocNfe.ApplyUpdates(-1);
    fdPeriNfe.ApplyUpdates(-1);
    fdLacre_nfe.ApplyUpdates(-1);
    fdUnid_nfe.ApplyUpdates(-1);
    fdaverbacao.ApplyUpdates(-1);
    FDConnec.Commit;
  except
   on e: exception do
   begin
     FDConnec.Rollback;
     ShowMessage('Erro:'+ e.Message);

   end;

  end;
end;

procedure TFrmMDF.Button4Click(Sender: TObject);
begin
  inherited;
 if not assigned(FrmDocMDFe) then
     FrmDocMDFe := TFrmDocMDFe.Create(Application);
  try
    FrmDocMDFe.Caption := 'Conhecimento de Transporte eletrônico - CTe';
    frmdocmdfe.Estado := eNovoDoc;

    if FrmDocMDFe.ShowModal  = mrOk then
    begin
       fdDocCte.Insert;
       fdDocCte.FieldByName('mdf_registro').AsInteger := fdMDFe.FieldByName('mdf_registro').AsInteger;
       fddoccte.FieldByName('mcte_registro').AsInteger := proximaSequencia('gen_cte_reg');
       fdDocCte.CopyRecord(FrmDocMDFe.mtDoc);
       //FrmDocMDFe.mtDoc.CopyRecord(fdDocCte);


    end;
  finally
    FreeAndNil(FrmDocMDFe);
  end;
end;

procedure TFrmMDF.Button5Click(Sender: TObject);
var reg, cd_gcmun : integer;

begin
  inherited;
  if not fdDocCte.IsEmpty then
  begin
    try
      reg := fddoccte.FieldByName('mdoc_registro').AsInteger;
      // produtos perigosos
      fdPeriCte.Filter := 'mdoc_registro = ' + inttostr(reg);
      fdPeriCte.Filtered := True;
      fdPeriCte.First;
      if not fdPeriCte.IsEmpty then
        while not fdPeriCte.Eof  do
          fdPeriCte.Delete;
      //unidade de transporte

      fdUnid_cte.Filtered := False;
      fdUnid_cte.Filter := 'mdoc_registro = ' + inttostr(reg);
      fdUnid_cte.Filtered := True;
      fdUnid_cte.First;
      if not fdUnid_cte.IsEmpty then
        while not fdUnid_cte.Eof  do
          fdUnid_cte.Delete;
      // lacrea da unidade de transporte
      fdLacre_cte.Filtered := False;
      fdLacre_cte.Filter := 'mdoc_registro = ' + inttostr(reg);
      fdLacre_cte.Filtered := True;
      fdLacre_cte.First;
      if not fdLacre_cte.IsEmpty then
        while not fdLacre_cte.Eof  do
          fdLacre_cte.Delete;
    finally
     fdPeriCte.Filtered := False;
     fdUnid_cte.Filtered := False;
     fdLacre_cte.Filtered := False;
    end;
    cd_gcmun := fdDocCte.FieldByName('cd_gcmun').AsInteger;
    fdDocCte.Delete;
    ExcluiMunicipioDescarga(cd_gcmun);
  end;
end;

procedure TFrmMDF.Button6Click(Sender: TObject);
var
 reg :integer;
 cd_gcmun : integer;
begin
  inherited;

  if not fdDocNfe.IsEmpty then
  begin
    try
      reg := fdDocNfe.FieldByName('mdoc_registro').AsInteger;
      // produtos perigosos
      fdPeriNfe.Filter := 'mdoc_registro = ' + inttostr(reg);
      fdPeriNfe.Filtered := True;
      fdPeriNfe.First;
      if not fdPeriNfe.IsEmpty then
        while not fdPeriNfe.Eof  do
          fdPeriNfe.Delete;
      //unidade de transporte

      fdUnid_nfe.Filtered := False;
      fdUnid_nfe.Filter := 'mdoc_registro = ' + inttostr(reg);
      fdUnid_nfe.Filtered := True;
      fdUnid_nfe.First;
      if not fdUnid_nfe.IsEmpty then
        while not fdUnid_nfe.Eof  do
          fdUnid_nfe.Delete;

      // lacrea da unidade de transporte
      fdLacre_nfe.Filtered := False;
      fdLacre_nfe.Filter := 'mdoc_registro = ' + inttostr(reg);
      fdLacre_nfe.Filtered := True;
      fdLacre_nfe.First;
      if not fdLacre_nfe.IsEmpty then
        while not fdLacre_nfe.Eof  do
          fdLacre_nfe.Delete;

    finally
     fdPeriNfe.Filtered := False;
     fdUnid_nfe.Filtered := False;
     fdLacre_nfe.Filtered := False;
    end;
    cd_gcmun:= fdDocNfe.FieldByName('cd_gcmun').AsInteger;
    fdDocNfe.Delete;
    ExcluiMunicipioDescarga(cd_gcmun);

  end;
end;

procedure TFrmMDF.btnselecionarCidadeClick(Sender: TObject);
begin
  inherited;
  if not assigned (frmMunicicios) then
    frmMunicicios := tfrmMunicicios.Create(self);
  try
    frmMunicicios.DBcidade.Options :=  [dgTitles,dgIndicator,dgColumnResize,dgColLines,dgRowLines,dgTabs,dgCancelOnExit,dgTitleClick,dgTitleHotTrack];
    frmMunicicios.cbUF.Text := cbUF_empresa.Text;
    if frmMunicicios.ShowModal = mrOk then
    begin
      if fdempresa.State in dsEditModes then
        fdempresa.Edit;
      fdempresa.FieldByName('cd_gcmun').AsInteger :=  frmMunicicios.DBcidade.DataSource.DataSet.FieldByName('cd_gcmun').AsInteger ;
      fdempresa.FieldByName('municipio').AsString :=  frmMunicicios.DBcidade.DataSource.DataSet.FieldByName('NM_MUN_2017').AsString;
    end;

  finally
    FreeAndNil(frmMunicicios);
  end;
end;

procedure TFrmMDF.btnimpressaoClick(Sender: TObject);
begin
  inherited;
  if ACBrMDFe1.Manifestos.Count = 0  then
  begin
    if fdMDFe.FieldByName('mdf_xml').AsString = '' then
      GerarMDFe
    else
      ACBrMDFe1.Manifestos.LoadFromString(fdMDFe.FieldByName('mdf_xml').AsString ) ;
  end;
  ACBrMDFe1.Manifestos.Items[0].Imprimir;
end;

procedure TFrmMDF.Configurar;
var
  caminho : string;
  ok : boolean;
begin
   caminho := ExtractFilePath(Application.ExeName) ;
   ACBrMDFe1.DAMDFE := ACBrMDFeDAMDFeRL1;
  with ACBrMDFe1.Configuracoes,Arquivos, Geral, WebServices  do
  begin
    DownloadMDFe.PathDownload := caminho+'\MDFe\download\';
    PathMDFe := caminho+'\MDFe\';
    PathSalvar := caminho+'\MDFe\';
    PathSchemas := caminho+'\MDFe\Schemas\';
    Salvar := True;
    SepararPorAno := True;
    SepararPorMes := True;
    ExibirErroSchema := True;
    SSLLib := libWinCrypt;

    AguardarConsultaRet := 10000;
    AjustaAguardaConsultaRet := True;
    if rgAmbiente.ItemIndex = 0 then
      Ambiente := taProducao
    else
      Ambiente := taHomologacao;
    Tentativas := 5;
    TimeOut := 5000;
    UF:= cbUF_empresa.Text;
    Visualizar := false;
  end;

end;

procedure TFrmMDF.eddoc_downloadKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #13 then
    btnIncluirDown.Click;
end;

procedure TFrmMDF.edaverbaEnter(Sender: TObject);
begin
  inherited;
  ACBrEnterTab1.EnterAsTab := False;
end;

procedure TFrmMDF.edaverbaExit(Sender: TObject);
begin
  inherited;
  ACBrEnterTab1.EnterAsTab := True;
end;

procedure TFrmMDF.edaverbaKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key=#13 then
    btnIncaverba.Click;
end;

procedure TFrmMDF.edlacreEnter(Sender: TObject);
begin
  inherited;
  ACBrEnterTab1.EnterAsTab := False;
end;

procedure TFrmMDF.edlacreExit(Sender: TObject);
begin
  inherited;
  ACBrEnterTab1.EnterAsTab := True;
end;

procedure TFrmMDF.edlacreKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #13 then
    btnIncluirLacre.Click;


end;

procedure TFrmMDF.btnincCteClick(Sender: TObject);
begin
  inherited;
  if not assigned(FrmDocMDFe) then
     FrmDocMDFe := TFrmDocMDFe.Create(Application);
  try
    FrmDocMDFe.Caption := 'Conhecimento de Transporte eletrônico - CTe';
    FrmDocMDFe.cbUF.Text :=  cbUFdescarga.Text;
    frmdocmdfe.Estado := eNovoDoc;
    frmdocmdfe.TipoDoc := tCte;
    if FrmDocMDFe.ShowModal  = mrOk then
    begin
       fdDocCte.Insert;
       fdDocCte.FieldByName('mdf_registro').AsInteger := fdMDFe.FieldByName('mdf_registro').AsInteger;
       fdDocCte.CopyRecord(FrmDocMDFe.mtDoc);

       if not fdcidadeDescarga.Locate('CD_GCMUN',fdDocCte.FieldByName('CD_GCMUN').AsInteger,[])  then
       begin
         fdcidadeDescarga.Insert;
         fdcidadeDescargaCD_GCMUN.AsInteger := FrmDocMDFe.mtDoc.FieldByName('CD_GCMUN').AsInteger;
         fdcidadeDescargaMDF_REGISTRO.AsInteger := fdMDFeMDF_REGISTRO.AsInteger;
         fdcidadeDescargaNM_UF.AsString := FrmDocMDFe.mtDoc.FieldByName('nm_uf').AsString;
         fdcidadeDescargaNM_MUN_2017.AsString := FrmDocMDFe.mtDoc.FieldByName('NM_MUN_2017').AsString;
         fdcidadeDescarga.Post;

       end;
       if not FrmDocMDFe.mtPeri.IsEmpty then
        fdPeriCte.CopyDataSet(FrmDocMDFe.mtPeri,[coAppend ,coDelete,coRestart]);
       if not FrmDocMDFe.mtUnidade.IsEmpty then
         fdUnid_cte.CopyDataSet(FrmDocMDFe.mtUnidade,[coAppend ,coRestart] );
       if not FrmDocMDFe.mtLacre.IsEmpty then
         fdLacre_cte.CopyDataSet(FrmDocMDFe.mtLacre,[coAppend, coRestart]);
       //FrmDocMDFe.mtDoc.CopyRecord(fdDocCte);
       fddoccte.post;
    end;
  finally
    FreeAndNil(FrmDocMDFe);
  end;
end;

procedure TFrmMDF.btnIncluirDownClick(Sender: TObject);
begin
  inherited;
  fdDownload.Insert;
  fdDownload.FieldByName('mdf_cnpjcpf').AsString :=
                                             OnlyNumber(eddoc_download.Text);
   fdDownload.FieldByName('mdf_registro').AsInteger   :=
                               fdMDFe.FieldByName('mdf_registro').AsInteger ;
  fdDownload.Post;
  eddoc_download.Clear;
end;

procedure TFrmMDF.btnIncluirLacreClick(Sender: TObject);
begin
  inherited;
  fdLacres.Insert;
  fdLacres.FieldByName('lac_lacre').AsString := edlacre.Text;
  fdLacres.Post;
  edlacre.Clear;
end;

procedure TFrmMDF.btnNfeClick(Sender: TObject);
begin
  inherited;
  if not assigned(FrmDocMDFe) then
     FrmDocMDFe := TFrmDocMDFe.Create(Application);
  try
    FrmDocMDFe.Caption :=  'Nota Fiscal eletrônica - NFe';
    FrmDocMDFe.cbUF.Text :=  cbUFdescarga.Text;
    frmdocmdfe.Estado := eNovoDoc;
    frmdocmdfe.TipoDoc := tNFe;
    if FrmDocMDFe.ShowModal  = mrOk then
    begin
       fdDocNfe.Insert;
       fdDocNfe.FieldByName('mdf_registro').AsInteger := fdMDFe.FieldByName('mdf_registro').AsInteger;
       fdDocNfe.CopyRecord(FrmDocMDFe.mtDoc);

       if not fdcidadeDescarga.Locate('CD_GCMUN',fdDocNfe.FieldByName('CD_GCMUN').AsInteger,[])  then
       begin
         fdcidadeDescarga.Insert;
         fdcidadeDescargaCD_GCMUN.AsInteger := FrmDocMDFe.mtDoc.FieldByName('CD_GCMUN').AsInteger;
         fdcidadeDescargaMDF_REGISTRO.AsInteger := fdMDFeMDF_REGISTRO.AsInteger;
         fdcidadeDescargaNM_UF.AsString := FrmDocMDFe.mtDoc.FieldByName('nm_uf').AsString;
         fdcidadeDescargaNM_MUN_2017.AsString := FrmDocMDFe.mtDoc.FieldByName('NM_MUN_2017').AsString;
         fdcidadeDescarga.Post;

       end;
       if not FrmDocMDFe.mtPeri.IsEmpty then
        fdPeriNfe.CopyDataSet(FrmDocMDFe.mtPeri,[coAppend ,coDelete,coRestart]);
       if not FrmDocMDFe.mtUnidade.IsEmpty then
         fdUnid_nfe.CopyDataSet(FrmDocMDFe.mtUnidade,[coAppend ,coRestart] );
       if not FrmDocMDFe.mtLacre.IsEmpty then
         fdLacre_nfe.CopyDataSet(FrmDocMDFe.mtLacre,[coAppend, coRestart]);

       fdDocNfe.post;
    end;
  finally
    FreeAndNil(FrmDocMDFe);
  end;

end;

procedure TFrmMDF.btnPrevisualizacaoClick(Sender: TObject);
var chave : string;
begin
  inherited;
  GerarMDFe;
  chave := Copy(ACBrMDFe1.Manifestos.Items[0].MDFe.infMDFe.Id, 5, 44) ;
  ACBrMDFe1.Manifestos.Items[0].GravarXML(CHAVE+'-mdfe.xml' , '');
  //ACBrMDFe1.Manifestos.Items[0].ImprimirPDF;
  ACBrMDFe1.Manifestos.Items[0].Imprimir;

end;

procedure TFrmMDF.btnTransmitirClick(Sender: TObject);
var
  vNumLote : integer;
  retorno : boolean;
  status: integer;
  motivo, msgErro,sprotocolo, recibo , erros, chave : string;
begin
  inherited;
  try
    btnconfirmar.Click;
    fdempresa.DisableControls;
    fdMDFe.DisableControls;
    fdUFpercurso.DisableControls;
    fdCondutores.DisableControls;
    fdmunicipios_carrega.DisableControls;
    fdcidadeDescarga.DisableControls;
    fdaverbacao.DisableControls;
    fdDownload.DisableControls;
    fdLacres.DisableControls;
    fdDocCte.DisableControls;
    fdPeriCte.DisableControls;
    fdUnid_cte.DisableControls;
    fdLacre_cte.DisableControls;

    fdDocNfe.DisableControls;
    fdPeriNfe.DisableControls;
    fdUnid_nfe.DisableControls;
    fdLacre_nfe.DisableControls;

    Cursor := crHourGlass;
    pControle.Enabled := False;
    Application.ProcessMessages;
    ValidarEnvio  ;
    ACBrMDFe1.Manifestos.Clear;
    Configurar;
    if not ACBrMDFe1.SSL.CertificadoLido then
      ACBrMDFe1.SSL.SelecionarCertificado;
    GerarMDFe;
    ACBrMDFe1.Manifestos.Assinar;
    try
      ACBrMDFe1.Manifestos.Validar;
    except
      on e: exception do
      begin
        if not (fdMDFe.State in dsEditModes) then
           fdMDFe.Edit;
        merro.Lines.Clear;
        merro.Lines.Add(e.Message);
        fdMDFe.Post;
        fdmdfe.ApplyUpdates(-1) ;
        raise Exception.Create('Ocorreram erros (ao gravar):'+e.Message);
      end;

    end;
    Application.ProcessMessages;
    if not ACBrMDFe1.Manifestos.ValidarRegrasdeNegocios(erros) then
    begin
      merro.Lines.Text := erros;
      if (MessageDlg('Ocorreram erros (ao validar):'+erros+#13#10+'Deseja continuar mesmo assim? ', mtConfirmation, [mbYes, mbNo], 0) = mrNo) then
         exit;

    end;
    vNumLote := proximaSequencia('gen_mdfe_lote');
    try
      retorno := ACBrMDFe1.Enviar(vNumLote,true);
    except
      on E : Exception do
      begin

        status := ACBrMDFe1.WebServices.Retorno.cStat;
        motivo :=ACBrMDFe1.WebServices.Retorno.xMotivo;
        msgErro := ACBrMDFe1.WebServices.Retorno.Msg ;
        if not (fdMDFe.State in dsEditModes) then
           fdMDFe.Edit;
        merro.Lines.Clear;
        merro.Lines.Text   := inttostr(status)+ '-' + motivo;
        sprotocolo := ACBrMDFe1.WebServices.Retorno.protocolo;
        recibo := ACBrMDFe1.WebServices.Retorno.Recibo ;
        sprotocolo := ACBrMDFe1.WebServices.Retorno.protocolo;

        chave :=ACBrMDFe1.WebServices.Retorno.chavemdfe;// Copy(ACBrMDFe1.Manifestos.Items[0].MDFe.infMDFe.Id, 5, 44);
        if msgErro ='' then
          msgErro :=  ACBrMDFe1.WebServices.Enviar.Msg;

        GravarRetorno(chave,sprotocolo,now,status,vNumLote,fdMDFe.FieldByName('mdf_registro').AsInteger,recibo, motivo);

        retorno := False;
        //GravarRetorno(chave,sprotocolo,);
        raise Exception.Create('Rejeitado');
      end;

    end;
    if retorno  then
    begin
      chave :=  ACBrMDFe1.WebServices.Retorno.chavemdfe;
      status := ACBrMDFe1.WebServices.Retorno.cStat;
      motivo :=ACBrMDFe1.WebServices.Retorno.xMotivo;
      sprotocolo := ACBrMDFe1.WebServices.Retorno.protocolo;
      recibo := ACBrMDFe1.WebServices.Retorno.Recibo ;

      GravarRetorno(chave,sprotocolo,now,status,vNumLote,fdMDFe.FieldByName('mdf_registro').AsInteger,recibo, motivo);
      GravarXMLFinal(ACBrMDFe1.Manifestos.Items[0].XMLAssinado,fdMDFe.FieldByName('mdf_registro').AsInteger);

    end;
  finally
    fdempresa.EnableControls;
    fdMDFe.EnableControls;
    fdUFpercurso.EnableControls;
    fdCondutores.EnableControls;
    fdmunicipios_carrega.EnableControls;
    fdcidadeDescarga.EnableControls;
    fdaverbacao.EnableControls;
    fdDownload.EnableControls;
    fdLacres.EnableControls;
    fdDocCte.EnableControls;
    fdPeriCte.EnableControls;
    fdUnid_cte.EnableControls;
    fdLacre_cte.EnableControls;

    fdDocNfe.EnableControls;
    fdPeriNfe.EnableControls;
    fdUnid_nfe.EnableControls;
    fdLacre_nfe.EnableControls;
    pcMDF.ActivePage := tsErros;
    pControle.Enabled := True;
    Cursor := crDefault;
  end;

end;

procedure TFrmMDF.fdaverbacaoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  fdaverbacao.FieldByName('mdf_registro').AsInteger :=
         fdMDFe.FieldByName('mdf_registro').AsInteger;


end;

procedure TFrmMDF.fdempresacnpjGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  inherited;
  Text := FormatMaskText('99.999.999/9999-99;0', Sender.AsString);
end;

procedure TFrmMDF.fdempresacnpjSetText(Sender: TField; const Text: string);
begin
  inherited;
  Sender.Value := OnlyNumber(Text);
end;

procedure TFrmMDF.fdLacresAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if fdLacres.FieldByName('mdf_registro').IsNull then
    fdLacres.FieldByName('mdf_registro').AsInteger :=
                                  fdMDFe.FieldByName('mdf_registro').AsInteger ;
end;

procedure TFrmMDF.fdMDFeMDF_CNPJRESPGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
 Text := FormatMaskText('99.999.999/9999-99;0', Sender.AsString);
end;

procedure TFrmMDF.fdMDFeMDF_CNPJRESPSetText(Sender: TField; const Text: string);
begin
  inherited;
  Sender.Value := OnlyNumber(Text);
end;

procedure TFrmMDF.fdMDFeMDF_CNPJSEGURADORAGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text := FormatMaskText('99.999.999/9999-99;0', Sender.AsString);
end;

procedure TFrmMDF.fdMDFeMDF_CNPJSEGURADORASetText(Sender: TField; const Text: string);
begin
  inherited;
  Sender.Value := OnlyNumber(Text);
end;

procedure TFrmMDF.fdMDFeMDF_FORMA_EMISSAOGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    1 : Text:= 'Normal';
    2 : Text:= 'Contingência' ;
  end;
end;

procedure TFrmMDF.fdMDFeMDF_FORMA_EMISSAOSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  if text = 'Normal' then Sender.AsInteger := 1
  else if Text = 'Contingência' then Sender.AsInteger := 2
end;

procedure TFrmMDF.fdMDFeMDF_MODALIDADEGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    1 : Text := 'Rodoviário';
    2 : Text := 'Aéreo';
    3 : Text := 'Aquaviário';
    4 : Text := 'Ferroviário';
  end;

end;

procedure TFrmMDF.fdMDFeMDF_MODALIDADESetText(Sender: TField;
  const Text: string);
begin
  inherited;
  if text = 'Rodoviário' then Sender.AsInteger := 1
  else if text = 'Aéreo' then Sender.AsInteger := 2
  else if text = 'Aquaviário' then Sender.AsInteger := 3
  else if text = 'Ferroviário' then Sender.AsInteger := 4;
end;

procedure TFrmMDF.fdMDFeMDF_RESPSEGGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
   1 : text := 'Emitente do MDF-e';
   2 : text := 'Responsável pela contratação do serviço de transporte (contratante)';
  end;

end;

procedure TFrmMDF.fdMDFeMDF_RESPSEGSetText(Sender: TField; const Text: string);
begin
  inherited;
  if text = 'Emitente do MDF-e' then Sender.AsInteger := 1
  else if text = 'Responsável pela contratação do serviço de transporte (contratante)' then sender.AsInteger := 2;

end;

procedure TFrmMDF.fdMDFeMDF_TIPOCARROCEIRAGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    00 : Text:= 'Não aplicável';
    01 : Text:= 'Aberta';
    02 : Text:= 'Fechada/Baú';
    03 : Text:= 'Granelera';
    04 : Text:= 'Porta Container';
    05 : Text:= 'Sider';
  end;

end;

procedure TFrmMDF.fdMDFeMDF_TIPOCARROCEIRASetText(Sender: TField;
  const Text: string);
begin
  inherited;
  if Text = 'Não aplicável' then Sender.AsInteger := 0
  else if Text = 'Aberta' then Sender.AsInteger := 1
  else if Text = 'Fechada/Baú' then Sender.AsInteger := 2
  else if text = 'Granelera' then Sender.AsInteger := 3
  else if text =  'Porta Container' then Sender.AsInteger := 4
  else if text =  'Sider' then Sender.AsInteger:= 5;

end;

procedure TFrmMDF.fdMDFeMDF_TIPORODADOGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  inherited;
  case sender.AsInteger of
    01 : Text:= 'Truck';
    02 : Text:= 'Toco';
    03 : Text:= 'Cavalo Mecânico';
    04 : Text:= 'VAN';
    05 : Text := 'Utilitário';
    06 : Text:= 'Outros';
  end;

end;

procedure TFrmMDF.fdMDFeMDF_TIPORODADOSetText(Sender: TField;
  const Text: string);
begin
  inherited;
    if text = 'Truck' then Sender.AsInteger := 1
    else if text = 'Toco' then Sender.AsInteger := 2
    else if text = 'Cavalo Mecânico' then sender.AsInteger := 3
    else if text = 'VAN' then Sender.AsInteger := 4
    else if text = 'Utilitário' then Sender.AsInteger := 5
    else if text =  'Outros' then sender.AsInteger := 6;

end;

procedure TFrmMDF.fdMDFeMDF_TIPO_EMITENTEGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  case sender.AsInteger of
    1: Text:= 'Prestador de serviço de transporte';
    2: Text:= 'Transportador de Carga Própria';
  end;
end;

procedure TFrmMDF.fdMDFeMDF_TIPO_EMITENTESetText(Sender: TField;
  const Text: string);
begin
  inherited;
  if Text = 'Prestador de serviço de transporte' then sender.AsInteger := 1
  else if Text = 'Transportador de Carga Própria' then  sender.AsInteger := 2;

end;

procedure TFrmMDF.mdfAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if DataSet.FieldByName('mdf_registro').IsNull then
    DataSet.FieldByName('mdf_registro').AsInteger :=
                           fdMDFe.FieldByName('mdf_registro').AsInteger;
end;

procedure TFrmMDF.FormShow(Sender: TObject);
var reg : integer;
begin
  inherited;
  Configurar;
  //fdempresa.Connection := FDConnec;
  fdempresa.Open('select * from empresa ');
  if fdempresa.IsEmpty then
  begin
    fdempresa.Insert ;
  end
  else
  begin

    fdempresa.Edit;
    dbEdit.Enabled := False;
  end;
  if self.Estado = eNovo then
  begin
    fdMDFe.FetchOptions.RecsMax := 0;
    fdMDFe.Open('select * from manifesto_doc');
    fdMDFe.Insert;
    reg:= proximaSequencia('GEN_MANIFESTO_REG');
    fdMDFe.FieldByName('mdf_status').AsInteger := 0; //cadastrado
    fdMDFe.FieldByName('mdf_registro').AsInteger:= reg;
    fdMDFe.FetchOptions.RecsMax := 1;
    fdMDFe.FieldByName('MDF_EMISSAO').AsDateTime := now;
    cbUFEmissao.Text := cbUF_empresa.Text;
  end
  else if self.Estado = eEdicao then
  begin
     reg := fmdf_reg;
     fdMDFe.Open('select * from manifesto_doc where mdf_registro = '+IntToStr(reg));
     fdMDFe.Edit;
  end;
  if fdMDFe.FieldByName('MDF_NUMERO').IsNull then
    fdMDFe.FieldByName('MDF_NUMERO').AsInteger := proximaSequencia('GEN_MANIFESTO_DOC');
  if  fdMDFe.FieldByName('mdf_status').IsNull then
     fdMDFe.FieldByName('mdf_status').AsInteger := 0;
  pcMDF.Enabled := NOT (FdMDFe.FieldByName('mdf_status').AsInteger IN [100,101]);
  btnconfirmar.Enabled := NOT (FdMDFe.FieldByName('mdf_status').AsInteger IN [100,101]);
  btnconfirmar.Enabled:= NOT (FdMDFe.FieldByName('mdf_status').AsInteger IN [100,101]);
  btnCancelarMdfe.Enabled :=  (FdMDFe.FieldByName('mdf_status').AsInteger <> 100 ) ;
  fdmunicipios_carrega.Open('select mc.*, nm_uf, nm_mun_2017 from mdf_cidades mc ' +
  ' join cidades ci on (ci.CD_GCMUN = mc.CD_GCMUN) where mdf_registro = '+IntToStr(reg));
  fdcidadeDescarga.Open('select mc.*, nm_uf, nm_mun_2017 from MDF_CID_DESCARREGA mc ' +
  ' join cidades ci on (ci.CD_GCMUN = mc.CD_GCMUN) where mdf_registro = '+IntToStr(reg));
  fdCondutores.Open('select * from mdf_condutores where mdf_registro = '+IntToStr(reg));
  fdUFpercurso.Open('select * from MDF_UF_PERCURSO where mdf_registro = '+IntToStr(reg));
  fdDocCte.Open('select cte.*,nm_uf, nm_mun_2017  from mdf_cte cte join cidades ci on (ci.CD_GCMUN = cte.CD_GCMUN) '+
  ' where mdf_registro = '+IntToStr(reg));
  fdPeriCte.Open('select * from mdfcte_peri where mdf_registro = '+IntToStr(reg));

  fdUnid_cte.Open('select * from UnidTransp_cte where mdf_registro = '+IntToStr(reg));
  fdLacre_cte.Open('select * from lacre_UnidTransp_cte where mdf_registro = '+IntToStr(reg));

  fdDocNfe.Open('select nfe.*, nm_uf, nm_mun_2017  from mdf_nfe nfe join cidades ci on (ci.CD_GCMUN = nfe.CD_GCMUN) '+
  ' where mdf_registro = '+IntToStr(reg));
  fdPerinfe.Open('select * from mdfnfe_peri where mdf_registro = '+IntToStr(reg));

  fdUnid_nfe.Open('select * from UnidTransp_nfe where mdf_registro = '+IntToStr(reg));
  fdLacre_nfe.Open('select * from lacre_UnidTransp_nfe where mdf_registro = '+IntToStr(reg));

  fdLacres.Open('select * from mdf_lacres where mdf_registro = '+IntToStr(reg));
  fdDownload.Open('select * from mdf_download where mdf_registro = '+IntToStr(reg));
  fdaverbacao.Open('select * from mdf_averbacao where mdf_registro = '+IntToStr(reg));
end;

procedure TFrmMDF.GerarMDFe;
var
   ok : boolean;
begin
  with ACBrMDFe1.Manifestos.Add.MDFe do
  begin
    //
    // Dados de Identificação do MDF-e
    //
    Ide.cUF := UFtoCUF(fdempresa.FieldByName('UF').AsString);

    // TpcnTipoAmbiente = (taProducao, taHomologacao);
    case rgAmbiente.ItemIndex of
      0: Ide.tpAmb := taProducao;
      1: Ide.tpAmb := taHomologacao;
    end;

    // TMDFeTpEmitente = ( teTransportadora, teTranspCargaPropria );

    Ide.tpEmit  := StrToTpEmitente(ok,IntToStr(fdMDFe.FieldByName('MDF_TIPO_EMITENTE').AsInteger));
    Ide.modelo  := '58';
    Ide.serie   := StrToInt(fdMDFe.FieldByName('serie').AsString);

    Ide.nMDF    := fdMDFe.FieldByName('MDF_NUMERO').AsInteger;
    Ide.cMDF    := 1;  // Código Aleatório
    // TMDFeModal = ( moRodoviario, moAereo, moAquaviario, moFerroviario );
    Ide.modal   := StrToModal(ok, IntToStr(fdMDFe.FieldByName('MDF_MODALIDADE').AsInteger));
    Ide.dhEmi   := fdMDFe.FieldByName('MDF_EMISSAO').AsDateTime;
    // TpcnTipoEmissao = (teNormal, teContingencia, teSCAN, teDPEC, teFSDA);
    Ide.tpEmis  := StrToTpEmis(ok, IntToStr(fdMDFe.FieldByName('MDF_FORMA_EMISSAO').AsInteger));
    // TpcnProcessoEmissao = (peAplicativoContribuinte, peAvulsaFisco, peAvulsaContribuinte, peContribuinteAplicativoFisco);
    Ide.procEmi := peAplicativoContribuinte;
    Ide.verProc := '1.0';
    Ide.UFIni   := fdMDFe.FieldByName('MDF_UFCARREGAMENTO').AsString;
    Ide.UFFim   := fdMDFe.FieldByName('MDF_UFDESCARREGAMENTO').AsString;
    if not fdmunicipios_carrega.IsEmpty then
    begin
      fdmunicipios_carrega.First;
      while not fdmunicipios_carrega.Eof  do
      begin

        with Ide.infMunCarrega.Add do
        begin
          cMunCarrega := fdmunicipios_carrega.FieldByName('cd_gcmun').AsInteger;
          xMunCarrega := fdmunicipios_carrega.FieldByName('nm_mun_2017').AsString;
        end;
        fdmunicipios_carrega.Next;
      end;
    end;

    //
    // Dados do Emitente
    //
    Emit.CNPJCPF  := fdempresa.FieldByName('cnpj').AsString;
    Emit.IE    := fdempresa.FieldByName('INSC_ESTADUAL').AsString;
    Emit.xNome := fdempresa.FieldByName('razao').AsString;
    Emit.xFant := fdempresa.FieldByName('fantasia').AsString;

    Emit.EnderEmit.xLgr    := fdempresa.FieldByName('logradouro').AsString;
    Emit.EnderEmit.nro     := IntToStr( fdempresa.FieldByName('numero_ende').AsInteger);
    Emit.EnderEmit.xCpl    := fdempresa.FieldByName('complemento').AsString;
    Emit.EnderEmit.xBairro := fdempresa.FieldByName('bairro').AsString;
    Emit.EnderEmit.cMun    := StrToInt(fdempresa.FieldByName('cd_gcmun').AsString);
    Emit.EnderEmit.xMun    := fdempresa.FieldByName('municipio').AsString ;
    Emit.EnderEmit.CEP     := StrToIntDef(fdempresa.FieldByName('cep').AsString, 0);
    Emit.EnderEmit.UF      := fdempresa.FieldByName('UF').AsString;
    Emit.EnderEmit.fone    := fdempresa.FieldByName('telefone').AsString;
    Emit.enderEmit.email   := fdempresa.FieldByName('email').AsString;

    rodo.RNTRC := fdMDFe.FieldByName('MDF_RNTRC').AsString ;
    rodo.CIOT  := fdMDFe.FieldByName('MDF_CIOT').AsString ;

    rodo.veicTracao.cInt    := '001';
    rodo.veicTracao.placa   := fdMDFe.FieldByName('MDF_PLACA').AsString;
    rodo.veicTracao.RENAVAM := fdMDFe.FieldByName('MDF_RENAVAM').AsString;
    rodo.veicTracao.tara    := Round (fdMDFe.FieldByName('MDF_TARA').AsFloat);
    rodo.veicTracao.capKG   := Round(fdMDFe.FieldByName('MDF_CAPACIDADEKG').AsFloat);
    rodo.veicTracao.capM3   := Round(fdMDFe.FieldByName('MDF_CAPACIDADEM3').AsFloat);

    // TpcteTipoRodado = (trNaoAplicavel, trTruck, trToco, trCavaloMecanico, trVAN, trUtilitario, trOutros);
    // Para o MDF-e não utilizar o trNaoAplicavel.
    rodo.veicTracao.tpRod := StrToTpRodado(OK,'0'+IntToStr(fdMDFe.FieldByName('MDF_TIPORODADO').AsInteger));

    // TpcteTipoCarroceria = (tcNaoAplicavel, tcAberta, tcFechada, tcGraneleira, tcPortaContainer, tcSider);
    rodo.veicTracao.tpCar := StrToTpCarroceria(OK,'0'+IntToStr(fdMDFe.FieldByName('MDF_TIPOCARROCEIRA').AsInteger));
    rodo.veicTracao.UF := fdMDFe.FieldByName('MDF_UFVEICULO').AsString;
    if not fdCondutores.IsEmpty then
    begin
      fdCondutores.First;
      while not fdCondutores.Eof do
      begin
        with rodo.veicTracao.condutor.Add do
        begin
          xNome := fdCondutores.FieldByName('MCO_NOME').AsString;
          CPF   := fdCondutores.FieldByName('MCO_CPF').AsString;
        end;

        fdCondutores.Next;
      end;

    end;

//    with rodo.veicReboque.Add do
//    begin
//      cInt    := '002';
//      placa   := 'XYZ4567';
//      RENAVAM := '123456789';
//      tara    := 4000;
//      capKG   := 3000;
//      capM3   := 300;
//
//      // TpcteTipoCarroceria = (tcNaoAplicavel, tcAberta, tcFechada, tcGraneleira, tcPortaContainer, tcSider);
//      tpCar := tcFechada;
//
//      UF := edtEmitUF.Text;
//    end;

//    with rodo.valePed.disp.Add do
//    begin
//      CNPJForn := '12345678000199';
//      CNPJPg   := '21543876000188';
//      nCompra  := '789';
//    end;
    fdcidadeDescarga.First;
    while not fdcidadeDescarga.Eof do
    begin
      with infDoc.infMunDescarga.Add do
      begin
        cMunDescarga := fdcidadeDescarga.FieldByName('CD_GCMUN').AsInteger;
        xMunDescarga := fdcidadeDescarga.FieldByName('nm_mun_2017').AsString;
        //adicionando Cte
        fdDocCte.Filtered := False;
        fdDocCte.Filter :=  'CD_GCMUN = '+ IntToStr(fdcidadeDescarga.FieldByName('CD_GCMUN').AsInteger);
        fdDocCte.Filtered := True;
        fdDocCte.First;
        while not fdDocCte.Eof do
        begin
          with infCTe.Add do
          begin
            chCTe := fdDocCte.FieldByName('chave').AsString;
            SegCodBarra := fdDocCte.FieldByName('segcodbarra').AsString;
            if fdDocCte.FieldByName('INDREENTREGA').AsString = '1' then
              indReentrega := fdDocCte.FieldByName('INDREENTREGA').AsString;
            // CARGA PERIGOSA
            fdPeriCte.Filtered := False;
            fdPeriCte.Filter := 'mdoc_registro ='+ IntToStr(fdDocCte.FieldByName('mdoc_registro').AsInteger);
            fdPeriCte.Filtered := True;
            if not fdPeriCte.IsEmpty then
            begin
              fdPeriCte.First;
              while not fdPeriCte.Eof do
              begin
                with peri.Add do
                begin
                  nONU := fdPeriCte.FieldByName('NONU').AsString;
                  xNomeAE := fdPeriCte.FieldByName('NOMEAE').AsString;
                  xClaRisco := fdPeriCte.FieldByName('CLARISCO').AsString;
                  grEmb     := fdPeriCte.FieldByName('GREMB').AsString;
                  qTotProd := FormatFloat( '##0.00', fdPeriCte.FieldByName('TOTPROD').AsFloat );
                  qVolTipo := FormatFloat( '##0.00', fdPeriCte.FieldByName('VOLTIPO').AsFloat );
                end;
                fdPeriCte.Next;
              end;
            end;
            // Informações das Unidades de Transporte (Carreta/Reboque/Vagão)
            fdUnid_cte.Filtered := False;
            fdUnid_cte.Filter := 'mdoc_registro  = '+ IntToStr(fdDocCte.FieldByName('mdoc_registro').AsInteger);
            fdUnid_cte.Filtered := True;
            fdUnid_cte.First;
            while not fdUnid_cte.Eof do
            begin
              with infUnidTransp.Add do
              begin
                //TpcnUnidTransp = ( utRodoTracao, utRodoReboque, utNavio, utBalsa, utAeronave, utVagao, utOutros );
                tpUnidTransp := StrToUnidTransp(ok,IntToStr(fdUnid_cte.FieldByName('tipo').AsInteger));// utRodoTracao;
                idUnidTransp := fdUnid_cte.FieldByName('IDUNIDTRANSP').AsString;  // informar a placa se rodoviário
                fdLacre_cte.Filtered := False;
                fdLacre_cte.Filter := 'utc_registro = '+ IntToStr(fdUnid_cte.FieldByName('utc_registro').AsInteger);
                fdLacre_cte.Filtered := True;
                fdlacre_cte.First;
                while not fdLacre_cte.Eof do
                begin
                  with lacUnidTransp.Add do
                  begin
                    nLacre := fdlacre_cte.FieldByName('lacre').AsString;
                  end;
                  fdLacre_cte.Next;
                end;

                qtdRat := fdUnid_cte.FieldByName('QTDERATEADA').AsFloat;
              end;

              fdUnid_cte.Next;
            end;

          end; // fim do with
          fdDocCte.Next;
        end;
         //adicionando NFE
        fdDocNFE.Filtered := False;
        fdDocNFE.Filter :=  'CD_GCMUN = '+ IntToStr(fdcidadeDescarga.FieldByName('CD_GCMUN').AsInteger);
        fdDocNFE.Filtered := True;
        fdDocNFE.First;

        while not fdDocNFE.Eof do
        begin
          with infNFE.Add do
          begin
            chnfe := fdDocNFE.FieldByName('chave').AsString;
            SegCodBarra := fdDocNFE.FieldByName('segcodbarra').AsString;
            if fdDocNFE.FieldByName('INDREENTREGA').AsString = '1' then
              indReentrega := fdDocNFE.FieldByName('INDREENTREGA').AsString;
			      // CARGA PERIGOSA
            fdPeriNFE.Filtered := False;
            fdPeriNFE.Filter := 'mdoc_registro ='+ IntToStr(fdDocCte.FieldByName('mdoc_registro').AsInteger);
            fdPeriNFE.Filtered := True;
            if not fdPeriNFE.IsEmpty then
            begin
              fdPeriNFE.First;
              while not fdPeriNFE.Eof do
              begin
                with peri.Add do
                begin
                  nONU := fdPeriNFE.FieldByName('NONU').AsString;
                  xNomeAE := fdPeriNFE.FieldByName('NOMEAE').AsString;
                  xClaRisco := fdPeriNFE.FieldByName('CLARISCO').AsString;
                  grEmb     := fdPeriNFE.FieldByName('GREMB').AsString;
                  qTotProd := FormatFloat( '##0.00', fdPeriNFE.FieldByName('TOTPROD').AsFloat );
                  qVolTipo := FormatFloat( '##0.00', fdPeriNFE.FieldByName('VOLTIPO').AsFloat );
                end;
                fdPeriNFE.Next;
              end;
            end;
            // Informações das Unidades de Transporte (Carreta/Reboque/Vagão)
            fdUnid_nfe.Filtered := False;
            fdUnid_nfe.Filter := 'mdoc_registro  = '+ IntToStr(fdDocNFE.FieldByName('mdoc_registro').AsInteger);
            fdUnid_nfe.Filtered := True;
            fdUnid_nfe.First;
            while not fdUnid_nfe.Eof do
            begin
              with infUnidTransp.Add do
              begin
                //TpcnUnidTransp = ( utRodoTracao, utRodoReboque, utNavio, utBalsa, utAeronave, utVagao, utOutros );
                tpUnidTransp := StrToUnidTransp(ok,IntToStr(fdUnid_nfe.FieldByName('tipo').AsInteger));// utRodoTracao;
                idUnidTransp := fdUnid_nfe.FieldByName('IDUNIDTRANSP').AsString;  // informar a placa se rodoviário
                fdLacre_nfe.Filtered := False;
                fdLacre_nfe.Filter := 'utc_registro = '+ IntToStr(fdUnid_nfe.FieldByName('utc_registro').AsInteger);
                fdLacre_nfe.Filtered := True;
                fdLacre_nfe.First;
                while not fdLacre_nfe.Eof do
                begin
                  with lacUnidTransp.Add do
                  begin
                    nLacre := fdLacre_nfe.FieldByName('lacre').AsString;
                  end;
                  fdLacre_nfe.Next;
                end;

                qtdRat := fdUnid_nfe.FieldByName('QTDERATEADA').AsFloat;
              end;

              fdUnid_nfe.Next;
            end;

          end; // fim do with
          fdDocNFE.Next;
        end;
      end;
      fdcidadeDescarga.Next;
    end;
    // seguro da carga
    with seg.Add do
    begin
       respSeg :=  StrToRspSeguroMDFe(OK,IntToStr(fdMDFe.FieldByName('MDF_respSeg').AsInteger) );
       if fdMDFe.FieldByName('MDF_cnpjresp').AsString <> '' then
          CNPJCPF := OnlyNumber(fdMDFe.FieldByName('MDF_cnpjresp').AsString)
       else if fdMDFe.FieldByName('mdf_cpfresp').AsString <> '' then
          CNPJCPF := OnlyNumber(fdMDFe.FieldByName('mdf_cpfresp').AsString);
       xSeg    := fdMDFe.FieldByName('MDF_nomeSeguradora').AsString;
       CNPJ    := OnlyNumber(fdMDFe.FieldByName('MDF_cnpjSeguradora').AsString);
       nApol   := fdMDFe.FieldByName('MDF_nApolice').AsString;
       with aver.Add do
       begin
         nAver := '12817281728';
       end;
    end;
    fdDocCte.Filtered := False;
    fdDocNfe.Filtered := False;
    if VarIsNull(fdDocCte.aggfields.fieldbyname('qtde').Value) then
      tot.qCTe := 0
    else
      tot.qCTe := fdDocCte.aggfields.fieldbyname('qtde').Value;
    if VarIsNull(fdDocNfe.aggfields.FieldByName('qtde').Value) then
       tot.qNFe := 0
     else
        tot.qNFe := fdDocNfe.aggfields.FieldByName('qtde').Value;
    tot.vCarga := fdMDFe.FieldByName('MDF_TOTAL').AsFloat;

    // UnidMed = (uM3,uKG, uTON, uUNIDADE, uLITROS);
    if fdMDFe.FieldByName('MDF_UN').AsString = 'M3' then tot.cUnid := uM3
    else if fdMDFe.FieldByName('MDF_UN').AsString = 'KG' then tot.cUnid := uKG
    else if fdMDFe.FieldByName('MDF_UN').AsString = 'TON' then tot.cUnid := uTON
    else if fdMDFe.FieldByName('MDF_UN').AsString = 'UN' then tot.cUnid := uUNIDADE
    else if fdMDFe.FieldByName('MDF_UN').AsString = 'LT' then tot.cUnid := uLITROS;
    tot.qCarga :=  fdMDFe.FieldByName('MDF_PESOBRUTO').AsFloat;
    if not fdLacres.IsEmpty then
    begin
      fdLacres.First;
      while not fdLacres.Eof do
      begin
        with lacres.Add do
          nLacre := fdLacres.FieldByName('LAC_LACRE').AsString;
        fdLacres.Next;
      end;
    end;

    if not fdDownload.IsEmpty then
    begin
      fdDownload.First;
      while not fdDownload.Eof do
      begin
        with autXML.Add do
            CNPJCPF := fdDownload.FieldByName('MDF_CNPJCPF').AsString;
        fdDownload.Next;
      end;
    end;
    infAdic.infCpl     := fdMDFe.FieldByName('MDF_INFCOMPLEMNETARES').AsString;
    infAdic.infAdFisco := fdMDFe.FieldByName('MDF_INFADCIIONAIS').AsString;
  end;

  ACBrMDFe1.Manifestos.GerarMDFe;
end;

procedure TFrmMDF.GravarRetorno(const chave, protocolo: string; const DataRecebimento: TDateTime; const Status, Lote, reg: Integer;
                                const recebimento, mensagem : string);
begin
    Executar('UPDATE MANIFESTO_DOC '+
          ' SET  MDF_CHAVE = '+ QuotedStr(CHAVE) +',' +
          ' MDF_PROTOCOLO = '+QuotedStr(protocolo)+','+
       //   ' MDF_DHRECEBIMENTO = ' + DateToStr(DataRecebimento) + ','+
          ' MDF_STATUS = '+ IntToStr(status) +','+
          ' MDF_LOTE = '+ IntToStr(lote)     +',' +
          ' MDF_ERROS = '+  QuotedStr(mensagem)  +','  +
          ' MDF_RECEBIMENTO = '+ QuotedStr(recebimento)+
          ' WHERE MDF_REGISTRO = '+ IntToStr(REG)
          ) ;
end;

procedure TFrmMDF.GravarXMLFinal(const xml: WideString; const reg: integer);
begin
     Executar('UPDATE MANIFESTO_DOC '+
          ' SET  MDF_XML = '+ UTF8Encode(xml) +
          ' WHERE MDF_REGISTRO = '+ IntToStr(REG)
          ) ;
end;

procedure TFrmMDF.ExcluiMunicipioDescarga(cd_gcmun: Integer);
var
  clone: TFDMemTable;
begin
  clone := TFDMemTable.Create(self);
  try
    clone.CloneCursor(fdDocnfe, true);
    if not clone.Locate('cd_gcmun', cd_gcmun, []) then
    begin
      clone.CloneCursor(fdDoccte, true);
      if not clone.Locate('cd_gcmun', cd_gcmun, []) then
        if fdcidadeDescarga.Locate('cd_gcmun', cd_gcmun) then
          fdcidadeDescarga.Delete;
    end;
  finally
    FreeAndNil(clone);
  end;
end;

procedure TFrmMDF.SetEstado(const Value: Testado);
begin
  festado := Value;
end;

procedure TFrmMDF.SetMdf_reg(const value: integer);
begin
  fmdf_reg := value;
end;

procedure TFrmMDF.testeClick(Sender: TObject);
begin
  inherited;
  executar ('update manifesto_doc set mdf_lote = mdf_lote WHERE mdf_lote = 0 ')
end;

procedure TFrmMDF.ValidarEnvio;
begin
  if fdempresacnpj.AsString = '' then
    raise Exception.Create('CNPJ não preenchida.');
  if fdempresainsc_estadual.AsString = '' then
    raise Exception.Create('Inscrição não preenchida');

end;

end.