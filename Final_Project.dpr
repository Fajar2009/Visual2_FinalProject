program Final_Project;

uses
  Forms,
  MenuUtama in 'MenuUtama.pas' {FormMainMenu},
  DataModul in 'DataModul.pas' {DataModule1: TDataModule},
  Siswa in 'Siswa.pas' {FormSiswa},
  OrangTua in 'OrangTua.pas' {FormOrtu},
  User in 'User.pas' {FormUser},
  Guru in 'Guru.pas' {FormGuru},
  CetakModule in 'CetakModule.pas' {ModulCetak: TDataModule},
  Kelas in 'Kelas.pas' {FormKelas},
  Poin in 'Poin.pas' {FormPoint},
  Hubungan in 'Hubungan.pas' {FormHubungan},
  Semester in 'Semester.pas' {FormSemester};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormMainMenu, FormMainMenu);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TFormSiswa, FormSiswa);
  Application.CreateForm(TFormOrtu, FormOrtu);
  Application.CreateForm(TFormUser, FormUser);
  Application.CreateForm(TFormGuru, FormGuru);
  Application.CreateForm(TModulCetak, ModulCetak);
  Application.CreateForm(TFormKelas, FormKelas);
  Application.CreateForm(TFormPoint, FormPoint);
  Application.CreateForm(TFormHubungan, FormHubungan);
  Application.CreateForm(TFormSemester, FormSemester);
  Application.Run;
end.
