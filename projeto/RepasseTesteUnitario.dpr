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
  untConstantesURL in '..\src\untConstantesURL.pas',
  untFactoryRetornaURL in '..\src\untFactoryRetornaURL.pas',
  untFactoryRetornaURLAPI in '..\src\untFactoryRetornaURLAPI.pas',
  untHelperRetornaURL in '..\src\untHelperRetornaURL.pas',
  untRetornaURL in '..\src\untRetornaURL.pas',
  untRetornaURLAPI in '..\src\untRetornaURLAPI.pas',
  untRetornaURLTest in '..\src\untRetornaURLTest.pas';

{R *.RES}

begin
  DUnitTestRunner.RunRegisteredTests;
end.

