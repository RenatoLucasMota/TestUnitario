unit untFactoryRetornaURLAPI;

interface

uses
  untRetornaURLAPI, untRetornaURL;

type
  IFactoryRetornaURL = interface
  ['{355A19C5-4D77-4A8B-9FAA-2C93C6E1F10C}']
    function ConfiguraURL(ATipoURL: TTipoURL): TRetornaURL;
  end;

implementation

end.
