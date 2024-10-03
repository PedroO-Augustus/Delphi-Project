object FormCustomer: TFormCustomer
  Left = 701
  Top = 180
  Caption = 'Cadastro de Clientes'
  ClientHeight = 366
  ClientWidth = 401
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object lblName: TLabel
    Left = 33
    Top = 40
    Width = 33
    Height = 15
    Caption = 'Nome'
    FocusControl = edtEmail
  end
  object lblCPF: TLabel
    Left = 32
    Top = 115
    Width = 21
    Height = 15
    Caption = 'CPF'
    FocusControl = edmCPF
  end
  object lblPhone: TLabel
    Left = 216
    Top = 115
    Width = 44
    Height = 15
    Caption = 'Telefone'
    FocusControl = edmPhone
  end
  object lblEmail: TLabel
    Left = 32
    Top = 192
    Width = 34
    Height = 15
    Caption = 'E-mail'
    FocusControl = edtEmail
  end
  object edtName: TEdit
    Left = 32
    Top = 61
    Width = 344
    Height = 23
    TabOrder = 1
  end
  object edtEmail: TEdit
    Left = 32
    Top = 216
    Width = 344
    Height = 23
    TabOrder = 2
    OnExit = edtEmailOnExit
  end
  object btnCheck: TButton
    Left = 152
    Top = 272
    Width = 102
    Height = 31
    Caption = 'Save'
    TabOrder = 0
    OnClick = btnSaveClick
  end
  object edmCPF: TMaskEdit
    Left = 32
    Top = 136
    Width = 158
    Height = 23
    EditMask = '!999\.999\.999\-99;1;_'
    MaxLength = 14
    TabOrder = 3
    Text = '   .   .   -  '
    OnExit = edmCPFOnExit
  end
  object edmPhone: TMaskEdit
    Left = 216
    Top = 136
    Width = 154
    Height = 23
    EditMask = '!\(99\) 99999\-9999;0;_'
    MaxLength = 15
    TabOrder = 4
    Text = ''
    OnExit = edtPhoneOnExit
  end
end
