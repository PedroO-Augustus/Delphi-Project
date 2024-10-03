program Project1;

uses
  Vcl.Forms,
  Customer.Unit1 in 'Customer.Unit1.pas' {FormCustomer},
  Data.Unit1 in 'Data.Unit1.pas' {DataModule1: TDataModule},
  MainMenu.Unit1 in 'MainMenu.Unit1.pas' {FormMainMenu},
  Login.Unit1 in 'Login.Unit1.pas' {FormLogin},
  User.Unit1 in 'User.Unit1.pas' {FormUser},
  Utils.Unit1 in 'Utils.Unit1.pas',
  CPFChecker.Unit1 in 'CPFChecker.Unit1.pas';

{$R *.res}

begin
  Application.Initialize;
  {Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TFormLogin, FormLogin);
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormMainMenu, FormMainMenu);}
  Application.CreateForm(TFormCustomer, FormCustomer);
  Application.CreateForm(TFormUser, FormUser);
  Application.Run;
end.
