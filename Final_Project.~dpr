program Final_Project;

uses
  Forms,
  MenuUtama in 'MenuUtama.pas' {FormMainMenu},
  DataModul in 'DataModul.pas' {DataModule1: TDataModule},
  Siswa in 'Siswa.pas' {FormSiswa},
  OrangTua in 'OrangTua.pas' {FormOrtu},
  User in 'User.pas' {FormUser},
  Guru in 'Guru.pas' {FormGuru},
  Laporan in 'Laporan.pas' {Form1},
  CetakModule in 'CetakModule.pas' {ModulCetak: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormMainMenu, FormMainMenu);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TFormSiswa, FormSiswa);
  Application.CreateForm(TFormOrtu, FormOrtu);
  Application.CreateForm(TFormUser, FormUser);
  Application.CreateForm(TFormGuru, FormGuru);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TModulCetak, ModulCetak);
  Application.Run;
end.
