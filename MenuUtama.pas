unit MenuUtama;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
  TForm1 = class(TForm)
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
