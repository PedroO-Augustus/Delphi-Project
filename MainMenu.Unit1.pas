unit MainMenu.Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.Menus, Customer.Unit1, User.Unit1;

type
  TFormMainMenu = class(TForm)
    MainMenu1: TMainMenu;
    Arquivo: TMenuItem;
    Cadastro: TMenuItem;
    Relatorio: TMenuItem;
    Exit: TMenuItem;
    Customers: TMenuItem;
    Users: TMenuItem;
    procedure SMenuExit(Sender: TObject);
    procedure SMenuCustomer(Sender: TObject);
    procedure SMenuUser(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMainMenu: TFormMainMenu;

implementation

{$R *.dfm}

procedure TFormMainMenu.SMenuCustomer(Sender: TObject);
begin
  //FormCustomer.Show; // Mostra a tela de cadastro de clientes
end;

procedure TFormMainMenu.SMenuExit(Sender: TObject);
begin
  Application.Terminate; // Encerra o programa
end;

procedure TFormMainMenu.SMenuUser(Sender: TObject);
begin
  FormUser.Show; // Mostra a tela de cadastro de usuários
end;

end.
