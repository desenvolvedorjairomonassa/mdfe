unit uteste;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFormBase, FireDAC.Phys.PGDef,
  FireDAC.UI.Intf, FireDAC.VCLUI.Wait, FireDAC.Comp.UI, FireDAC.Stan.Intf,
  FireDAC.Phys, FireDAC.Phys.PG, FireDAC.Phys.FBDef, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys.FB, ACBrBase, ACBrEnterTab, FireDAC.Comp.Client, Data.DB, FireDAC.Phys.IBBase;

type
  TFrmBase2 = class(TFrmBase)
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmBase2: TFrmBase2;

implementation

{$R *.dfm}

procedure TFrmBase2.FormDestroy(Sender: TObject);
begin
  inherited;
  FrmBase2 := NIL;
end;

procedure TFrmBase2.FormShow(Sender: TObject);
begin
  inherited;
  AbrirQuery1('select * from faixainss') ;
end;

end.
