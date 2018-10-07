unit UnitCadastroDeSapatos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls;

type
  TFormCadastraSapatos = class(TForm)
    PanelSapatos: TPanel;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    BtnAdicionar: TButton;
    BtnRemover: TButton;
    EdtTotal: TLabeledEdit;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DataSource_Sapatos: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
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
    Label11: TLabel;
    DBEdit11: TDBEdit;
    EdtMedia: TLabeledEdit;
    procedure BtnAdicionarClick(Sender: TObject);
    procedure BtnRemoverClick(Sender: TObject);
  private
    { Private declarations }
    procedure calcular;
  public
    { Public declarations }
  end;

var
  FormCadastraSapatos: TFormCadastraSapatos;

implementation

{$R *.dfm}

uses Unit_DM_Sapatos;

procedure TFormCadastraSapatos.BtnAdicionarClick(Sender: TObject);
begin
  try
    DataModule_Sapatos.Table_Sapatos.Insert;
    DBEdit1.SetFocus;
    calcular;
  except
    on E: Exception do
    ShowMessage('Erro ao adicionar:'+e.Message);
  end;

end;

procedure TFormCadastraSapatos.BtnRemoverClick(Sender: TObject);
begin
  DataModule_Sapatos.Table_Sapatos.Delete;
  calcular;
end;

procedure TFormCadastraSapatos.calcular;
var
  soma:double;
  soma2:double;
  quant:integer;
  somadosquant:double;
begin
  DataModule_Sapatos.Table_Sapatos.DisableControls;
  DataModule_Sapatos.Table_Sapatos.First;
  soma:=0;
  quant:=0;
  soma2:=0;
  somadosquant:=0;
  while not DataModule_Sapatos.Table_Sapatos.Eof do
    begin
      soma2:=DataModule_Sapatos.Table_Sapatospreco.Value;
      quant:=DataModule_Sapatos.Table_Sapatosquant.Value;
      soma:=soma+(soma2*quant);
      somadosquant:=somadosquant+quant;
      DataModule_Sapatos.Table_Sapatos.Next;
    end;
  EdtMedia.Text:= FloatToStr(soma/somadosquant);
  EdtTotal.Text:=FloatToStr(soma);
  DataModule_Sapatos.Table_Sapatos.EnableControls;
end;

end.
