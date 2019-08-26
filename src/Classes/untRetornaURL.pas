unit untRetornaURL;

interface

uses
  untRetornaURLAPI, Wininet;

type
  TRetornaURL = class (TInterfacedObject, IRetornaURLAPI)
  private
    FURL: string;
  public
    function TestarConexao: Boolean;
    function RetornaURL: string;

    constructor Create(AURL: String);
  published
    property URL: string read FURL write FURL;
  end;

implementation

uses
  Winapi.Windows;

{ TRetornaURL }

constructor TRetornaURL.Create(AURL: String);
begin
  FURL := AURL;
end;

function TRetornaURL.RetornaURL: string;
begin
  if TestarConexao then
    Result := FURL
  else
    raise EConexaoErro.Create('Não há conexão com a internet!');
end;

function TRetornaURL.TestarConexao: Boolean;
var
  i: dword;
begin
  result := InternetGetConnectedState(@i,0);
  if not result then
    raise EConexaoErro.Create('Não há conexão com a internet!');
end;

end.
