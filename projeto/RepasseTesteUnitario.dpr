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
  untRetornaURLAPI in 'untRetornaURLAPI.pas',
  untRetornaURL in 'untRetornaURL.pas',
  untConstantesURL in 'untConstantesURL.pas',
  untFactoryRetornaURL in 'untFactoryRetornaURL.pas',
  untHelperRetornaURL in 'untHelperRetornaURL.pas',
  untRetornaURLTest in 'untRetornaURLTest.pas',
  untFactoryRetornaURLAPI in 'untFactoryRetornaURLAPI.pas';

{R *.RES}

begin
  DUnitTestRunner.RunRegisteredTests;
end.

