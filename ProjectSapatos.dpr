program ProjectSapatos;

uses
  Vcl.Forms,
  UnitCadastraMarca in 'UnitCadastraMarca.pas' {FormCadastraMarca},
  Unit_DM_Sapatos in 'Unit_DM_Sapatos.pas' {DataModule_Sapatos: TDataModule},
  UnitCadastroDeSapatos in 'UnitCadastroDeSapatos.pas' {FormCadastraSapatos},
  UnitMenu in 'UnitMenu.pas' {FormMenu},
  UnitCadastroDeVenda in 'UnitCadastroDeVenda.pas' {FormVenda},
  UnitCadastroFuncionario in 'UnitCadastroFuncionario.pas' {FormFuncionario};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormMenu, FormMenu);
  Application.CreateForm(TFormVenda, FormVenda);
  Application.CreateForm(TFormFuncionario, FormFuncionario);
  Application.CreateForm(TFormCadastraSapatos, FormCadastraSapatos);
  Application.CreateForm(TFormCadastraMarca, FormCadastraMarca);
  Application.CreateForm(TDataModule_Sapatos, DataModule_Sapatos);
  Application.Run;
end.
