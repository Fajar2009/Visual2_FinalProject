unit Kelas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, Buttons;

type
  TFormKelas = class(TForm)
    BBaru: TBitBtn;
    BTambah: TBitBtn;
    BEdit: TBitBtn;
    BHapus: TBitBtn;
    BCetak: TBitBtn;
    BBatal: TBitBtn;
    BKeluar: TBitBtn;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    ENama: TEdit;
    CmbJurusan: TComboBox;
    procedure bersih;
    procedure BBatalClick(Sender: TObject);
    procedure BCetakClick(Sender: TObject);
    procedure BKeluarClick(Sender: TObject);
    procedure BBaruClick(Sender: TObject);
    procedure BTambahClick(Sender: TObject);
    procedure BHapusClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure BEditClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormKelas: TFormKelas;
   id:String;

implementation

uses CetakModule, DataModul;

{$R *.dfm}

{ TFormKelas }

procedure TFormKelas.bersih;
begin
ENama.Text:='';
CmbJurusan.ItemIndex:=0;

ENama.Enabled:=False;
CmbJurusan.Enabled:=False;

BBaru.Enabled:=true;
BCetak.Enabled:=true;
BTambah.Enabled:=false;
BEdit.Enabled:=false;
BHapus.Enabled:=false;
BBatal.Enabled:=false;

DataModule1.ZQKelas.SQL.Clear;
DataModule1.ZQKelas.SQL.Add('select * from kelas');
DataModule1.ZQKelas.Open;
end;

procedure TFormKelas.BBatalClick(Sender: TObject);
begin
bersih;
end;

procedure TFormKelas.BCetakClick(Sender: TObject);
begin
ModulCetak.CetakKelas.ShowReport;
end;

procedure TFormKelas.BKeluarClick(Sender: TObject);
begin
FormKelas.Close;
end;

procedure TFormKelas.BBaruClick(Sender: TObject);
begin
BBaru.Enabled:=false;
BTambah.Enabled:=true;
BCetak.Enabled:=false;
BBatal.Enabled:=true;

ENama.Enabled:=true;
CmbJurusan.Enabled:=true;
end;

procedure TFormKelas.BTambahClick(Sender: TObject);
begin
if (ENama.Text='') or (CmbJurusan.Text='')then
begin
 ShowMessage('Data belum Diisi Dengan Benar');
end else
if (DataModule1.ZQKelas.Locate('Nama',ENama.Text,[])) and (DataModule1.ZQKelas.Locate('Jurusan',CmbJurusan.Text,[])) then
begin
ShowMessage('Data sudah Terdapat di dalam database');
end else
begin
with DataModule1.ZQKelas do
begin
 SQL.Clear;
 SQL.Add('insert into kelas values("''","'+ENama.Text+'","'+CmbJurusan.Text+'")');
 ExecSQL;
 ShowMessage('Data sudah Ditambahkan');
 bersih;
end
end
end;

procedure TFormKelas.BHapusClick(Sender: TObject);

begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
DataModule1.ZQKelas.SQL.Clear;
DataModule1.ZQKelas.SQL.Add(' delete from kelas where id="'+id+'"');
DataModule1.ZQKelas. ExecSQL;
ShowMessage('DATA BERHASIL DIHAPUS');
bersih;
end else
begin
ShowMessage('DATA BATAL DIHAPUS');
bersih;
end
end;


procedure TFormKelas.DBGrid1CellClick(Column: TColumn);
begin
BTambah.Enabled:=false;
BBaru.Enabled:=false;
BEdit.Enabled:=true;
BHapus.Enabled:=true;
BCetak.Enabled:=false;
BBatal.Enabled:=true;

id:=DataModule1.ZQKelas.Fields[0].AsString;
ENama.Text:=DataModule1.ZQKelas.Fields[1].AsString;

ENama.Enabled:=true;
CmbJurusan.Enabled:=true;

if (DataModule1.ZQKelas.Fields[2].AsString='Umum')  then
begin
 CmbJurusan.ItemIndex:=0;
end else
if (DataModule1.ZQKelas.Fields[2].AsString='IPA')  then
begin
 CmbJurusan.ItemIndex:=1;
end else
if (DataModule1.ZQKelas.Fields[2].AsString='IPS')  then
begin
 CmbJurusan.ItemIndex:=2;
end else
begin
 CmbJurusan.ItemIndex:=3;
end;


end;

procedure TFormKelas.BEditClick(Sender: TObject);
begin
if (ENama.Text='') then
begin
 ShowMessage('Data belum Diisi Dengan Benar');
end else
if (ENama.Text=DataModule1.ZQKelas.Fields[1].AsString) and (CmbJurusan.Text=DataModule1.ZQKelas.Fields[2].AsString) then
begin
ShowMessage('DATA TIDAK ADA PERUBAHAN');
end else
begin
with DataModule1.ZQKelas do
begin
 SQL.Clear;
 SQL.Add('Update kelas set Nama= "'+ENama.Text+'",Jurusan="'+CmbJurusan.Text+'"where id="'+id+'"');
 ExecSQL;
 ShowMessage('Data sudah DiUbah');
 bersih;
end
end
end;

end.
