object FormUser: TFormUser
  Left = 0
  Top = 0
  Caption = 'Cadastro de Usu'#225'rios'
  ClientHeight = 347
  ClientWidth = 311
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object lblName: TLabel
    Left = 80
    Top = 59
    Width = 33
    Height = 15
    Caption = 'Nome'
    FocusControl = edtName
  end
  object lblLogin: TLabel
    Left = 80
    Top = 123
    Width = 40
    Height = 15
    Caption = 'Usu'#225'rio'
    FocusControl = edtLogin
  end
  object lblPass: TLabel
    Left = 80
    Top = 187
    Width = 32
    Height = 15
    Caption = 'Senha'
    FocusControl = edtPass
  end
  object edtName: TEdit
    Left = 88
    Top = 80
    Width = 121
    Height = 23
    TabOrder = 0
  end
  object edtLogin: TEdit
    Left = 88
    Top = 144
    Width = 121
    Height = 23
    TabOrder = 1
  end
  object edtPass: TEdit
    Left = 88
    Top = 208
    Width = 121
    Height = 23
    PasswordChar = '*'
    TabOrder = 2
  end
  object btnRegister: TButton
    Left = 112
    Top = 256
    Width = 75
    Height = 25
    Caption = 'Cadastrar'
    TabOrder = 3
    OnClick = btnRegisterClick
  end
end
