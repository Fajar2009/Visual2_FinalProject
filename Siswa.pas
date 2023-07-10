unit Siswa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, ComCtrls;

type
  TFormSiswa = class(TForm)
    DBGrid1: TDBGrid;
    BBaru: TBitBtn;
    BTambah: TBitBtn;
    BEdit: TBitBtn;
    BHapus: TBitBtn;
    BCetak: TBitBtn;
    BBatal: TBitBtn;
    BKeluar: TBitBtn;
    NIS: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    ENis: TEdit;
    ENisn: TEdit;
    ENama: TEdit;
    ENik: TEdit;
    ETemLahir: TEdit;
    CmbJenisKel: TComboBox;
    EAlamat: TEdit;
    ETel: TEdit;
    EHp: TEdit;
    DateLahir: TDateTimePicker;
    CmbStatus: TComboBox;
    procedure bersih;
    procedure BBaruClick(Sender: TObject);
    procedure BBatalClick(Sender: TObject);
    procedure BKeluarClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure BTambahClick(Sender: TObject);
    procedure BEditClick(Sender: TObject);
    procedure BHapusClick(Sender: TObject);
    procedure BCetakClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSiswa: TFormSiswa;
  id:String;

implementation

uses DataModul, DB, CetakModule;

{$R *.dfm}

procedure TFormSiswa.BBaruClick(Sender: TObject);
begin
BBaru.Enabled:=false;
BTambah.Enabled:=true;
BCetak.Enabled:=false;
BBatal.Enabled:=true;

ENis.Enabled:=true;
ENisn.Enabled:=true;
ENama.Enabled:=true;
ENik.Enabled:=true;
ETemLahir.Enabled:=true;
EAlamat.Enabled:=true;
ETel.Enabled:=true;
EHp.Enabled:=true;
DateLahir.Enabled:=true;
CmbJenisKel.Enabled:=true;
CmbStatus.Enabled:=true;

end;

procedure TFormSiswa.bersih;
begin
ENis.Enabled:=false;
ENisn.Enabled:=false;
ENama.Enabled:=false;
ENik.Enabled:=false;
ETemLahir.Enabled:=false;
EAlamat.Enabled:=false;
ETel.Enabled:=false;
EHp.Enabled:=false;
DateLahir.Enabled:=false;
CmbJenisKel.Enabled:=false;
CmbStatus.Enabled:=false;

ENis.Text:='';
ENisn.Text:='';
ENama.Text:='';
ENik.Text:='';
ETemLahir.Text:='';
EAlamat.Text:='';
ETel.Text:='';
EHp.Text:='';
DateLahir.Date:=Date;
CmbJenisKel.ItemIndex:=0;
CmbStatus.ItemIndex:=0;

BBaru.Enabled:=true;
BCetak.Enabled:=true;
BTambah.Enabled:=false;
BEdit.Enabled:=false;
BHapus.Enabled:=false;
BBatal.Enabled:=false;

DataModule1.ZQSiswa.SQL.Clear;
DataModule1.ZQSiswa.SQL.Add('select * from siswa');
DataModule1.ZQSiswa.Open;

//dbgrd1.Columns[0].Width:=70;


end;

procedure TFormSiswa.BBatalClick(Sender: TObject);
begin
bersih;
end;

procedure TFormSiswa.BKeluarClick(Sender: TObject);
begin
FormSiswa.close;
end;

procedure TFormSiswa.DBGrid1CellClick(Column: TColumn);
begin
BTambah.Enabled:=false;
BBaru.Enabled:=false;
BEdit.Enabled:=true;
BHapus.Enabled:=true;
BCetak.Enabled:=false;
BBatal.Enabled:=true;

id:=DataModule1.ZQSiswa.Fields[0].AsString;
ENis.Text:=DataModule1.ZQSiswa.Fields[1].AsString;
ENisn.Text:=DataModule1.ZQSiswa.Fields[2].AsString;
ENama.Text:=DataModule1.ZQSiswa.Fields[3].AsString;
ENik.Text:=DataModule1.ZQSiswa.Fields[4].AsString;
ETemLahir.Text:=DataModule1.ZQSiswa.Fields[5].AsString;
EAlamat.Text:=DataModule1.ZQSiswa.Fields[8].AsString;
ETel.Text:=DataModule1.ZQSiswa.Fields[9].AsString;
EHp.Text:=DataModule1.ZQSiswa.Fields[10].AsString;
DateLahir.Date:=DataModule1.ZQSiswa.Fields[6].AsDateTime;

if (DataModule1.ZQSiswa.Fields[7].AsString='Perempuan')  then
begin
 CmbJenisKel.ItemIndex:=1;
end else
begin
 CmbJenisKel.ItemIndex:=0;
end;

if (DataModule1.ZQSiswa.Fields[11].AsString='Aktif')  then
begin
 CmbStatus.ItemIndex:=0;
end else
begin
 CmbStatus.ItemIndex:=1;
end;

//ENis.Enabled:=false;
//ENisn.Enabled:=false;
//ENama.Enabled:=false;
//ENik.Enabled:=false;
ETemLahir.Enabled:=true;
EAlamat.Enabled:=true;
ETel.Enabled:=true;
EHp.Enabled:=true;
DateLahir.Enabled:=true;
CmbJenisKel.Enabled:=true;
CmbStatus.Enabled:=true;

end;

procedure TFormSiswa.BTambahClick(Sender: TObject);
begin
if (ENama.Text='') or (ENis.Text='') or (ENisn.Text='')  or (ETemLahir.Text='') or (EAlamat.Text='') or (ETel.Text='') or (EHp.Text='')then
begin
 ShowMessage('Data belum Diisi Dengan Benar');
end else
if (DataModule1.ZQSiswa.Locate('Nama_Siswa',ENama.Text,[])) and (DataModule1.ZQSiswa.Locate('NISN',ENisn.Text,[]))and (DataModule1.ZQSiswa.Locate('NIK',ENik.Text,[])) then
begin
ShowMessage('Data sudah Terdapat di dalam database');
end else
begin
with DataModule1.ZQSiswa do
begin
 SQL.Clear;
 SQL.Add('insert into siswa values("''","'+Enis.Text+'","'+ENisn.Text+'","'+ENama.Text+'","'+Enik.Text+'","'+ETemLahir.Text+'","'+FormatDateTime('yyyy/mm/dd',DateLahir.Date)+'","'+CmbJenisKel.Text+'","'+EAlamat.Text+'","'+ETel.Text+'","'+EHp.Text+'","'+CmbStatus.Text+'")');
 ExecSQL;
 ShowMessage('Data sudah Ditambahkan');
 bersih;
end
end
end;

procedure TFormSiswa.BEditClick(Sender: TObject);
begin
if (ENama.Text='') or (ENis.Text='') or (ENisn.Text='')  or (ETemLahir.Text='') or (EAlamat.Text='') or (ETel.Text='') or (EHp.Text='')then
begin
 ShowMessage('Data belum Diisi Dengan Benar');
end else
if (ETemLahir.Text=DataModule1.ZQSiswa.Fields[5].AsString) and (EAlamat.Text=DataModule1.ZQSiswa.Fields[8].AsString) and (ETel.Text=DataModule1.ZQSiswa.Fields[9].AsString) and (EHp.Text=DataModule1.ZQSiswa.Fields[10].AsString) and (CmbJenisKel.Text=DataModule1.ZQSiswa.Fields[6].AsString) and (CmbStatus.Text=DataModule1.ZQSiswa.Fields[11].AsString) then
begin
ShowMessage('DATA TIDAK ADA PERUBAHAN');
end else
begin
with DataModule1.ZQSiswa do
begin
 SQL.Clear;
 SQL.Add('Update siswa set Tempat_Lahir= "'+ETemLahir.Text+'",Tanggal_lahir="'+FormatDateTime('yyyy/mm/dd',DateLahir.Date)+'",Jenis_Kelamin="'+CmbJenisKel.Text+'",Alamat="'+EAlamat.Text+'",Telp="'+ETel.Text+'",hp="'+EHp.Text+'",Status="'+CmbStatus.Text+' "where id="'+id+'"');
 ExecSQL;
 ShowMessage('Data sudah DiUbah');
 bersih;
end
end
end;

procedure TFormSiswa.BHapusClick(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
DataModule1.ZQSiswa.SQL.Clear;
DataModule1.ZQSiswa.SQL.Add(' delete from siswa where id="'+id+'"');
DataModule1.ZQSiswa. ExecSQL;
ShowMessage('DATA BERHASIL DIHAPUS');
bersih;
end else
begin
ShowMessage('DATA BATAL DIHAPUS');
bersih;
end;
end;

procedure TFormSiswa.BCetakClick(Sender: TObject);
begin
ModulCetak.CetakSiswa.ShowReport;
end;

end.
