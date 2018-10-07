unit Unit_DM_Sapatos;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TDataModule_Sapatos = class(TDataModule)
    FDConnection_BD: TFDConnection;
    FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink;
    Query_Sapatos: TFDQuery;
    Table_Sapatos: TFDTable;
    Table_Sapatosid_sapato: TIntegerField;
    Table_Sapatosid_marca: TIntegerField;
    Table_Sapatosdescricao: TStringField;
    Table_Sapatospreco: TFloatField;
    Table_Sapatostamanho: TIntegerField;
    Table_Sapatosquant: TIntegerField;
    Table_Sapatoscor: TStringField;
    Table_Sapatosestilo: TStringField;
    Table_Sapatosdesconto: TFloatField;
    Table_Sapatosfaixa: TIntegerField;
    Query_Marca: TFDQuery;
    Table_Marca: TFDTable;
    Table_Marcaid_marca: TIntegerField;
    Table_Marcanome: TStringField;
    Table_Marcarepresentante: TStringField;
    Table_Marcafone_repres: TStringField;
    Table_Marcafone_emp: TStringField;
    Query_Funcionario: TFDQuery;
    Table_Funcionario: TFDTable;
    Table_Funcionarioid_funcionario: TIntegerField;
    Table_Funcionarionome: TStringField;
    Table_Funcionariodata_nascimento: TStringField;
    Table_Funcionariotelefone: TStringField;
    Table_Funcionarioendreco: TStringField;
    Table_Funcionarioestado_civil: TStringField;
    Query_Venda: TFDQuery;
    Table_Venda: TFDTable;
    Table_Vendaid_venda: TIntegerField;
    Table_Vendaid_produto: TIntegerField;
    Table_Vendaid_marca: TIntegerField;
    Table_Vendaid_funcionario: TIntegerField;
    Table_Vendadata_venda: TStringField;
    Table_Vendaquantidade: TIntegerField;
    Table_Vendavalor_unitario: TFloatField;
    Table_Vendadesconto: TFloatField;
    Table_Vendaforma_pagamento: TStringField;
    Table_Vendastatus: TStringField;
    Table_Sapatosnome_marca: TStringField;
    Table_Vendanome_produto: TStringField;
    Table_Vendanome_marca: TStringField;
    Table_Vendanome_funcionario: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule_Sapatos: TDataModule_Sapatos;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
