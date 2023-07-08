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
    User2: TMenuItem;
    Point1: TMenuItem;
    User3: TMenuItem;
    User4: TMenuItem;
    DataSiswa1: TMenuItem;
    DataOrangTua1: TMenuItem;
    DataGuru1: TMenuItem;
    DataSemester1: TMenuItem;
    DataLaporan1: TMenuItem;
    DataUser1: TMenuItem;
    procedure DataSiswa1Click(Sender: TObject);
    procedure DataUser1Click(Sender: TObject);
    procedure DataOrangTua1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMainMenu: TFormMainMenu;

implementation

uses Guru, OrangTua, Siswa, User;

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

end.
