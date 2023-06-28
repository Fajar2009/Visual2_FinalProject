program Final_Project;

uses
  Forms,
  MenuUtama in 'MenuUtama.pas' {Form1},
  DataModul in 'DataModul.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
