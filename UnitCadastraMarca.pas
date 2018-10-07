unit UnitCadastraMarca;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TFormCadastraMarca = class(TForm)
    PanelMarca: TPanel;
    DBNavigatorMarca: TDBNavigator;
    DBGridMarca: TDBGrid;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DataSource_Marca: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
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
  FormCadastraMarca: TFormCadastraMarca;

implementation

{$R *.dfm}

uses Unit_DM_Sapatos;

procedure TFormCadastraMarca.BtnAdicionarClick(Sender: TObject);
begin
  if(Trim(DBEdit1.Text)='')then
  begin
    ShowMessage('campo não peenchido');
    DBEdit1.SetFocus;
    Exit;
  end;
  try
    DataModule_Sapatos.Table_Marca.Insert;
    DBEdit1.SetFocus;
  except
    on E: Exception do
    ShowMessage('Erro ao adicionar:'+e.Message);
  end;

end;

procedure TFormCadastraMarca.BtnRemoverClick(Sender: TObject);
begin
  DataModule_Sapatos.Table_Marca.Delete;
end;

end.
