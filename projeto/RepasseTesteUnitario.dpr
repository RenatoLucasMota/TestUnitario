program RepasseTesteUnitario;
{

  Delphi DUnit Test Project
  -------------------------
  This project contains the DUnit test framework and the GUI/Console test runners.
  Add "CONSOLE_TESTRUNNER" to the conditional defines entry in the project options
  to use the console test runner.  Otherwise the GUI test runner will be used by
  default.

}

{$IFDEF CONSOLE_TESTRUNNER}
{$APPTYPE CONSOLE}
{$ENDIF}

uses
  DUnitTestRunner,
  untFactoryRetornaURLAPI in '..\src\API\untFactoryRetornaURLAPI.pas',
  untRetornaURLAPI in '..\src\API\untRetornaURLAPI.pas',
  untFactoryRetornaURL in '..\src\Classes\untFactoryRetornaURL.pas',
  untRetornaURL in '..\src\Classes\untRetornaURL.pas',
  untRetornaURLTest in '..\src\Classes\untRetornaURLTest.pas',
  untConstantesURL in '..\src\Consts\untConstantesURL.pas',
  untHelperRetornaURL in '..\src\Helpers\untHelperRetornaURL.pas';

{R *.RES}

begin
  DUnitTestRunner.RunRegisteredTests;
end.

