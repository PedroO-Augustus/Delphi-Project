object FormMainMenu: TFormMainMenu
  Left = 0
  Top = 0
  Caption = 'PDelphi'
  ClientHeight = 449
  ClientWidth = 578
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenu1
  Position = poScreenCenter
  TextHeight = 15
  object MainMenu1: TMainMenu
    Left = 16
    Top = 40
    object Arquivo: TMenuItem
      Caption = 'Arquivos'
      object Exit: TMenuItem
        Caption = 'Sair'
        OnClick = SMenuExit
      end
    end
    object Cadastro: TMenuItem
      Caption = 'Cadastros'
      object Customers: TMenuItem
        Caption = 'Clientes'
        OnClick = SMenuCustomer
      end
      object Users: TMenuItem
        Caption = 'Usu'#225'rios'
        OnClick = SMenuUser
      end
    end
    object Relatorio: TMenuItem
      Caption = 'Relat'#243'rios'
    end
  end
end
