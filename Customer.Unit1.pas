unit Customer.Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  StdCtrls, Vcl.Mask, CPFChecker.Unit1;

type

  { TForm1 }

  TFormCustomer = class(TForm)
    edtName: TEdit;
    edmCPF: TMaskEdit;
    edmPhone: TMaskEdit;
    edtEmail: TEdit;
    lblName: TLabel;
    lblCPF: TLabel;
    lblPhone: TLabel;
    lblEmail: TLabel;
    btnCheck: TButton;
    procedure edmCPFOnExit(Sender: TObject);
    procedure edtPhoneOnExit(Sender: TObject);
    procedure edtEmailOnExit(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
  private
    { Private declarations }
    function vFields: Boolean;
    { function rmvForm(const FormCPF : string) : String;
      function buildCPF(const cCPF : string) : String;
      function checkCPF(const tCPF : string) : Boolean; }
  public
    { Public declarations }
  end;

var
  FormCustomer: TFormCustomer;

implementation

{$R *.dfm}

// Procedimento para detectar se o nome foi preenchido
procedure TFormCustomer.edmCPFOnExit(Sender: TObject);
begin
end;

// Procedimento para verificar se o n�mero foi preenchido, e se possui pelo menos 8 caracteres
procedure TFormCustomer.edtPhoneOnExit(Sender: TObject);
begin
end;

// Procedimento para detectar se o e-mail foi preenchido, e se h� '@'
procedure TFormCustomer.edtEmailOnExit(Sender: TObject);
begin
end;

{ function TFormCustomer.rmvForm(const FormCPF: string) : String;
  var
  I : Integer;
  CC : String;
  begin
  CC := '';
  // Limpa a formata��o do CPF ( . . - )
  for I := 1 to Length(FormCPF) do
  if (FormCPF[I] = '.') or (FormCPF[I] = '-') then
  else
  CC := CC + FormCPF[I];
  Exit(CC);
  end; }


// Fun��o para validar o CPF
{ function TFormCustomer.buildCPF(const cCPF : string) : String;
  var
  A, D, Sum: Integer;
  bCPF : string;
  begin
  bCPF := '';
  // Remove os d�gitos verificadores do 'corpo' do CPF
  for A := 1 to Length(cCPF) do
  if A < 10 then
  bCPF := bCPF + cCPF[A];

  // Valida o primeiro d�gito verificador
  Sum := 0;
  try
  for A := 1 to Length(bCPF) do
  Sum := Sum + StrToInt(bCPF[A]) * (11 - A);
  D := (Sum * 10) mod 11;

  if D = 10 then
  D := 0;
  except
  on E: EconvertError do
  begin
  showMessage('Erro ao converter a string para inteiro: ' + E.Message);
  edtCPF.color := clRed;
  end;
  end;

  bCPF := bCPF + IntToStr(D);

  // Validar segundo d�gito verificador
  Sum := 0;
  try
  for A := 1 to Length(bCPF) do
  Sum := Sum + StrToInt(bCPF[A]) * (12 - A);
  D := (Sum * 10) mod 11;

  if D = 10 then
  D := 0;
  except
  on E: EconvertError do
  begin
  showMessage('Erro ao converter a string para inteiro: ' + E.Message);
  edtCPF.color := clRed;
  end;
  end;

  bCPF := bCPF + IntToStr(D);

  buildCPF := bCPF;
  end; }

// Fun��o para cadastrar o cliente
{ function TFormCustomer.checkCPF(const tCPF: string) : Boolean;
  var
  fCPF, vCPF : String;
  begin

  fCPF := tCPF;
  vCPF := buildCPF(fCPF);

  if fCPF = vCPF then
  begin
  edtCPF.color := clWhite;
  Exit(true);
  end
  else
  begin
  //showMessage('CPF inv�lido!');
  edtCPF.color := clRed;
  Exit(false);
  end;
  end; }

// Fun��o para gerar um nome de arquivo �nico
function GenerateUniqueFileName(const BaseName: string): string;
var
  FileName: string;
  Index: Integer;
begin
  FileName := BaseName;
  Index := 1;

  // Verifica se o arquivo j� existe e gera um novo nome se necess�rio
  while FileExists('C:\Users\supor\Documents\Projetos\cpf_checker\Cad\' +
    FileName) do
  begin
    FileName := ChangeFileExt(BaseName, '(' + IntToStr(Index) + ')' +
      ExtractFileExt(BaseName));
    Inc(Index);
  end;

  Result := FileName;
end;

// Fun��o para escrever em TXT
procedure wtArchive(wtName, wtCPF, wtPhone, wtEmail: string);
var
  Myfile: TextFile;
  FileName: String;
begin
  FileName := GenerateUniqueFileName('Customer.txt');
  AssignFile(Myfile, 'C:\Users\supor\Documents\Projetos\cpf_checker\Cad\' +
    FileName);
  // ShowMessage('AssignFile executando');

  try
    Rewrite(Myfile);
    // ShowMessage('Rewrite executando');

    try
      if IOResult = 0 then
      begin
        // ShowMessage('Arquivo aberto com sucesso');

        WriteLn(Myfile, 'Name: ' + wtName);
        WriteLn(Myfile, 'CPF: ' + wtCPF);
        WriteLn(Myfile, 'Phone: ' + wtPhone);
        WriteLn(Myfile, 'Email: ' + wtEmail);
        // ShowMessage('Escrita no arquivo realizada com sucesso');
      end
      else
      begin
        ShowMessage('Erro: Arquivo n�o est� aberto');
      end;
    finally
      CloseFile(Myfile);
      // ShowMessage('CloseFile executado');
    end;
  except
    on E: EInOutError do
      ShowMessage('Erro de E/S ao acessar o arquivo: ' + E.Message);
    else
      ShowMessage('Erro desconhecido ao acessar o arquivo.');
  end;
end;

// Fun��o para verificar se os campos foram preenchidos de maneira correta
function TFormCustomer.vFields: Boolean;
begin
end;

// Procedimento para salvar o cadastro
procedure TFormCustomer.btnSaveClick(Sender: TObject);
var
  // Name : string;
  CPF: string;
  Phone: string;
  Email: string;
  cad: Boolean;
begin
  Name := edtName.Text;
  CPF := edmCPF.Text;
  Phone := edmPhone.Text;
  Email := edtEmail.Text;

  CPF := StringReplace(CPF, '.', '', [rfReplaceAll]);
  CPF := StringReplace(CPF, '-', '', [rfReplaceAll]);
  verifyCPF(CPF);
  wtArchive(Name, CPF, Phone, Email);
  ShowMessage('Cadastro efetuado com sucesso!');
  FormCustomer.Close;
end;

end.
