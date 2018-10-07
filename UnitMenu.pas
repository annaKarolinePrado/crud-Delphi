unit UnitMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, UnitCadastraMarca,
  UnitCadastroDeSapatos, UnitCadastroFuncionario, UnitCadastroDeVenda;

type
  TFormMenu = class(TForm)
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Sair1: TMenuItem;
    Cadastros1: TMenuItem;
    Cadastramarca1: TMenuItem;
    Cadastraproduto1: TMenuItem;
    Cadastrafuncionrio1: TMenuItem;
    Venda1: TMenuItem;
    Registrodevenda1: TMenuItem;
    procedure Cadastramarca1Click(Sender: TObject);
    procedure Cadastraproduto1Click(Sender: TObject);
    procedure Cadastrafuncionrio1Click(Sender: TObject);
    procedure Registrodevenda1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMenu: TFormMenu;

implementation

{$R *.dfm}

procedure TFormMenu.Cadastrafuncionrio1Click(Sender: TObject);
begin
  FormFuncionario.ShowModal;
end;

procedure TFormMenu.Cadastramarca1Click(Sender: TObject);
begin
  FormCadastraMarca.ShowModal;
end;

procedure TFormMenu.Cadastraproduto1Click(Sender: TObject);
begin
  FormCadastraSapatos.ShowModal;
end;

procedure TFormMenu.Registrodevenda1Click(Sender: TObject);
begin
  FormVenda.ShowModal;
end;

procedure TFormMenu.Sair1Click(Sender: TObject);
begin
  Close;
end;

end.
