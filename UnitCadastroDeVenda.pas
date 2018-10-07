unit UnitCadastroDeVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TFormVenda = class(TForm)
    NavigatorVenda: TDBNavigator;
    PanelVenda: TPanel;
    GridVenda: TDBGrid;
    Label1: TLabel;
    DBEEdtCodigo: TDBEdit;
    DataSource_Venda: TDataSource;
    Label2: TLabel;
    DBEdtProduto: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEEdtValorUni: TDBEdit;
    Label8: TLabel;
    DBEdtDesconto: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    BtnAdicionar: TButton;
    BtnRemover: TButton;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    EdtTotal: TLabeledEdit;
    procedure BtnAdicionarClick(Sender: TObject);
    procedure BtnRemoverClick(Sender: TObject);
  private
    { Private declarations }
    procedure calcular;
  public
    { Public declarations }
  end;

var
  FormVenda: TFormVenda;

implementation

{$R *.dfm}

uses Unit_DM_Sapatos;

procedure TFormVenda.BtnAdicionarClick(Sender: TObject);
begin
  try
    DataModule_Sapatos.Table_Venda.Insert;
    DBEEdtCodigo.SetFocus;
    calcular;
  except
    on E: Exception do
    ShowMessage('Erro ao adicionar:'+e.Message);
  end;

end;

procedure TFormVenda.BtnRemoverClick(Sender: TObject);
begin
  DataModule_Sapatos.Table_Venda.Delete;
  calcular;
end;

procedure TFormVenda.calcular;
var
  desconto:double;
  quant:double;
  total:double;
  valorVenda:double;
begin
  DataModule_Sapatos.Table_Venda.DisableControls;
  DataModule_Sapatos.Table_Venda.First;
  desconto:=0;
  quant:=0;
  total:=0;
  valorVenda:=0;
  while not DataModule_Sapatos.Table_Venda.Eof do
    begin
      valorVenda:=DataModule_Sapatos.Table_Vendavalor_unitario.Value;
      desconto:=DataModule_Sapatos.Table_Vendadesconto.Value;
      quant:=DataModule_Sapatos.Table_Vendaquantidade.Value;
      total:=total+(valorVenda-desconto)*quant;
      DataModule_Sapatos.Table_Venda.Next;
    end;

  EdtTotal.Text:= FloatToStr(total);
  DataModule_Sapatos.Table_Venda.EnableControls;
end;

end.
