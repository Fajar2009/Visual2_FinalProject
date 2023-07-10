unit User;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids;

type
  TFormUser = class(TForm)
    DBGrid1: TDBGrid;
    BBaru: TBitBtn;
    BTambah: TBitBtn;
    BEdit: TBitBtn;
    BHapus: TBitBtn;
    BCetak: TBitBtn;
    BBatal: TBitBtn;
    BKeluar: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    EUsername: TEdit;
    EPass: TEdit;
    CmbLevel: TComboBox;
    CmbStatus: TComboBox;
    procedure bersih;
    procedure BBaruClick(Sender: TObject);
    procedure BBatalClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure BTambahClick(Sender: TObject);
    procedure BKeluarClick(Sender: TObject);
    procedure BEditClick(Sender: TObject);
    procedure BHapusClick(Sender: TObject);
    procedure BCetakClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormUser: TFormUser;
   id:String;

implementation

uses DataModul, CetakModule;

{$R *.dfm}

procedure TFormUser.bersih;
begin
BBaru.Enabled:=true;
BCetak.Enabled:=true;
BTambah.Enabled:=false;
BEdit.Enabled:=false;
BHapus.Enabled:=false;
BBatal.Enabled:=false;

EUsername.Enabled:=false;
EPass.Enabled:=false;
CmbLevel.Enabled:=false;
CmbStatus.Enabled:=false;

EUsername.Text:='';
EPass.Text:='';
CmbLevel.ItemIndex:=0;
CmbStatus.ItemIndex:=0;


DataModule1.ZQUser.SQL.Clear;
DataModule1.ZQUser.SQL.Add('select * from user');
DataModule1.ZQUser.Open;

//dbgrd1.Columns[0].Width:=70;


end;

procedure TFormUser.BBaruClick(Sender: TObject);
begin
BBaru.Enabled:=false;
BTambah.Enabled:=true;
BCetak.Enabled:=false;
BBatal.Enabled:=true;

EUsername.Enabled:=true;
EPass.Enabled:=true;
CmbLevel.Enabled:=true;
CmbStatus.Enabled:=true;

end;

procedure TFormUser.BBatalClick(Sender: TObject);
begin
bersih;
end;

procedure TFormUser.DBGrid1CellClick(Column: TColumn);
begin
BTambah.Enabled:=false;
BBaru.Enabled:=false;
BEdit.Enabled:=true;
BHapus.Enabled:=true;
BCetak.Enabled:=false;
BBatal.Enabled:=true;

EUsername.Enabled:=true;
EPass.Enabled:=true;
CmbLevel.Enabled:=true;
CmbStatus.Enabled:=true;

id:=DataModule1.ZQUser.Fields[0].AsString;
EUsername.Text:=DataModule1.ZQUser.Fields[1].AsString;
EPass.Text:=DataModule1.ZQUser.Fields[2].AsString;


if (DataModule1.ZQUser.Fields[3].AsString='Admin')  then
begin
 CmbLevel.ItemIndex:=0;
end else
if (DataModule1.ZQUser.Fields[3].AsString='Guru')  then
begin
 CmbLevel.ItemIndex:=1;
end else
begin
 CmbLevel.ItemIndex:=2;
end;



if (DataModule1.ZQUser.Fields[4].AsString='Aktif')  then
begin
 CmbStatus.ItemIndex:=0;
end else
begin
 CmbStatus.ItemIndex:=1;
end;

end;

procedure TFormUser.BTambahClick(Sender: TObject);
begin
if (EUsername.Text='') or (EPass.Text='')then
begin
 ShowMessage('Data belum Diisi Dengan Benar');
end else
if (DataModule1.ZQUser.Locate('Username',EUsername.Text,[])) and (DataModule1.ZQUser.Locate('Password',EPass.Text,[])) then
begin
ShowMessage('Data sudah Terdapat di dalam database');
end else
begin
with DataModule1.ZQUser do
begin
 SQL.Clear;
 SQL.Add('insert into user values("''","'+EUsername.Text+'","'+EPass.Text+'","'+CmbLevel.Text+'","'+CmbStatus.Text+'")');
 ExecSQL;
 ShowMessage('Data sudah Ditambahkan');
 bersih;
end
end
end;

procedure TFormUser.BKeluarClick(Sender: TObject);
begin
FormUser.close;
end;

procedure TFormUser.BEditClick(Sender: TObject);
begin

if (EUsername.Text='') or (EPass.Text='') then
begin
 ShowMessage('Data belum Diisi Dengan Benar');
end else
if (EUsername.Text=DataModule1.ZQUser.Fields[1].AsString) and (EPass.Text=DataModule1.ZQUser.Fields[1].AsString) then
begin
ShowMessage('DATA TIDAK ADA PERUBAHAN');
end else
begin
with DataModule1.ZQSiswa do
begin
 SQL.Clear;
 SQL.Add('Update user set Username= "'+EUsername.Text+'",Password="'+EPass.Text+'",Level="'+CmbLevel.Text+'",Status="'+CmbStatus.Text+'"where id="'+id+'"');
 ExecSQL;
 ShowMessage('Data sudah DiUbah');
 bersih;
end
end
end;


procedure TFormUser.BHapusClick(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
DataModule1.ZQUser.SQL.Clear;
DataModule1.ZQUser.SQL.Add(' delete from user where id="'+id+'"');
DataModule1.ZQUser. ExecSQL;

ShowMessage('DATA BERHASIL DIHAPUS');

bersih;
end else
begin
ShowMessage('DATA BATAL DIHAPUS');
bersih;
end;
end;

procedure TFormUser.BCetakClick(Sender: TObject);
begin
ModulCetak.CetakUser.ShowReport;
end;

end.
