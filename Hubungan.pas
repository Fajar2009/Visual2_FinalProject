unit Hubungan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids;

type
  TFormHubungan = class(TForm)
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
    CmbNamaSiswa: TComboBox;
    CmbNamaWaliSiswa: TComboBox;
    CmbStatusHub: TComboBox;
    CmbKet: TComboBox;
    CmbStatusWali: TComboBox;
    procedure bersih;
    procedure FormCreate(Sender: TObject);
    procedure BCetakClick(Sender: TObject);
    procedure BBatalClick(Sender: TObject);
    procedure BKeluarClick(Sender: TObject);
    procedure BBaruClick(Sender: TObject);
    procedure BHapusClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure BTambahClick(Sender: TObject);
    procedure BEditClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormHubungan: TFormHubungan;
  id,idsiswa,idwali:String;


implementation

uses CetakModule, DataModul, DateUtils, ZDataset, DB, ZAbstractRODataset;

{$R *.dfm}

procedure TFormHubungan.bersih;
begin
CmbNamaSiswa.Enabled:=false;
CmbNamaWaliSiswa.Enabled:=false;
CmbStatusHub.Enabled:=false;
CmbKet.Enabled:=false;
CmbStatusWali.Enabled:=false;

CmbNamaSiswa.ItemIndex:=-1;
CmbNamaWaliSiswa.ItemIndex:=-1;
CmbStatusHub.ItemIndex:=0;
CmbKet.ItemIndex:=0;
CmbStatusWali.ItemIndex:=0;

CmbNamaSiswa.Text:='';
CmbNamaWaliSiswa.Text:='';

BBaru.Enabled:=true;
BCetak.Enabled:=true;
BTambah.Enabled:=false;
BEdit.Enabled:=false;
BHapus.Enabled:=false;
BBatal.Enabled:=false;


DataModule1.ZQHubungan.SQL.Clear;
DataModule1.ZQHubungan.SQL.Add('select * from hubungan');
DataModule1.ZQHubungan.Open;

end;

procedure TFormHubungan.FormCreate(Sender: TObject);
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
 CmbNamaWaliSiswa.Items.Add(DataModule1.ZQCari1.Fields[2].AsString);
 Next;
 end;

end

end;

procedure TFormHubungan.BCetakClick(Sender: TObject);
begin
ModulCetak.CetakHubungan.ShowReport();
end;

procedure TFormHubungan.BBatalClick(Sender: TObject);
begin
bersih;
end;

procedure TFormHubungan.BKeluarClick(Sender: TObject);
begin
FormHubungan.Close;
end;

procedure TFormHubungan.BBaruClick(Sender: TObject);
begin

CmbNamaSiswa.Enabled:=true;
CmbNamaWaliSiswa.Enabled:=true;
CmbStatusHub.Enabled:=true;
CmbKet.Enabled:=true;
CmbStatusWali.Enabled:=true;

BBaru.Enabled:=false;
BTambah.Enabled:=true;
BCetak.Enabled:=false;
BBatal.Enabled:=true;


end;

procedure TFormHubungan.BHapusClick(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
DataModule1.ZQHubungan.SQL.Clear;
DataModule1.ZQHubungan.SQL.Add(' delete from hubungan where id="'+id+'"');
DataModule1.ZQHubungan. ExecSQL;
ShowMessage('DATA BERHASIL DIHAPUS');
bersih;
end else
begin
ShowMessage('DATA BATAL DIHAPUS');
bersih;
end;
end;

procedure TFormHubungan.DBGrid1CellClick(Column: TColumn);
begin
//CmbNamaSiswa.Enabled:=true;
//CmbNamaWaliSiswa.Enabled:=true;
CmbStatusHub.Enabled:=true;
CmbKet.Enabled:=true;
CmbStatusWali.Enabled:=true;

BTambah.Enabled:=false;
BBaru.Enabled:=false;
BEdit.Enabled:=true;
BHapus.Enabled:=true;
BCetak.Enabled:=false;
BBatal.Enabled:=true;

if (DataModule1.ZQHubungan.Fields[3].AsString='Kandung')  then
begin
 CmbStatusHub.ItemIndex:=0;
end else
if (DataModule1.ZQHubungan.Fields[3].AsString='Tiri')  then
begin
 CmbStatusHub.ItemIndex:=1;
end else
begin
 CmbStatusHub.ItemIndex:=2;
end;

if (DataModule1.ZQHubungan.Fields[4].AsString='Ayah')  then
begin
 CmbKet.ItemIndex:=0;
end else
if (DataModule1.ZQHubungan.Fields[4].AsString='Ibu')  then
begin
 CmbKet.ItemIndex:=1;
end else
if (DataModule1.ZQHubungan.Fields[4].AsString='Paman')  then
begin
 CmbKet.ItemIndex:=2;
end else
if (DataModule1.ZQHubungan.Fields[4].AsString='Bibi')  then
begin
 CmbKet.ItemIndex:=3;
end else
if (DataModule1.ZQHubungan.Fields[4].AsString='Kakek')  then
begin
 CmbKet.ItemIndex:=4;
end else
if (DataModule1.ZQHubungan.Fields[4].AsString='Nenek')  then
begin
 CmbKet.ItemIndex:=5;
end else
begin
 CmbKet.ItemIndex:=6;
end;

if (DataModule1.ZQHubungan.Fields[5].AsString='Hidup')  then
begin
 CmbStatusWali.ItemIndex:=0;
end else
begin
 CmbStatusWali.ItemIndex:=1;
end ;                    

id:=DataModule1.ZQHubungan.Fields[0].AsString;
idsiswa:=DataModule1.ZQHubungan.Fields[1].AsString;
idwali:=DataModule1.ZQHubungan.Fields[2].AsString;

with DataModule1.ZQCari1 do
begin
SQL.Clear;
SQL.Add('select * from siswa where Id="'+idsiswa+'"');
Open;
CmbNamaSiswa.Text:=Fields[3].AsString;

SQL.Clear;
SQL.Add('select * from ortu where Id="'+idwali+'"');
Open;
CmbNamaWaliSiswa.Text:=Fields[2].AsString;
end;

//isi data  statushub ket sama statuswali

end;

procedure TFormHubungan.BTambahClick(Sender: TObject);
begin
with DataModule1.ZQCari1 do
begin
SQL.Clear;
SQL.Add('select * from siswa where Nama_Siswa="'+CmbNamaSiswa.Text+'"');
Open;
idsiswa:=Fields[0].AsString;

SQL.Clear;
SQL.Add('select * from ortu where Nama="'+CmbNamaWaliSiswa.Text+'"');
Open;
idwali:=Fields[0].AsString;
end;
if (CmbNamaSiswa.Text='') or (CmbNamaWaliSiswa.Text='')  then
begin
 ShowMessage('Data belum Diisi Dengan Benar');
end else
if (DataModule1.ZQHubungan.Locate('Id_Siswa',idsiswa,[])) and (DataModule1.ZQHubungan.Locate('Id_Ortu',idwali,[])) then
begin
ShowMessage('Data sudah Terdapat di dalam database');
end else
begin


with DataModule1.ZQHubungan do
begin
 SQL.Clear;
 SQL.Add('insert into hubungan values("''","'+idsiswa+'","'+idwali+'","'+CmbStatusHub.Text+'","'+CmbKet.Text+'","'+CmbStatusWali.Text+'")');
 ExecSQL;
 ShowMessage('Data sudah Ditambahkan');
 bersih;
end
end
end;

procedure TFormHubungan.BEditClick(Sender: TObject);
begin

if (CmbNamaSiswa.Text='') or (CmbNamaWaliSiswa.Text='')then
begin
 ShowMessage('Data belum Diisi Dengan Benar');
end else
if (idsiswa=DataModule1.ZQHubungan.Fields[1].AsString) and (idwali=DataModule1.ZQHubungan.Fields[2].AsString) and (CmbStatusHub.Text=DataModule1.ZQHubungan.Fields[3].AsString) and (CmbKet.Text=DataModule1.ZQHubungan.Fields[4].AsString) and (CmbStatusWali.Text=DataModule1.ZQHubungan.Fields[5].AsString) then
begin
ShowMessage('DATA TIDAK ADA PERUBAHAN');
end else
begin
with DataModule1.ZQCari1 do
begin
SQL.Clear;
SQL.Add('select * from siswa where Nama_Siswa="'+CmbNamaSiswa.Text+'"');
Open;
idsiswa:=Fields[0].AsString;

SQL.Clear;
SQL.Add('select * from ortu where Nama="'+CmbNamaWaliSiswa.Text+'"');
Open;
idwali:=Fields[0].AsString;
end;


with DataModule1.ZQHubungan do
begin
 SQL.Clear;
SQL.Add('Update hubungan set Id_Siswa= "'+idsiswa+'",Id_Ortu="'+idwali+'",Status_Hub="'+CmbStatusHub.Text+'",Keterangan="'+CmbKet.Text+'",Status_Ortu="'+CmbStatusWali.Text+' "where id="'+id+'"');
 ExecSQL;
 ShowMessage('Data sudah DiUbah');
 bersih;
end
end
end;

end.
