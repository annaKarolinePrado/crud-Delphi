object FormVenda: TFormVenda
  Left = 0
  Top = 0
  Caption = 'Registro de venda'
  ClientHeight = 437
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object NavigatorVenda: TDBNavigator
    Left = 0
    Top = 412
    Width = 635
    Height = 25
    DataSource = DataSource_Venda
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbRefresh]
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 383
  end
  object PanelVenda: TPanel
    Left = 0
    Top = 0
    Width = 635
    Height = 273
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 8
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      FocusControl = DBEEdtCodigo
    end
    object Label2: TLabel
      Left = 16
      Top = 50
      Width = 62
      Height = 13
      Caption = 'C'#243'digo Prod.'
      FocusControl = DBEdtProduto
    end
    object Label3: TLabel
      Left = 16
      Top = 95
      Width = 65
      Height = 13
      Caption = 'C'#243'digo marca'
      FocusControl = DBEdit3
    end
    object Label4: TLabel
      Left = 16
      Top = 139
      Width = 63
      Height = 13
      Caption = 'C'#243'digo Func.'
      FocusControl = DBEdit4
    end
    object Label5: TLabel
      Left = 16
      Top = 191
      Width = 71
      Height = 13
      Caption = 'Data de venda'
      FocusControl = DBEdit5
    end
    object Label6: TLabel
      Left = 112
      Top = 191
      Width = 56
      Height = 13
      Caption = 'Quantidade'
      FocusControl = DBEdit6
    end
    object Label7: TLabel
      Left = 112
      Top = 8
      Width = 63
      Height = 13
      Caption = 'Valor unit'#225'rio'
      FocusControl = DBEEdtValorUni
    end
    object Label8: TLabel
      Left = 239
      Top = 8
      Width = 45
      Height = 13
      Caption = 'Desconto'
      FocusControl = DBEdtDesconto
    end
    object Label9: TLabel
      Left = 192
      Top = 191
      Width = 102
      Height = 13
      Caption = 'Forma de pagamento'
      FocusControl = DBEdit9
    end
    object Label10: TLabel
      Left = 355
      Top = 191
      Width = 31
      Height = 13
      Caption = 'Status'
      FocusControl = DBEdit10
    end
    object Label11: TLabel
      Left = 112
      Top = 50
      Width = 46
      Height = 13
      Caption = 'Descri'#231#227'o'
      FocusControl = DBEdit11
    end
    object Label12: TLabel
      Left = 112
      Top = 95
      Width = 74
      Height = 13
      Caption = 'Nome da marca'
      FocusControl = DBEdit12
    end
    object Label13: TLabel
      Left = 112
      Top = 139
      Width = 55
      Height = 13
      Caption = 'Funcion'#225'rio'
      FocusControl = DBEdit13
    end
    object DBEEdtCodigo: TDBEdit
      Left = 16
      Top = 24
      Width = 62
      Height = 21
      DataField = 'id_venda'
      DataSource = DataSource_Venda
      TabOrder = 0
    end
    object DBEdtProduto: TDBEdit
      Left = 16
      Top = 66
      Width = 62
      Height = 21
      DataField = 'id_produto'
      DataSource = DataSource_Venda
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 16
      Top = 111
      Width = 62
      Height = 21
      DataField = 'id_marca'
      DataSource = DataSource_Venda
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 16
      Top = 155
      Width = 62
      Height = 21
      DataField = 'id_funcionario'
      DataSource = DataSource_Venda
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 16
      Top = 207
      Width = 71
      Height = 21
      DataField = 'data_venda'
      DataSource = DataSource_Venda
      MaxLength = 10
      TabOrder = 4
    end
    object DBEdit6: TDBEdit
      Left = 112
      Top = 207
      Width = 62
      Height = 21
      DataField = 'quantidade'
      DataSource = DataSource_Venda
      TabOrder = 5
    end
    object DBEEdtValorUni: TDBEdit
      Left = 112
      Top = 24
      Width = 89
      Height = 21
      DataField = 'valor_unitario'
      DataSource = DataSource_Venda
      TabOrder = 6
    end
    object DBEdtDesconto: TDBEdit
      Left = 239
      Top = 24
      Width = 89
      Height = 21
      DataField = 'desconto'
      DataSource = DataSource_Venda
      TabOrder = 7
    end
    object DBEdit9: TDBEdit
      Left = 192
      Top = 207
      Width = 151
      Height = 21
      DataField = 'forma_pagamento'
      DataSource = DataSource_Venda
      TabOrder = 8
    end
    object DBEdit10: TDBEdit
      Left = 355
      Top = 207
      Width = 151
      Height = 21
      DataField = 'status'
      DataSource = DataSource_Venda
      TabOrder = 9
    end
    object BtnAdicionar: TButton
      Left = 536
      Top = 22
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Adicionar'
      TabOrder = 10
      OnClick = BtnAdicionarClick
    end
    object BtnRemover: TButton
      Left = 536
      Top = 64
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Remover'
      TabOrder = 11
      OnClick = BtnRemoverClick
    end
    object DBEdit11: TDBEdit
      Left = 112
      Top = 66
      Width = 394
      Height = 21
      DataField = 'nome_produto'
      DataSource = DataSource_Venda
      TabOrder = 12
    end
    object DBEdit12: TDBEdit
      Left = 112
      Top = 111
      Width = 394
      Height = 21
      DataField = 'nome_marca'
      DataSource = DataSource_Venda
      TabOrder = 13
    end
    object DBEdit13: TDBEdit
      Left = 112
      Top = 155
      Width = 394
      Height = 21
      DataField = 'nome_funcionario'
      DataSource = DataSource_Venda
      TabOrder = 14
    end
    object EdtTotal: TLabeledEdit
      Left = 536
      Top = 239
      Width = 75
      Height = 21
      EditLabel.Width = 121
      EditLabel.Height = 13
      EditLabel.Caption = 'Total de todas as vendas'
      EditLabel.Layout = tlCenter
      LabelPosition = lpLeft
      TabOrder = 15
    end
  end
  object GridVenda: TDBGrid
    Left = 0
    Top = 273
    Width = 635
    Height = 139
    Align = alClient
    DataSource = DataSource_Venda
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DataSource_Venda: TDataSource
    DataSet = DataModule_Sapatos.Table_Venda
    Left = 296
    Top = 296
  end
end
