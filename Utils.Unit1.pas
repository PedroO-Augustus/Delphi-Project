unit Utils.Unit1;

interface

uses
  System.SysUtils, IdHashMessageDigest;

function GenHashPass(const Password: String): String;

implementation

function GenHashPass(const Password: String): String;
var
  Hash: TIdHashMessageDigest5;
begin
  Hash := TIdHashMessageDigest5.Create;
  try
    // Criptografa a senha e retorna o valor como string hexadecimal
    Result := Hash.HashStringAsHex(Password);
  finally
    Hash.Free; // Libera o objeto após o uso
  end;
end;

end.
