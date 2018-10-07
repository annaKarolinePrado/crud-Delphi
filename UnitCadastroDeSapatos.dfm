object FormCadastraSapatos: TFormCadastraSapatos
  Left = 0
  Top = 0
  Caption = 'Cadastro de sapatos'
  ClientHeight = 454
  ClientWidth = 521
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
  object PanelSapatos: TPanel
    Left = 0
    Top = 0
    Width = 521
    Height = 289
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 623
    object Label1: TLabel
      Left = 16
      Top = 7
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 16
      Top = 54
      Width = 80
      Height = 13
      Caption = 'C'#243'digo da marca'
      FocusControl = DBEdit2
    end
    object Label3: TLabel
      Left = 16
      Top = 186
      Width = 46
      Height = 13
      Caption = 'Descri'#231#227'o'
      FocusControl = DBEdit3
    end
    object Label4: TLabel
      Left = 137
      Top = 7
      Width = 27
      Height = 13
      Caption = 'Pre'#231'o'
      FocusControl = DBEdit4
    end
    object Label5: TLabel
      Left = 16
      Top = 98
      Width = 44
      Height = 13
      Caption = 'Tamanho'
      FocusControl = DBEdit5
    end
    object Label6: TLabel
      Left = 137
      Top = 98
      Width = 56
      Height = 13
      Caption = 'Quantidade'
      FocusControl = DBEdit6
    end
    object Label7: TLabel
      Left = 16
      Top = 141
      Width = 17
      Height = 13
      Caption = 'Cor'
      FocusControl = DBEdit7
    end
    object Label8: TLabel
      Left = 209
      Top = 141
      Width = 25
      Height = 13
      Caption = 'Estilo'
      FocusControl = DBEdit8
    end
    object Label9: TLabel
      Left = 259
      Top = 7
      Width = 45
      Height = 13
      Caption = 'Desconto'
      FocusControl = DBEdit9
    end
    object Label10: TLabel
      Left = 259
      Top = 98
      Width = 57
      Height = 13
      Caption = 'Faixa '#233'taria'
      FocusControl = DBEdit10
    end
    object Label11: TLabel
      Left = 137
      Top = 54
      Width = 74
      Height = 13
      Caption = 'Nome da marca'
      FocusControl = DBEdit11
    end
    object BtnAdicionar: TButton
      Left = 426
      Top = 26
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Adicionar'
      TabOrder = 0
      OnClick = BtnAdicionarClick
    end
    object BtnRemover: TButton
      Left = 426
      Top = 66
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Remover'
      TabOrder = 1
      OnClick = BtnRemoverClick
    end
    object EdtTotal: TLabeledEdit
      Left = 418
      Top = 241
      Width = 83
      Height = 21
      EditLabel.Width = 81
      EditLabel.Height = 13
      EditLabel.Caption = 'Total no estoque'
      LabelPosition = lpLeft
      TabOrder = 2
    end
    object DBEdit1: TDBEdit
      Left = 16
      Top = 23
      Width = 74
      Height = 21
      DataField = 'id_sapato'
      DataSource = DataSource_Sapatos
      TabOrder = 3
    end
    object DBEdit2: TDBEdit
      Left = 16
      Top = 70
      Width = 74
      Height = 21
      DataField = 'id_marca'
      DataSource = DataSource_Sapatos
      TabOrder = 4
    end
    object DBEdit3: TDBEdit
      Left = 16
      Top = 202
      Width = 362
      Height = 21
      DataField = 'descricao'
      DataSource = DataSource_Sapatos
      TabOrder = 5
    end
    object DBEdit4: TDBEdit
      Left = 137
      Top = 23
      Width = 74
      Height = 21
      DataField = 'preco'
      DataSource = DataSource_Sapatos
      TabOrder = 6
    end
    object DBEdit5: TDBEdit
      Left = 16
      Top = 114
      Width = 74
      Height = 21
      DataField = 'tamanho'
      DataSource = DataSource_Sapatos
      TabOrder = 7
    end
    object DBEdit6: TDBEdit
      Left = 137
      Top = 114
      Width = 74
      Height = 21
      DataField = 'quant'
      DataSource = DataSource_Sapatos
      TabOrder = 8
    end
    object DBEdit7: TDBEdit
      Left = 16
      Top = 157
      Width = 169
      Height = 21
      DataField = 'cor'
      DataSource = DataSource_Sapatos
      TabOrder = 9
    end
    object DBEdit8: TDBEdit
      Left = 209
      Top = 157
      Width = 169
      Height = 21
      DataField = 'estilo'
      DataSource = DataSource_Sapatos
      TabOrder = 10
    end
    object DBEdit9: TDBEdit
      Left = 259
      Top = 23
      Width = 74
      Height = 21
      DataField = 'desconto'
      DataSource = DataSource_Sapatos
      TabOrder = 11
    end
    object DBEdit10: TDBEdit
      Left = 259
      Top = 114
      Width = 74
      Height = 21
      DataField = 'faixa'
      DataSource = DataSource_Sapatos
      TabOrder = 12
    end
    object DBEdit11: TDBEdit
      Left = 137
      Top = 70
      Width = 241
      Height = 21
      DataField = 'nome_marca'
      DataSource = DataSource_Sapatos
      TabOrder = 13
    end
    object EdtMedia: TLabeledEdit
      Left = 233
      Top = 241
      Width = 83
      Height = 21
      EditLabel.Width = 133
      EditLabel.Height = 13
      EditLabel.Caption = 'M'#233'dia de pre'#231'o por produto'
      LabelPosition = lpLeft
      TabOrder = 14
    end
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 429
    Width = 521
    Height = 25
    DataSource = DataSource_Sapatos
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbRefresh]
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 371
    ExplicitWidth = 593
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 289
    Width = 521
    Height = 140
    Align = alClient
    DataSource = DataSource_Sapatos
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DataSource_Sapatos: TDataSource
    DataSet = DataModule_Sapatos.Table_Sapatos
    Left = 232
    Top = 320
  end
end
