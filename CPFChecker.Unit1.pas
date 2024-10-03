unit CPFChecker.Unit1;

interface

uses
  System.SysUtils, Vcl.Dialogs;

function verifyCPF(const CPF: String): Boolean;

implementation

function verifyCPF(const CPF: String): Boolean;
var
  A, D, Sum: Integer;
  bCPF: String;
begin
  bCPF := '';
  // Remove os dígitos verificadores do 'corpo' do CPF
  for A := 1 to Length(CPF) do
    if A < 10 then
       bCPF := bCPF + CPF[A];

  // Valida o primeiro dígito verificador
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
       ShowMessage('Erro ao converter a string para inteiro: ' + E.Message);
    end;
  end;

  bCPF := bCPF + IntToStr(D);

  // Validar segundo dígito verificador
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
    end;
  end;

  bCPF := bCPF + IntToStr(D);

  if bCPF = CPF then
  begin
     Exit(true);
  end
  else
  begin
     Exit(false);
  end;
end;

end.
