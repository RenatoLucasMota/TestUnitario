unit untRetornaURLTest;

interface

uses
  TestFramework, untFactoryRetornaURL, untRetornaURL, untRetornaURLAPI, SysUtils,
  untHelperRetornaURL, untConstantesURL;

type
  TRetornaURLTest = class(TTestCase)
  private
    FRetornaURL: TRetornaURL;
    FFactoryURL: TFactoryRetornaURL;
  public
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure TestConexao;
    procedure TestNovaURL;
    procedure TestURLValida;
    procedure TestExceptionUrlInvalida;
    procedure TestURLVazia;
  end;

const
  NOVA_URL = 'http://www.uol.com.br';
  URL_INVALIDA = 'wxw.equipejeep.cow.bx';

implementation


{ TRetornaURLTest }

procedure TRetornaURLTest.SetUp;
begin
  inherited;
  FFactoryURL := TFactoryRetornaURL.Create;
  FRetornaURL := FFactoryURL.ConfiguraURL(tuURLGoogle);
end;

procedure TRetornaURLTest.TearDown;
begin
  inherited;
  FreeAndNil(FRetornaURL);
  FreeAndNil(FFactoryURL);
end;

procedure TRetornaURLTest.TestConexao;
begin
  CheckTrue(FRetornaURL.TestarConexao, 'Sem conexão com a internet!');
end;

procedure TRetornaURLTest.TestNovaURL;
begin
  FRetornaURL.AtualizaURL(NOVA_URL);
  CheckEquals(FRetornaURL.RetornaURL, NOVA_URL, 'Url não foi atualizada!');
end;

procedure TRetornaURLTest.TestURLValida;
begin
  CheckTrue(FRetornaURL.VerificaURLValida, 'Url inválida!');
end;

procedure TRetornaURLTest.TestExceptionUrlInvalida;
begin
  FRetornaURL.AtualizaURL(URL_INVALIDA);
  CheckException(TestURLValida, EURLInvalida, 'Url inválida!');
end;

procedure TRetornaURLTest.TestURLVazia;
begin
  FRetornaURL.LimpaURL;
  CheckEquals(FRetornaURL.RetornaURL, VAZIO, 'Url não foi limpa!');
end;

initialization
  TestFramework.RegisterTest('Tests Suite', TRetornaURLTest.Suite);

end.

