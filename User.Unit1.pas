unit User.Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, IdHashMessageDigest, Data.Unit1, Utils.Unit1;

type
  TFormUser = class(TForm)
    edtName: TEdit;
    edtLogin: TEdit;
    edtPass: TEdit;
    btnRegister: TButton;
    lblName: TLabel;
    lblLogin: TLabel;
    lblPass: TLabel;
    procedure btnRegisterClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormUser: TFormUser;

implementation

{$R *.dfm}

procedure TFormUser.btnRegisterClick(Sender: TObject);
var
  HashedPassword: String;
begin
  HashedPassword := GenHashPass(edtPass.Text);

  with DataModule1.FDQuery1 do
  begin
    try
      if IOResult = 0 then
      begin
        Close;
        SQL.Clear;
        SQL.Add('INSERT INTO TUser (UName, ULogin, UPassword) VALUES (:Name, :Login, :Password)');
        ParamByName('Name').AsString := edtName.Text;
        ParamByName('Login').AsString := edtLogin.Text;
        ParamByName('Password').AsString := HashedPassword;
        ExecSQL;
      end
      else
      begin
        ShowMessage('Não foi possível efetuar o cadastro!');
      end;
    except
      on E: EInOutError do
        ShowMessage('Erro ao cadastrar usuário: ' + E.Message);
      else
        ShowMessage('Erro não tratado ao cadastrar usuário!');
    end;

    ShowMessage('Usuário cadastrado com sucesso!');
    FormUser.Close;
  end;

end;

end.
