unit untHelperRetornaURL;

interface

uses
  untRetornaURL, WinINet;

type
  TRetornaURLHelper = class helper for TRetornaURL
    procedure LimpaURL;
    function VerificaURLValida: Boolean;
    procedure AtualizaURL(ANovaURL: String);
  end;

implementation

uses
  Winapi.Windows, System.SysUtils;

{ TRetornaURLHelper }

procedure TRetornaURLHelper.AtualizaURL(ANovaURL: String);
begin
  Self.URL := ANovaURL;
end;

procedure TRetornaURLHelper.LimpaURL;
begin
  Self.URL := '';
end;

function TRetornaURLHelper.VerificaURLValida: Boolean;
var
  hSession, hfile: hInternet;
  dwindex, dwcodelen: dword;
  dwcode: array[1..20] of char;
  res: pchar;
begin
  if pos('http://', lowercase(url)) = 0 then
    url := 'http://' + url;
  Result := false;
  hSession := InternetOpen('InetURL:/1.0', INTERNET_OPEN_TYPE_PRECONFIG, nil, nil, 0);
  if assigned(hsession) then
  begin
    hfile := InternetOpenUrl(hsession, pchar(url), nil, 0, INTERNET_FLAG_RELOAD, 0);
    dwIndex := 0;
    dwCodeLen := 10;
    HttpQueryInfo(hfile, HTTP_QUERY_STATUS_CODE, @dwcode, dwcodeLen, dwIndex);
    res := pchar(@dwcode);
    result := (res = '200') or (res = '302');
    if assigned(hfile) then
      InternetCloseHandle(hfile);
    InternetCloseHandle(hsession);
  end;
end;

end.
