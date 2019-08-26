unit untRetornaURLAPI;

interface

uses
  SysUtils;

type
  EConexaoErro = class(Exception);

  TTipoURL = (tuURLGoogle, tuURLFacebook, tuURLYoutube);

  IRetornaURLAPI = interface
  ['{60C2E737-F689-41C0-A7AB-B0BCA84B9E28}']
    function RetornaURL: string;
    function TestarConexao: Boolean;
  end;

implementation

end.
