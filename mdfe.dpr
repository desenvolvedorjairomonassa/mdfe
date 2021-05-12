program mdfe;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {FrmPrincipal},
  uFormBase in 'uFormBase.pas' {FrmBase},
  uteste in 'uteste.pas' {FrmBase2},
  uFormBasePesquisa in 'uFormBasePesquisa.pas' {FrmBasePesquisa},
  uFormMDF in 'uFormMDF.pas' {FrmMDF},
  FrmCidades in 'FrmCidades.pas' {frmMunicicios},
  uFormDoc in 'uFormDoc.pas' {FrmDocMDFe},
  uFormUnidTransp in 'uFormUnidTransp.pas' {FrmUnidTransp},
  uPesquisaMDF in 'uPesquisaMDF.pas' {FrmPesquisarMDFe};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TFrmBase, FrmBase);
  Application.Run;
end.
