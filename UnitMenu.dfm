object FormMenu: TFormMenu
  Left = 0
  Top = 0
  Caption = 'Menu'
  ClientHeight = 161
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 200
    Top = 64
    object Arquivo1: TMenuItem
      Caption = 'Arquivo'
      object Sair1: TMenuItem
        Caption = 'Sair'
        OnClick = Sair1Click
      end
    end
    object Cadastros1: TMenuItem
      Caption = 'Cadastros'
      object Cadastramarca1: TMenuItem
        Caption = 'Cadastra marca'
        OnClick = Cadastramarca1Click
      end
      object Cadastraproduto1: TMenuItem
        Caption = 'Cadastra produto'
        OnClick = Cadastraproduto1Click
      end
      object Cadastrafuncionrio1: TMenuItem
        Caption = 'Cadastra funcion'#225'rio'
        OnClick = Cadastrafuncionrio1Click
      end
    end
    object Venda1: TMenuItem
      Caption = 'Venda'
      object Registrodevenda1: TMenuItem
        Caption = 'Registro de venda'
        OnClick = Registrodevenda1Click
      end
    end
  end
end
