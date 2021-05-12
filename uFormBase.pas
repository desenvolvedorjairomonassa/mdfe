unit uFormBase;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Phys.PGDef, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.PG, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.UI, FireDAC.Comp.ScriptCommands,ComObj,
  FireDAC.Stan.Util, FireDAC.Comp.Script, Grids, dbGrids, Datasnap.DBClient,
  FireDAC.Phys.FBDef, FireDAC.Phys.IBBase, FireDAC.Phys.FB, ACBrBase,
  ACBrEnterTab;

type
  TFrmBase = class(TForm)
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    link: TFDPhysFBDriverLink;
    FDConnec: TFDConnection;
    FDTransac: TFDTransaction;
    ACBrEnterTab1: TACBrEnterTab;
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  protected

   // FDTransac: TFDTransaction;
  private
    procedure SalvarColunasGrade (grid : TDBGrid);
    procedure CarregarColunasGrade (grid: TdbGrid);
    procedure VarrerComponentes;
    procedure GradeMouseMove(Sender: TObject;
                       Shift: TShiftState; X, Y: Integer);
    procedure GradeTitleClick(Column: TColumn);
    procedure GradeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  public
  //  FDConnec: TFDConnection;

    FDQuery1: TFDQuery;
    FDQuery2: TFDQuery;
    FDQuery3: TFDQuery;
    FDQuery4: TFDQuery;

    function Executar (const sql: string ): boolean;
    function AbrirQuery1(const sql : string): boolean;
    function AbrirQuery2(const sql : string): boolean;
    function AbrirQuery3(const sql : string): boolean;
    function AbrirQuery4 (const sql: string) : boolean;
    function tbKeyIsDown(const Key: integer): boolean;
    procedure ExportarExcel( Sender: TObject);
    function proximaSequencia (const nome: string) : integer;
  end;

var
  FrmBase: TFrmBase;

implementation

{$R *.dfm}

{ TFrmBase }
uses uPrincipal;

function TFrmBase.AbrirQuery4(const sql: string): boolean;
begin
   if not assigned (FDQuery4) then
    FDQuery4 := TFDQuery.Create(nil);
  FDQuery4.SQL.Clear;
  FDQuery4.Connection := FDConnec;
  FDQuery4.Close;
  try
    FDQuery4.Open(sql);
    result := true;
  except
    result := False;
    raise;
  end;
end;

procedure TFrmBase.CarregarColunasGrade(grid: TdbGrid);
var
  nome :string;
  i,j : integer;
begin
 nome := ExtractFilePath(Application.ExeName) + '\AppData\'+  self.Name + grid.Name +'.cfg';
 if FileExists(nome) then
 begin
  i := grid.Columns.Count;
  grid.Columns.LoadFromFile(nome);
  j := grid.Columns.Count;
  if i<>j then
  begin
    DeleteFile(nome);

  end;

 end;

end;

function TFrmBase.AbrirQuery1(const sql: string): boolean;
begin
   if not assigned (FDQuery1) then
    FDQuery1 := TFDQuery.Create(nil);
  FDQuery1.SQL.Clear;
  FDQuery1.Connection := FDConnec;
  FDQuery1.Close;
  try
    FDQuery1.Open(sql);
    result := true;
  except
    result := False;
    raise;
  end;
end;

function TFrmBase.AbrirQuery2(const sql: string): boolean;
begin
   if not assigned (FDQuery2) then
    FDQuery2 := TFDQuery.Create(nil);
  FDQuery2.SQL.Clear;
  FDQuery2.Connection := FDConnec;
  FDQuery2.Close;
  try
    FDQuery2.Open(sql);
    result := true;
  except
    result := False;
    raise;
  end;
end;

function TFrmBase.AbrirQuery3(const sql: string): boolean;
begin
   if not assigned (FDQuery3) then
    FDQuery3 := TFDQuery.Create(nil);
  FDQuery3.SQL.Clear;
  FDQuery3.Connection := FDConnec;
  FDQuery3.Close;
  try
    FDQuery3.Open(sql);
    result := true;
  except
    result := False;
    raise;
  end;
end;

function TFrmBase.Executar(const sql: string): boolean;
var
  ExeSQL: TFDQuery;
begin
  ExeSQL := TFDQuery.Create(FDConnec);
  try
    FDTransac.Connection := FDConnec;
    ExeSQL.Transaction := FDTransac;
    ExeSQL.SQL.Text := sql;
    ExeSQL.Connection := FDConnec;
    FDTransac.StartTransaction;
    try
      //ExeSQL.Prepare;
      ExeSQL.ExecSQL ;
      FDTransac.Commit;
      result := True;
    except
      FDTransac.Rollback;
      result := False;
      raise;
    end;
  finally
    ExeSQL.Free;
  end;
end;

procedure TFrmBase.ExportarExcel(Sender: TObject);
var linha, coluna : integer;
var planilha : variant;
var valorcampo : string;
begin
  TFDQuery(TDBGrid(Sender).DataSource.DataSet).CachedUpdates := true;
  planilha:= CreateoleObject('Excel.Application');
  planilha.WorkBooks.add(1);
  planilha.caption := 'Exportando dados do dbGrid para o Excel';
  planilha.visible := true;

  with TFDQuery(TDBGrid(Sender).DataSource.DataSet) do
  begin
    First;
    for linha := 0 to RecordCount - 1 do
    begin
      for coluna := 1 to FieldCount do
      begin
        valorcampo := Fields[coluna - 1].AsString;
        planilha.cells[linha + 2,coluna] := valorCampo;
      end;
      Next;
    end;
    for coluna := 1 to FieldCount do
    begin
      valorcampo := Fields[coluna - 1].DisplayLabel;
      planilha.cells[1,coluna] := valorcampo;
    end;
    planilha.columns.Autofit;
  end;
end;

procedure TFrmBase.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := caFree;
end;

procedure TFrmBase.FormCreate(Sender: TObject);
begin
 FDConnec:= TFDConnection.Create(self);
 FDTransac := TFDTransaction.Create(self);
 FDConnec := FrmPrincipal.FDConnec;
 VarrerComponentes;
end;

procedure TFrmBase.FormDestroy(Sender: TObject);
begin
  if assigned(FDQuery1) then
    FreeAndNil(FDQuery1);
  if assigned(FDQuery2) then
    FreeAndNil(FDQuery2);
  if assigned(FDQuery3) then
    FreeAndNil(FDQuery3);
  if assigned(FDQuery4) then
    FreeAndNil(FDQuery4);
  FDConnec := nil;
  FDTransac := nil;
  frmbase := nil;
end;

procedure TFrmBase.GradeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  sTexto: String;
  campo : string;
begin
  if key=114 then
  begin
   TDBGrid(Sender).DataSource.DataSet.FindNext

  end;
  if key=115 then
  begin
    campo := TDBGrid(Sender).Columns[TDBGrid(Sender).SelectedIndex].Title.Caption;
   sTexto := InputBox('Pesquisa',format('Realizar pesquisa no campo %s',[campo]),EmptyStr)   ;
   TDBGrid(Sender).DataSource.DataSet.Locate(TDBGrid(Sender).Columns[TDBGrid(Sender).SelectedIndex].FieldName,
    sTexto,[loPartialKey,loCaseInsensitive]);

  end;
end;



procedure TFrmBase.GradeMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
var
  mousePt: TGridcoord;
begin
  mousePt := TDBGrid(sender).MouseCoord(x,y);
  if mousePt.y = 0 then
    Screen.Cursor := crHandPoint
  else
    Screen.Cursor := crDefault;
end;

procedure TFrmBase.GradeTitleClick(Column: TColumn);
var
  I: Integer;
  _registro : TBookmark;
  sIndexName: string;
  oOrdenacao: TFDSortOptions;
begin
  //salva registro atual
   _registro :=   Column.Grid.DataSource.DataSet.GetBookmark;
  try
     if (TFDQuery(column.Grid.DataSource.DataSet).IndexDefs.IndexOf('idxprincipal_ASC')> 0 ) then
        sIndexName := 'idxprincipal_ASC'
     else
     if (TFDQuery(column.Grid.DataSource.DataSet).IndexDefs.IndexOf('idxprincipal_DESC')>0)  then
        sIndexName := 'idxprincipal_DESC';

    //verifica se o control foi pressionado
    if tbKeyIsDown(VK_CONTROL) and  (sIndexName <> '') then
    begin
      i:= (TFDQuery(column.Grid.DataSource.DataSet).IndexDefs.IndexOf(sIndexName));
      TFDQuery(column.Grid.DataSource.DataSet).Indexes[i].Fields:=
        TFDQuery(column.Grid.DataSource.DataSet).Indexes[i].Fields + ';'+
           Column.FieldName;

    end
    else
    begin
      //retira o negrito de todas as coluna
      for i:=0 to TDBGrid (Column.Grid).Columns.Count-1 do
        TDBGrid (Column.Grid).Columns[i].Title.Font.Style := [];

       //  ordenação ascendente ou descendente
      if sIndexName = 'idxprincipal_ASC' then
      begin
        sIndexName := 'idxprincipal_DESC';
        oOrdenacao := [soDescending, soDescNullLast];
      end
      else
      begin
        sIndexName := 'idxprincipal_ASC';
        oOrdenacao := [soDescNullLast];
      end;
      // adiciona a ordenação no DataSet, caso não exista
      if TFDQuery(column.Grid.DataSource.DataSet).IndexDefs.IndexOf(sIndexName) < 0 then
       TFDQuery(column.Grid.DataSource.DataSet).AddIndex(sIndexName, Column.FieldName,'', oOrdenacao,'','', true);
    end;


    TFDQuery(column.Grid.DataSource.DataSet).IndexDefs.Update;

    // formata o título da coluna em negrito
    Column.Title.Font.Style := [fsBold];

    // atribui a ordenação selecionada
    TFDQuery(column.Grid.DataSource.DataSet).IndexName := sIndexName;

    Column.Title.Font.Style := [fsBold];
    //recupera registro
    Column.Grid.DataSource.DataSet.GotoBookmark(_registro);
  finally
     Column.Grid.DataSource.DataSet.FreeBookmark(_registro);
  end;
end;

function TFrmBase.proximaSequencia(const nome: string): integer;
var FDTemp: TFDQuery;
begin
  FDTemp := TFDQuery.Create(nil);
  FDTemp.SQL.Clear;
  FDTemp.Connection := FDConnec;
  FDTemp.Close;
  try
    FDTemp.Open('SELECT GEN_ID('+nome+', 1) as seq FROM RDB$DATABASE');
    result := fdtemp.FieldByName('seq').AsInteger;
  except
    result := 0;
    raise;
  end;

end;

procedure TFrmBase.SalvarColunasGrade(grid: TDBGrid);
var
  nome : string;
begin
  //salvar na pastar por usuários
  nome := ExtractFilePath(Application.ExeName) + '\AppData\'+  self.Name + grid.Name +'.cfg';
  Grid.Columns.SaveToFile(nome);
end;

function TFrmBase.tbKeyIsDown(const Key: integer): boolean;
begin
  Result := GetKeyState(Key) and 128 > 0;
end;

procedure TFrmBase.VarrerComponentes;
var
   i : Integer;
begin
  for I := 0 to self.ComponentCount-1 do
  begin
    if self.Components[i].InheritsFrom(TCustomGrid) then
    begin
      with TDBGrid( self.Components[i]) do
      begin
        CarregarColunasGrade(TDBGrid( self.Components[i] ));
        OnMouseMove := GradeMouseMove;
        OnTitleClick := GradeTitleClick;
        OnKeyDown := GradeKeyDown;
        Options:= Options + [dgTitleClick, dgColumnResize];
      end;
    end
    else if self.Components[i].InheritsFrom(TFDQuery) then
    begin
      TFDQuery( self.Components[i] ).Connection := FDConnec;

    end;

  end;
end;

end.
