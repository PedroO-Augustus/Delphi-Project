object FormLogin: TFormLogin
  Left = 0
  Top = 0
  Caption = 'Login'
  ClientHeight = 278
  ClientWidth = 217
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object lblLogin: TLabel
    Left = 40
    Top = 43
    Width = 30
    Height = 15
    Caption = 'Login'
    FocusControl = edtLogin
  end
  object lblPass: TLabel
    Left = 40
    Top = 123
    Width = 32
    Height = 15
    Caption = 'Senha'
    FocusControl = edtPass
  end
  object edtLogin: TEdit
    Left = 48
    Top = 64
    Width = 121
    Height = 23
    TabOrder = 0
  end
  object edtPass: TEdit
    Left = 48
    Top = 144
    Width = 121
    Height = 23
    PasswordChar = '*'
    TabOrder = 1
  end
  object btnLogin: TButton
    Left = 72
    Top = 192
    Width = 75
    Height = 25
    Caption = 'Entrar'
    TabOrder = 2
    OnClick = btnLoginSign
  end
end
