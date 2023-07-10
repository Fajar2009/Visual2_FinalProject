unit OrangTua;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids;

type
  TFormOrtu = class(TForm)
    DBGrid1: TDBGrid;
    BBaru: TBitBtn;
    BTambah: TBitBtn;
    BEdit: TBitBtn;
    BHapus: TBitBtn;
    BCetak: TBitBtn;
    BBatal: TBitBtn;
    BKeluar: TBitBtn;
    Label3: TLabel;
    Label4: TLabel;
    ENama: TEdit;
    ENik: TEdit;
    Label1: TLabel;
    EPendidikan: TEdit;
    Label2: TLabel;
    EPekerjaan: TEdit;
    Label5: TLabel;
    EAlamat: TEdit;
    Label6: TLabel;
    ETelp: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    CmbJK: TComboBox;
    CmbStatus: TComboBox;
    CmbAgama: TComboBox;
    procedure bersih;
    procedure BBaruClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BBatalClick(Sender: TObject);
    procedure BCetakClick(Sender: TObject);
    procedure BHapusClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure BTambahClick(Sender: TObject);
    procedure BEditClick(Sender: TObject);
    procedure BKeluarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormOrtu: TFormOrtu;
   id:String;


implementation

uses DataModul, CetakModule;

{$R *.dfm}

{ TFormOrtu }

{ TFormOrtu }

procedure TFormOrtu.bersih;
begin
ENik.Text:='';
ENama.Text:='';
EPendidikan.Text:='';
EPekerjaan.Text:='';

EAlamat.Text:='';
ETelp.Text:='';
CmbJK.ItemIndex:=0;
CmbAgama.ItemIndex:=0;
CmbStatus.ItemIndex:=0;

ENik.Enabled:=false;
ENama.Enabled:=false;
EPendidikan.Enabled:=false;
EPekerjaan.Enabled:=false;
CmbJK.Enabled:=false;
EAlamat.Enabled:=false;
ETelp.Enabled:=false;
CmbAgama.Enabled:=false;
CmbStatus.Enabled:=false;

BBaru.Enabled:=true;
BCetak.Enabled:=true;
BTambah.Enabled:=false;
BEdit.Enabled:=false;
BHapus.Enabled:=false;
BBatal.Enabled:=false;

DataModule1.ZQOrtu.SQL.Clear;
DataModule1.ZQOrtu.SQL.Add('select * from ortu');
DataModule1.ZQOrtu.Open;

//dbgrd1.Columns[0].Width:=70;

end;

procedure TFormOrtu.BBaruClick(Sender: TObject);
begin
BBaru.Enabled:=false;
BTambah.Enabled:=true;
BCetak.Enabled:=false;
BBatal.Enabled:=true;

ENik.Enabled:=true;
ENama.Enabled:=true;
EPendidikan.Enabled:=true;
EPekerjaan.Enabled:=true;
CmbJK.Enabled:=true;
EAlamat.Enabled:=true;
ETelp.Enabled:=true;
CmbAgama.Enabled:=true;
CmbStatus.Enabled:=true;

end;

procedure TFormOrtu.FormCreate(Sender: TObject);
begin
FormOrtu.Close;
end;

procedure TFormOrtu.BBatalClick(Sender: TObject);
begin
bersih;
end;

procedure TFormOrtu.BCetakClick(Sender: TObject);
begin
ModulCetak.CetakOrtu.ShowReport();
end;

procedure TFormOrtu.BHapusClick(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
DataModule1.ZQOrtu.SQL.Clear;
DataModule1.ZQOrtu.SQL.Add(' delete from ortu where id="'+id+'"');
DataModule1.ZQOrtu. ExecSQL;

ShowMessage('DATA BERHASIL DIHAPUS');

bersih;
end else
begin
ShowMessage('DATA BATAL DIHAPUS');
bersih;
end;
end;

procedure TFormOrtu.DBGrid1CellClick(Column: TColumn);
begin
BTambah.Enabled:=false;
BBaru.Enabled:=false;
BEdit.Enabled:=true;
BHapus.Enabled:=true;
BCetak.Enabled:=false;
BBatal.Enabled:=true;

ENik.Enabled:=true;
ENama.Enabled:=true;
EPendidikan.Enabled:=true;
EPekerjaan.Enabled:=true;
CmbJK.Enabled:=true;
EAlamat.Enabled:=true;
ETelp.Enabled:=true;
CmbAgama.Enabled:=true;
CmbStatus.Enabled:=true;

id:=DataModule1.ZQOrtu.Fields[0].AsString;
ENik.Text:=DataModule1.ZQOrtu.Fields[1].AsString;
ENama.Text:=DataModule1.ZQOrtu.Fields[2].AsString;
EPendidikan.Text:=DataModule1.ZQOrtu.Fields[3].AsString;
EPekerjaan.Text:=DataModule1.ZQOrtu.Fields[4].AsString;
EAlamat.Text:=DataModule1.ZQOrtu.Fields[6].AsString;
ETelp.Text:=DataModule1.ZQOrtu.Fields[7].AsString;

if (DataModule1.ZQOrtu.Fields[5].AsString='Laki-Laki')  then
begin
 CmbJK.ItemIndex:=0;
end else
begin
 CmbJK.ItemIndex:=1;
end;

if (DataModule1.ZQOrtu.Fields[8].AsString='Islam')  then
begin
 CmbAgama.ItemIndex:=0;
end else
if (DataModule1.ZQOrtu.Fields[8].AsString='Kristen')  then
begin
 CmbAgama.ItemIndex:=1;
end else
begin
 CmbAgama.ItemIndex:=2;
end;


if (DataModule1.ZQOrtu.Fields[9].AsString='Aktif')  then
begin
 CmbStatus.ItemIndex:=0;
end else
begin
 CmbStatus.ItemIndex:=1;
end;

//CmbAgama.Text:='';
//CmbStatus.Text:=''; jk
end;

procedure TFormOrtu.BTambahClick(Sender: TObject);
begin
if (ENama.Text='') or (ENik.Text='') or (EPendidikan.Text='')  or (EPekerjaan.Text='') or (EAlamat.Text='') or (ETelp.Text='')then
begin
 ShowMessage('Data belum Diisi Dengan Benar');
end else
if (DataModule1.ZQOrtu.Locate('Nama',ENama.Text,[])) and (DataModule1.ZQOrtu.Locate('NIK',ENik.Text,[]))and (DataModule1.ZQOrtu.Locate('Alamat',EAlamat.Text,[])) then
begin
ShowMessage('Data sudah Terdapat di dalam database');
end else
begin
with DataModule1.ZQOrtu do
begin
 SQL.Clear;
 SQL.Add('insert into ortu values("''","'+Enik.Text+'","'+ENama.Text+'","'+EPendidikan.Text+'","'+EPekerjaan.Text+'","'+CmbJK.Text+'","'+EAlamat.Text+'","'+ETelp.Text+'","'+CmbAgama.Text+'","'+CmbStatus.Text+'")');
 ExecSQL;
 ShowMessage('Data sudah Ditambahkan');
 bersih;
end
end
end;

procedure TFormOrtu.BEditClick(Sender: TObject);
begin
if (ENama.Text='') or (ENik.Text='') or (EPendidikan.Text='')  or (EPekerjaan.Text='') or (EAlamat.Text='') or (ETelp.Text='') then
begin
 ShowMessage('Data belum Diisi Dengan Benar');
end else
if (ENik.Text=DataModule1.ZQOrtu.Fields[1].AsString) and (ENama.Text=DataModule1.ZQOrtu.Fields[2].AsString) and (EPendidikan.Text=DataModule1.ZQOrtu.Fields[3].AsString) and (EPekerjaan.Text=DataModule1.ZQOrtu.Fields[4].AsString) and (EAlamat.Text=DataModule1.ZQOrtu.Fields[5].AsString) and (CmbStatus.Text=DataModule1.ZQOrtu.Fields[9].AsString) then
begin
ShowMessage('DATA TIDAK ADA PERUBAHAN');
end else
begin
with DataModule1.ZQOrtu do
begin
 SQL.Clear;
 SQL.Add('Update ortu set NIK= "'+ENik.Text+'",Nama="'+ENama.Text+'",Pendidikan="'+EPendidikan.Text+'",Pekerjaan="'+EPekerjaan.Text+'",Jenis_Kelamin="'+CmbJK.Text+'",Alamat="'+EAlamat.Text+'",Telpon="'+ETelp.Text+'",Agama="'+CmbAgama.Text+'",Is_Active="'+CmbStatus.Text+' "where id="'+id+'"');
 ExecSQL;
 ShowMessage('Data sudah DiUbah');
 bersih;
end
end
end;

procedure TFormOrtu.BKeluarClick(Sender: TObject);
begin
FormOrtu.Close;
end;

end.
