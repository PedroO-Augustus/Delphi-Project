unit Login.Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls, idHashMessageDigest, Data.Unit1,
  User.Unit1, MainMenu.Unit1, Utils.Unit1;

type
  TFormLogin = class(TForm)
    edtLogin: TEdit;
    edtPass: TEdit;
    btnLogin: TButton;
    lblLogin: TLabel;
    lblPass: TLabel;
    procedure btnLoginSign(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLogin: TFormLogin;

implementation

{$R *.dfm}

procedure TFormLogin.btnLoginSign(Sender: TObject);
var
  HashedPassword: String;
begin
  HashedPassword := GenHashPass(edtPass.Text);

  with DataModule1.FDQuery1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM TUser WHERE ULogin = :Login AND UPassword = :Password');
    ParamByName('Login').AsString := edtLogin.Text;
    ParamByName('Password').AsString := HashedPassword;
    Open;

    if RecordCount = 1 then
    begin
      FormMainMenu.Show; // Abre a tela principal
      FormLogin.Hide; // Oculta a tela de login
    end
    else
      ShowMessage('Login ou senha incorretos!');
  end;

end;

end.
