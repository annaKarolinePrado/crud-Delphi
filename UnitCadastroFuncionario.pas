unit UnitCadastroFuncionario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.DBCtrls, Data.DB,
  Vcl.StdCtrls, Vcl.Mask, Vcl.Grids, Vcl.DBGrids;

type
  TFormFuncionario = class(TForm)
    DBNavigator_funcionario: TDBNavigator;
    PanelFuncionario: TPanel;
    DBGrid_Funcionario: TDBGrid;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DataSource_Funcionario: TDataSource;
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
    BtnAdicionar: TButton;
    BtnRemover: TButton;
    procedure BtnAdicionarClick(Sender: TObject);
    procedure BtnRemoverClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormFuncionario: TFormFuncionario;

implementation

{$R *.dfm}

uses Unit_DM_Sapatos;

procedure TFormFuncionario.BtnAdicionarClick(Sender: TObject);
begin
  try
    DataModule_Sapatos.Table_Funcionario.Insert;
    DBEdit1.SetFocus;
  except
    on E: Exception do
    ShowMessage('Erro ao inserir:'+e.Message);
  end;

end;

procedure TFormFuncionario.BtnRemoverClick(Sender: TObject);
begin
  DataModule_Sapatos.Table_Funcionario.Delete;
end;

end.
