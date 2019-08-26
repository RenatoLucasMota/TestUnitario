unit untFactoryRetornaURL;

interface

uses
  untRetornaURLAPI, untRetornaURL, untConstantesURL, untFactoryRetornaURLAPI;

type
  TFactoryRetornaURL = class (TInterfacedObject, IFactoryRetornaURL)
  public
    function ConfiguraURL(ATipoURL: TTipoURL): TRetornaURL;
  end;

implementation

{ TFactoryRetornaURL }

function TFactoryRetornaURL.ConfiguraURL(ATipoURL: TTipoURL): TRetornaURL;
begin
  case ATipoURL of
    tuURLGoogle : Result := TRetornaURL.Create(URL_GOOGLE);
    tuURLFacebook : Result := TRetornaURL.Create(URL_FACEBOOK);
    tuURLYoutube : Result := TRetornaURL.Create(URL_YOUTUBE);
  end;
end;

end.
