unit Guru;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons;

type
  TFormGuru = class(TForm)
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
    ENik: TEdit;
    ENama: TEdit;
    EAlamat: TEdit;
    CmbJk: TComboBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    ETelp: TEdit;
    EPendidikan: TEdit;
    EMatpel: TEdit;
    CmbStatus: TComboBox;
    procedure bersih;
    procedure BBaruClick(Sender: TObject);
    procedure BBatalClick(Sender: TObject);
    procedure BKeluarClick(Sender: TObject);
    procedure BCetakClick(Sender: TObject);
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
  FormGuru: TFormGuru;
  id:String;

implementation

uses DataModul, CetakModule;

{$R *.dfm}

procedure TFormGuru.bersih;
begin
ENik.Enabled:=false;
ENama.Enabled:=false;
EAlamat.Enabled:=false;
ETelp.Enabled:=false;
EPendidikan.Enabled:=false;
EMatpel.Enabled:=false;
CmbJk.Enabled:=false;
CmbStatus.Enabled:=false;

ENik.Text:='';
ENama.Text:='';
EAlamat.Text:='';
ETelp.Text:='';
EPendidikan.Text:='';
EMatpel.Text:='';
CmbJk.ItemIndex:=0;
CmbStatus.ItemIndex:=0;

BBaru.Enabled:=true;
BCetak.Enabled:=true;
BTambah.Enabled:=false;
BEdit.Enabled:=false;
BHapus.Enabled:=false;
BBatal.Enabled:=false;

DataModule1.ZQWalikelas.SQL.Clear;
DataModule1.ZQWalikelas.SQL.Add('select * from walikelas');
DataModule1.ZQWalikelas.Open;

end;

procedure TFormGuru.BBaruClick(Sender: TObject);
begin
BBaru.Enabled:=false;
BTambah.Enabled:=true;
BCetak.Enabled:=false;
BBatal.Enabled:=true;

ENik.Enabled:=true;
ENama.Enabled:=true;
EAlamat.Enabled:=true;
ETelp.Enabled:=true;
EPendidikan.Enabled:=true;
EMatpel.Enabled:=true;
CmbJk.Enabled:=true;
CmbStatus.Enabled:=true;

end;

procedure TFormGuru.BBatalClick(Sender: TObject);
begin
bersih;
end;

procedure TFormGuru.BKeluarClick(Sender: TObject);
begin
FormGuru.Close;
end;

procedure TFormGuru.BCetakClick(Sender: TObject);
begin
ModulCetak.CetakWalikelas.ShowReport();
end;

procedure TFormGuru.BHapusClick(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
DataModule1.ZQWalikelas.SQL.Clear;
DataModule1.ZQWalikelas.SQL.Add(' delete from ortu where id="'+id+'"');
DataModule1.ZQWalikelas. ExecSQL;

ShowMessage('DATA BERHASIL DIHAPUS');

bersih;
end else
begin
ShowMessage('DATA BATAL DIHAPUS');
bersih;
end;
end;

procedure TFormGuru.BTambahClick(Sender: TObject);
begin
if (ENik.Text='') or (ENama.Text='') or (EAlamat.Text='')  or (ETelp.Text='') or (EPendidikan.Text='') or (EMatpel.Text='')then
begin
 ShowMessage('Data belum Diisi Dengan Benar');
end else
if (DataModule1.ZQWalikelas.Locate('NIK',ENik.Text,[])) and (DataModule1.ZQWalikelas.Locate('Nama',ENama.Text,[]))and (DataModule1.ZQWalikelas.Locate('Alamat',EAlamat.Text,[])) then
begin
ShowMessage('Data sudah Terdapat di dalam database');
end else
begin
with DataModule1.ZQWalikelas do
begin
 SQL.Clear;
 SQL.Add('insert into walikelas values("''","'+ENik.Text+'","'+ENama.Text+'","'+CmbJk.Text+'","'+EAlamat.Text+'","'+ETelp.Text+'","'+CmbStatus.Text+'","'+EPendidikan.Text+'","'+EMatpel.Text+'")');
 ExecSQL;
 ShowMessage('Data sudah Ditambahkan');
 bersih;
end
end
end;

procedure TFormGuru.BEditClick(Sender: TObject);
begin
if  (ENik.Text='') or (ENama.Text='') or (EAlamat.Text='')  or (ETelp.Text='') or (EPendidikan.Text='') or (EMatpel.Text='')then
begin
 ShowMessage('Data belum Diisi Dengan Benar');
end else
if (ENik.Text=DataModule1.ZQWalikelas.Fields[1].AsString) and (ENama.Text=DataModule1.ZQWalikelas.Fields[2].AsString) and (EAlamat.Text=DataModule1.ZQWalikelas.Fields[4].AsString) and (ETelp.Text=DataModule1.ZQWalikelas.Fields[5].AsString) and (EPendidikan.Text=DataModule1.ZQWalikelas.Fields[7].AsString) and (EMatpel.Text=DataModule1.ZQWalikelas.Fields[8].AsString) and (CmbStatus.Text=DataModule1.ZQWalikelas.Fields[6].AsString) then
begin
ShowMessage('DATA TIDAK ADA PERUBAHAN');
end else
begin
with DataModule1.ZQWalikelas do
begin
 SQL.Clear;
 SQL.Add('Update walikelas set NIK= "'+ENik.Text+'",Nama="'+ENama.Text+'",Jenis_Kelamin="'+CmbJk.Text+'",Alamat="'+EAlamat.Text+'",Telp="'+ETelp.Text+'",Status="'+CmbStatus.Text+'",Pendidikan="'+EPendidikan.Text+'",Matpel="'+EMatpel.Text+' "where id="'+id+'"');
 ExecSQL;
 ShowMessage('Data sudah DiUbah');
 bersih;
end
end
end;

procedure TFormGuru.DBGrid1CellClick(Column: TColumn);
begin
BTambah.Enabled:=false;
BBaru.Enabled:=false;
BEdit.Enabled:=true;
BHapus.Enabled:=true;
BCetak.Enabled:=false;
BBatal.Enabled:=true;

ENik.Enabled:=true;
ENama.Enabled:=true;
EAlamat.Enabled:=true;
ETelp.Enabled:=true;
EPendidikan.Enabled:=true;
EMatpel.Enabled:=true;
CmbJk.Enabled:=true;
CmbStatus.Enabled:=true;

id:=DataModule1.ZQWalikelas.Fields[0].AsString;
ENik.Text:=DataModule1.ZQWalikelas.Fields[1].AsString;
ENama.Text:=DataModule1.ZQWalikelas.Fields[2].AsString;
EAlamat.Text:=DataModule1.ZQWalikelas.Fields[4].AsString;
ETelp.Text:=DataModule1.ZQWalikelas.Fields[5].AsString;
EPendidikan.Text:=DataModule1.ZQWalikelas.Fields[7].AsString;
EMatpel.Text:=DataModule1.ZQWalikelas.Fields[8].AsString;

if (DataModule1.ZQWalikelas.Fields[3].AsString='Laki-Laki')  then
begin
 CmbJK.ItemIndex:=0;
end else
begin
 CmbJK.ItemIndex:=1;
end;

if (DataModule1.ZQWalikelas.Fields[6].AsString='Aktif')  then
begin
 CmbStatus.ItemIndex:=0;
end else
begin
 CmbStatus.ItemIndex:=1;
end;

end;

end.
