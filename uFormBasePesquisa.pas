unit uFormBasePesquisa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFormBase, FireDAC.Phys.PGDef,
  FireDAC.UI.Intf, FireDAC.VCLUI.Wait, Vcl.ButtonGroup, FireDAC.Comp.UI,
  FireDAC.Stan.Intf, FireDAC.Phys, FireDAC.Phys.PG, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, Vcl.StdCtrls, comobj, Vcl.ExtCtrls, FireDAC.Phys.FBDef, FireDAC.Phys.FB, ACBrBase, ACBrEnterTab,
  FireDAC.Phys.IBBase;

type
  TFrmBasePesquisa = class(TFrmBase)
    DBGrid1: TDBGrid;
    dsresult: TDataSource;
    fdPesquisa: TFDQuery;
    fdPesquisaaliquota_inss: TFloatField;
    fdPesquisafaixa_ini: TFMTBCDField;
    fdPesquisafaixa_final: TFMTBCDField;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    ButtonedEdit1: TButtonedEdit;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
   function  GridToExcelFile(Grid: TDbGrid;ExcelFile: String; TotalRegistros : Integer):Boolean;

  end;

var
  FrmBasePesquisa: TFrmBasePesquisa;

implementation

{$R *.dfm}

procedure TFrmBasePesquisa.Button1Click(Sender: TObject);
begin
  inherited;
  GridToExcelFile(dbgrid1,'teste.xls',0);
end;

procedure TFrmBasePesquisa.FormCreate(Sender: TObject);
begin
  inherited;
  fdPesquisa.Connection := FDConnec;

  fdPesquisa.Open('SELECT aliquota_inss, faixa_final,faixa_ini  FROM faixainss');
end;

function TFrmBasePesquisa.GridToExcelFile(Grid: TDbGrid; ExcelFile: String;
  TotalRegistros: Integer): Boolean;
var bResult   : Boolean;
	SavePlace : TBookmark;
	i,eline   : Integer;
	Excel	 : Variant;
	iSheet	: Integer;
	CorFundo  : TColor;

begin
  bResult:= False;
  // If dataset is assigned and active runs Excel
  if Assigned(Grid.DataSource) then
  begin
	if Grid.DataSource.DataSet.Active then
	begin
	  try
		//Rotina que chama um painel com um ProgressBar
	 //	SetaPainelMensagem(cExportandoRegistros, TotalRegistros);

		Excel:= CreateOleObject('Excel.Application');
		Excel.Visible:= False;
		Excel.WorkBooks.Add;
		//Definindo o número de worksheets
		if  (TotalRegistros > 65000) then
		begin
		   if  ((TotalRegistros Mod 65000) = 0) then
			   iSheet := TotalRegistros DIV 5
		   else
			   iSheet := (TotalRegistros DIV 65000) + 1;
		   if  (iSheet > 3) then
			 //Adicionando as worksheets que faltam a partir da 3 planilha do excel
			 For i:= 4 to iSheet do
				 Excel.WorkBooks[1].Sheets.Add(null, Excel.WorkBooks[1].Sheets[i-1]);
		end;
		// Save grid Position
		SavePlace:= Grid.DataSource.DataSet.GetBookmark;
		Grid.DataSource.DataSet.First;
		//Sheet atual
		iSheet := 1;
		// Montando cabeçalho da planilha
		if not (Grid.DataSource.DataSet.Eof) then
		begin
		  eline:= 1; // Posicionando na primeira linha da planilha(Sheet) para por o cabeçalho
		  for i:=0 to (Grid.Columns.Count-1) do
		  begin
			Excel.WorkBooks[1].Sheets[iSheet].Cells[eline,(i+1)]				:= Grid.Columns[i].Title.Caption;
			Excel.WorkBooks[1].Sheets[iSheet].Cells[eline,(i+1)].ColumnWidth	:= Grid.Columns[i].Field.DisplayWidth;
			Excel.WorkBooks[1].Sheets[iSheet].Cells[eline,(i+1)].Font.FontStyle := 'Negrito';
			Excel.WorkBooks[1].Sheets[iSheet].Cells[eline,(i+1)].Interior.Color := (ColorToRgb(Grid.Columns[i].Title.Color));
			Excel.WorkBooks[1].Sheets[iSheet].Cells[eline,(i+1)].Font.Color	 := (ColorToRgb(Grid.Columns[i].Title.Font.Color));
		  end;
		end;
		while not Grid.DataSource.DataSet.Eof do //Preenchendo o restante da planilha com os dados
		begin
		  Inc(eline); //Incrementa a posição da linha para preencher no excel

		  //Atualiza Progressbar
		 // pbInformacao.StepBy(1);
		  Application.ProcessMessages;

		  //Se passar de 65000 linhas, jogar dado na outra planilha, remontando os cabeçalhos antes
		  if (eline > 65000) then
		  begin
			 Inc(iSheet);
			 eline := 1;
			 for i:=0 to (Grid.Columns.Count-1) do
			 begin
				Excel.WorkBooks[1].Sheets[iSheet].Cells[eline,(i+1)]				:= Grid.Columns[i].Title.Caption;
				Excel.WorkBooks[1].Sheets[iSheet].Cells[eline,(i+1)].ColumnWidth	:= Grid.Columns[i].Field.DisplayWidth;
				Excel.WorkBooks[1].Sheets[iSheet].Cells[eline,(i+1)].Font.FontStyle := 'Negrito';
				Excel.WorkBooks[1].Sheets[iSheet].Cells[eline,(i+1)].Interior.Color := (ColorToRgb(Grid.Columns[i].Title.Color));
				Excel.WorkBooks[1].Sheets[iSheet].Cells[eline,(i+1)].Font.Color	 := (ColorToRgb(Grid.Columns[i].Title.Font.Color));
			 end;
			 Inc(eline);
		  end;

		  //Para mudar a cor de fundo da linha da planilha
		  If (eline mod 2) = 0 then
			 CorFundo := clInfoBk
		  else
			 CorFundo := clAqua;

		  for i:=0 to (Grid.Columns.Count-1) do
		  begin
			Excel.WorkBooks[1].Sheets[iSheet].Cells[eline,(i+1)]				:= Grid.Columns[i].Field.AsString;
			Excel.WorkBooks[1].Sheets[iSheet].Cells[eline,(i+1)].Interior.Color := (ColorToRgb(CorFundo));
			Excel.WorkBooks[1].Sheets[iSheet].Cells[eline,(i+1)].Font.Color	 := (ColorToRgb(Grid.Columns[i].Font.Color));
			Excel.WorkBooks[1].Sheets[iSheet].Cells[eline,(i+1)].Borders.Color  := (ColorToRgb(clGray));
		  end;
		  Grid.DataSource.DataSet.Next;
		end;

		//Ajustando o tamanho das colunas
		For i:= 1 to iSheet do
			Excel.WorkBooks[1].WorkSheets[i].Range['B1','AQ1000'].Columns.AutoFit;

		// Set saved grid position
		Grid.DataSource.DataSet.GotoBookmark(SavePlace);
		// Salvando o arquivo
		Excel.WorkBooks[1].SaveAs(ExcelFile);
		Excel.Quit;
		bResult:= True;
		//pnlMensagem.Visible := False;
	  except
		bResult:= False;
		Excel.Quit;
		///pnlMensagem.Visible := False;
	  end;
	end;
  end;
  Result := bResult;
end;



end.
