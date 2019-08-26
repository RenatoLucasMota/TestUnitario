unit untRetornaURLTest;

interface

uses
  TestFramework, untFactoryRetornaURL, untRetornaURL, untRetornaURLAPI, SysUtils,
  untHelperRetornaURL;

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
    procedure TestException;
    procedure TestURLValida;
    procedure TestURLVazia;
    procedure TestNovaURL;
  end;

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
  FRetornaURL := nil;
  FreeAndNil(FFactoryURL);
end;

procedure TRetornaURLTest.TestConexao;
begin
  CheckFalse(FRetornaURL.TestarConexao, 'Sem conexão com a internet!');
end;

procedure TRetornaURLTest.TestException;
begin
  CheckFalse(FRetornaURL.TestarConexao, 'Sem conexão com a internet!');
end;

procedure TRetornaURLTest.TestNovaURL;
begin
  CheckFalse(FRetornaURL.TestarConexao, 'Sem conexão com a internet!');
end;

procedure TRetornaURLTest.TestURLValida;
begin
  CheckFalse(FRetornaURL.TestarConexao, 'Sem conexão com a internet!');
end;

procedure TRetornaURLTest.TestURLVazia;
begin
  CheckFalse(FRetornaURL.TestarConexao, 'Sem conexão com a internet!');
end;

initialization
  TestFramework.RegisterTest('Tests Suite', TRetornaURLTest.Suite);

end.

