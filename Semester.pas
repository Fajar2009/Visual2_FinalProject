unit Semester;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, Buttons, ComCtrls;

type
  TFormSemester = class(TForm)
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
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    CmbNamaSiswa: TComboBox;
    CmbNamaPoin: TComboBox;
    CmbNamaWali: TComboBox;
    CmbNamaOrtu: TComboBox;
    CmbNamaKelas: TComboBox;
    CmbStatus: TComboBox;
    CmbSemester: TComboBox;
    CmbTingkat: TComboBox;
    DtpTanggal: TDateTimePicker;
    procedure bersih;
    procedure BKeluarClick(Sender: TObject);
    procedure BBatalClick(Sender: TObject);
    procedure BCetakClick(Sender: TObject);
    procedure BBaruClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BHapusClick(Sender: TObject);
    procedure BTambahClick(Sender: TObject);
    procedure BEditClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSemester: TFormSemester;
  id,idsiswa,idpoint,idwali,idwalikelas,idkelas:String;

implementation

uses CetakModule, DataModul, DB;

{$R *.dfm}

procedure TFormSemester.bersih;
begin
BBaru.Enabled:=true;
BCetak.Enabled:=true;
BTambah.Enabled:=false;
BEdit.Enabled:=false;
BHapus.Enabled:=false;
BBatal.Enabled:=false;

CmbNamaSiswa.Enabled:= false;
CmbNamaPoin.Enabled:= false;
CmbNamaWali.Enabled:= false;
CmbNamaOrtu.Enabled:= false;
CmbNamaKelas.Enabled:= false;
CmbStatus.Enabled:= false;
CmbSemester.Enabled:= false;
CmbTingkat.Enabled:= false;
DtpTanggal.Enabled:= false;

CmbNamaSiswa.ItemIndex:=-1;
CmbNamaPoin.ItemIndex:=-1;
CmbNamaWali.ItemIndex:=-1;
CmbNamaOrtu.ItemIndex:=-1;
CmbNamaKelas.ItemIndex:=-1;
CmbStatus.ItemIndex:=0;
CmbSemester.ItemIndex:=0;
CmbTingkat.ItemIndex:=0;
DtpTanggal.Date:= Date;

CmbNamaSiswa.Text:='';
CmbNamaPoin.Text:='';
CmbNamaWali.Text:='';
CmbNamaOrtu.Text:='';
CmbNamaKelas.Text:='';

DataModule1.ZQSemester.SQL.Clear;
DataModule1.ZQSemester.SQL.Add('select * from semester');
DataModule1.ZQSemester.Open;

end;

procedure TFormSemester.BKeluarClick(Sender: TObject);
begin
 FormSemester.Close;
end;

procedure TFormSemester.BBatalClick(Sender: TObject);
begin
bersih;
end;

procedure TFormSemester.BCetakClick(Sender: TObject);
begin
ModulCetak.CetakSemester.ShowReport();
end;

procedure TFormSemester.BBaruClick(Sender: TObject);
begin
BBaru.Enabled:=false;
BTambah.Enabled:=true;
BCetak.Enabled:=false;
BBatal.Enabled:=true;

CmbNamaSiswa.Enabled:= true;
CmbNamaPoin.Enabled:= true;
CmbNamaWali.Enabled:= true;
CmbNamaOrtu.Enabled:= true;
CmbNamaKelas.Enabled:= true;
CmbStatus.Enabled:= true;
CmbSemester.Enabled:= true;
CmbTingkat.Enabled:= true;
DtpTanggal.Enabled:= true;

end;

procedure TFormSemester.FormCreate(Sender: TObject);
begin
with DataModule1.ZQCari1 do
begin
 SQL.Clear;
 SQL.Add('select * from siswa');
 Open;
 First;
 while not Eof do
 begin
 CmbNamaSiswa.Items.Add(DataModule1.ZQCari1.Fields[3].AsString);
 Next;
 end;

 SQL.Clear;
 SQL.Add('select * from ortu');
 Open;
 First;
 while not Eof do
 begin
 CmbNamaOrtu.Items.Add(DataModule1.ZQCari1.Fields[2].AsString);
 Next;
 end;

 SQL.Clear;
 SQL.Add('select * from poin');
 Open;
 First;
 while not Eof do
 begin
 CmbNamaPoin.Items.Add(DataModule1.ZQCari1.Fields[1].AsString);
 Next;
 end;

 SQL.Clear;
 SQL.Add('select * from walikelas');
 Open;
 First;
 while not Eof do
 begin
 CmbNamaWali.Items.Add(DataModule1.ZQCari1.Fields[2].AsString);
 Next;
 end;

 SQL.Clear;
 SQL.Add('select * from kelas');
 Open;
 First;
 while not Eof do
 begin
 CmbNamaKelas.Items.Add(DataModule1.ZQCari1.Fields[1].AsString);
 Next;
 end;

end
end;

procedure TFormSemester.BHapusClick(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
DataModule1.ZQSemester.SQL.Clear;
DataModule1.ZQSemester.SQL.Add(' delete from semester where id="'+id+'"');
DataModule1.ZQSemester. ExecSQL;
ShowMessage('DATA BERHASIL DIHAPUS');
bersih;
end else
begin
ShowMessage('DATA BATAL DIHAPUS');
bersih;
end;
end;

procedure TFormSemester.BTambahClick(Sender: TObject);
begin
with DataModule1.ZQCari1 do
begin

SQL.Clear;
SQL.Add('select * from siswa where Nama_Siswa="'+CmbNamaSiswa.Text+'"');
Open;
idsiswa:=Fields[0].AsString;

SQL.Clear;
SQL.Add('select * from ortu where Nama="'+CmbNamaOrtu.Text+'"');
Open;
idwali:=Fields[0].AsString;

SQL.Clear;
SQL.Add('select * from poin where Nama_Poin="'+CmbNamaPoin.Text+'"');
Open;
idpoint:=Fields[0].AsString;

SQL.Clear;
SQL.Add('select * from walikelas where Nama="'+CmbNamaWali.Text+'"');
Open;
idwalikelas:=Fields[0].AsString;

SQL.Clear;
SQL.Add('select * from kelas where Nama="'+CmbNamaKelas.Text+'"');
Open;
idkelas:=Fields[0].AsString;

end;
if (CmbNamaSiswa.Text='') or (CmbNamaPoin.Text='') or (CmbNamaWali.Text='') or (CmbNamaOrtu.Text='') or (CmbNamaKelas.Text='') then
begin
 ShowMessage('Data belum Diisi Dengan Benar');
end else
if (DataModule1.ZQSemester.Locate('Id_Siswa',idsiswa,[])) and (DataModule1.ZQSemester.Locate('Id_Poin',idpoint,[])) and (DataModule1.ZQSemester.Locate('Tanggal',DtpTanggal.Date,[])) and (DataModule1.ZQSemester.Locate('Tingkat_Kelas',CmbTingkat.Text,[])) then
begin
ShowMessage('Data sudah Terdapat di dalam database');
end else
begin
with DataModule1.ZQSemester do
begin
 SQL.Clear;
 SQL.Add('insert into semester values("''","'+idsiswa+'","'+idpoint+'","'+idwalikelas+'","'+idwali+'","'+idkelas+'","'+FormatDateTime('yyyy/mm/dd',DtpTanggal.Date)+'","'+CmbSemester.Text+'","'+CmbStatus.Text+'","'+CmbTingkat.Text+'")');
 ExecSQL;
 ShowMessage('Data sudah Ditambahkan');
 bersih;
end
end
end;

procedure TFormSemester.BEditClick(Sender: TObject);
begin
//cari data id siswa dan wali dgn nama isikan ke idsiswa dan wali
if (CmbNamaSiswa.Text='') or (CmbNamaWali.Text='')then
begin
 ShowMessage('Data belum Diisi Dengan Benar');
end else
if (FormatDateTime('yyyy/mm/dd',DtpTanggal.Date)=DataModule1.ZQSemester.Fields[6].AsString) and (CmbSemester.Text=DataModule1.ZQSemester.Fields[7].AsString) and (CmbStatus.Text=DataModule1.ZQSemester.Fields[8].AsString) and (CmbTingkat.Text=DataModule1.ZQSemester.Fields[9].AsString) then
begin
ShowMessage('DATA TIDAK ADA PERUBAHAN');
end else
begin
with DataModule1.ZQSemester do
begin
 SQL.Clear;
// SQL.Add('Update semester set Tanggal= "'+FormatDateTime('yyyy/mm/dd',DtpTanggal.Date)+'",Semester="'+CmbSemester.Text+'",Status="'+CmbStatus.Text+'",Tingkat_Kelas="'+CmbTingkat.Text+' "where id="'+id+'"');
 SQL.Add('Update semester set Tanggal= "'+FormatDateTime('yyyy/mm/dd',DtpTanggal.Date)+'",Semester="'+CmbSemester.Text+'",Status="'+CmbStatus.Text+'",Tingkat_Kelas="'+CmbTingkat.Text+' "where id="'+id+'"');
 ExecSQL;
 ShowMessage('Data sudah DiUbah');
 bersih;
end
end
end;

procedure TFormSemester.DBGrid1CellClick(Column: TColumn);
begin
BTambah.Enabled:=false;
BBaru.Enabled:=false;
BEdit.Enabled:=true;
BHapus.Enabled:=true;
BCetak.Enabled:=false;
BBatal.Enabled:=true;

{CmbNamaSiswa.Enabled:= true;
CmbNamaPoin.Enabled:= true;
CmbNamaWali.Enabled:= true;
CmbNamaOrtu.Enabled:= true;
CmbNamaKelas.Enabled:= true;}
CmbStatus.Enabled:= true;
CmbSemester.Enabled:= true;
CmbTingkat.Enabled:= true;
DtpTanggal.Enabled:= true;

id:= DataModule1.ZQSemester.Fields[0].AsString;
idsiswa:=DataModule1.ZQSemester.Fields[1].AsString;
idpoint:=DataModule1.ZQSemester.Fields[2].AsString;
idwali:=DataModule1.ZQSemester.Fields[4].AsString;
idwalikelas:=DataModule1.ZQSemester.Fields[3].AsString;
idkelas:=DataModule1.ZQSemester.Fields[5].AsString;

with DataModule1.ZQCari1 do
begin

SQL.Clear;
SQL.Add('select * from siswa where Id="'+idsiswa+'"');
Open;
CmbNamaSiswa.Text:=Fields[3].AsString;

SQL.Clear;
SQL.Add('select * from ortu where Id="'+idwali+'"');
Open;
CmbNamaOrtu.Text:=Fields[2].AsString;

SQL.Clear;
SQL.Add('select * from poin where Id="'+idpoint+'"');
Open;
CmbNamaPoin.Text:=Fields[1].AsString;

SQL.Clear;
SQL.Add('select * from walikelas where Id="'+idwalikelas+'"');
Open;
CmbNamaWali.Text:=Fields[2].AsString;

SQL.Clear;
SQL.Add('select * from kelas where Id="'+idkelas+'"');
Open;
CmbNamaKelas.Text:=Fields[1].AsString;

DtpTanggal.DateTime:=DataModule1.ZQSemester.Fields[6].AsDateTime;

if (DataModule1.ZQSemester.Fields[7].AsString='Genap')  then
begin
 CmbSemester.ItemIndex:=0;
end else
begin
 CmbSemester.ItemIndex:=1;
end;

if (DataModule1.ZQSemester.Fields[8].AsString='Aktif')  then
begin
 CmbStatus.ItemIndex:=0;
end else
begin
 CmbStatus.ItemIndex:=1;
end;

if (DataModule1.ZQSemester.Fields[9].AsString='X')  then
begin
 CmbTingkat.ItemIndex:=0;
end else
if (DataModule1.ZQSemester.Fields[9].AsString='XI')  then
begin
 CmbTingkat.ItemIndex:=1;
end else
begin
 CmbTingkat.ItemIndex:=2;
end;

end;

end;

end.
