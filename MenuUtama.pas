unit MenuUtama;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
  TFormMainMenu = class(TForm)
    MainMenu1: TMainMenu;
    S1: TMenuItem;
    User1: TMenuItem;
    User3: TMenuItem;
    User4: TMenuItem;
    DataSiswa1: TMenuItem;
    DataOrangTua1: TMenuItem;
    DataLaporan1: TMenuItem;
    DataUser1: TMenuItem;
    Kelas1: TMenuItem;
    DataKelas1: TMenuItem;
    DataHubungan1: TMenuItem;
    DataWalikelas1: TMenuItem;
    DataSemester2: TMenuItem;
    procedure DataSiswa1Click(Sender: TObject);
    procedure DataUser1Click(Sender: TObject);
    procedure DataOrangTua1Click(Sender: TObject);
    procedure DataGuru1Click(Sender: TObject);
    procedure DataLaporan1Click(Sender: TObject);
    procedure DataKelas1Click(Sender: TObject);
    procedure DataWalikelas1Click(Sender: TObject);
    procedure DataHubungan1Click(Sender: TObject);
    procedure DataSemester2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMainMenu: TFormMainMenu;

implementation

uses Guru, OrangTua, Siswa, User, Kelas, Poin, Hubungan, Semester;

{$R *.dfm}

procedure TFormMainMenu.DataSiswa1Click(Sender: TObject);
begin
FormSiswa.show;
end;

procedure TFormMainMenu.DataUser1Click(Sender: TObject);
begin
FormUser.Show;
end;

procedure TFormMainMenu.DataOrangTua1Click(Sender: TObject);
begin
FormOrtu.Show;
end;

procedure TFormMainMenu.DataGuru1Click(Sender: TObject);
begin
FormGuru.Show;
end;

procedure TFormMainMenu.DataLaporan1Click(Sender: TObject);
begin
FormPoint.Show;
end;

procedure TFormMainMenu.DataKelas1Click(Sender: TObject);
begin
FormKelas.Show;
end;

procedure TFormMainMenu.DataWalikelas1Click(Sender: TObject);
begin
FormGuru.Show;
end;

procedure TFormMainMenu.DataHubungan1Click(Sender: TObject);
begin
 FormHubungan.Show;
end;

procedure TFormMainMenu.DataSemester2Click(Sender: TObject);
begin
FormSemester.Show;
end;

end.
