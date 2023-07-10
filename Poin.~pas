unit Poin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, Buttons;

type
  TFormPoint = class(TForm)
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
    ENama: TEdit;
    EBobot: TEdit;
    CmbJenis: TComboBox;
    CmbStatus: TComboBox;
    procedure bersih;
    procedure BKeluarClick(Sender: TObject);
    procedure BBatalClick(Sender: TObject);
    procedure BBaruClick(Sender: TObject);
    procedure BHapusClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure BTambahClick(Sender: TObject);
    procedure BEditClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BCetakClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPoint: TFormPoint;
  id:String;

implementation

uses CetakModule, DataModul;

{$R *.dfm}

procedure TFormPoint.BKeluarClick(Sender: TObject);
begin
FormPoint.Close;
end;

procedure TFormPoint.BBatalClick(Sender: TObject);
begin
bersih;
end;

procedure TFormPoint.bersih;
begin
ENama.Enabled:=false;
EBobot.Enabled:=false;
CmbJenis.Enabled:=false;
CmbStatus.Enabled:=false;

ENama.Text:='';
EBobot.Text:='';
CmbJenis.ItemIndex:=0;
CmbStatus.ItemIndex:=0;

BBaru.Enabled:=true;
BCetak.Enabled:=true;
BTambah.Enabled:=false;
BEdit.Enabled:=false;
BHapus.Enabled:=false;
BBatal.Enabled:=false;

DataModule1.ZQPoint.SQL.Clear;
DataModule1.ZQPoint.SQL.Add('select * from poin');
DataModule1.ZQPoint.Open;

DBGrid1.Columns[3].Width:=100;

end;

procedure TFormPoint.BBaruClick(Sender: TObject);
begin
BBaru.Enabled:=false;
BTambah.Enabled:=true;
BCetak.Enabled:=false;
BBatal.Enabled:=true;

ENama.Enabled:=true;
EBobot.Enabled:=true;
CmbJenis.Enabled:=true;
CmbStatus.Enabled:=true;

end;

procedure TFormPoint.BHapusClick(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
DataModule1.ZQPoint.SQL.Clear;
DataModule1.ZQPoint.SQL.Add(' delete from poin where id="'+id+'"');
DataModule1.ZQPoint. ExecSQL;

ShowMessage('DATA BERHASIL DIHAPUS');

bersih;
end else
begin
ShowMessage('DATA BATAL DIHAPUS');
bersih;
end;
end;

procedure TFormPoint.DBGrid1CellClick(Column: TColumn);
begin
BTambah.Enabled:=false;
BBaru.Enabled:=false;
BEdit.Enabled:=true;
BHapus.Enabled:=true;
BCetak.Enabled:=false;
BBatal.Enabled:=true;

ENama.Enabled:=true;
EBobot.Enabled:=true;
CmbJenis.Enabled:=true;
CmbStatus.Enabled:=true;

id:=DataModule1.ZQPoint.Fields[0].AsString;
ENama.Text:=DataModule1.ZQPoint.Fields[1].AsString;
EBobot.Text:=DataModule1.ZQPoint.Fields[2].AsString;


if (DataModule1.ZQPoint.Fields[3].AsString='Pelanggaran')  then
begin
 CmbJenis.ItemIndex:=0;
end else
begin
 CmbJenis.ItemIndex:=1;
end;

if (DataModule1.ZQPoint.Fields[4].AsString='Aktif')  then
begin
 CmbStatus.ItemIndex:=0;
end else
begin
 CmbStatus.ItemIndex:=1;
end;

end;

procedure TFormPoint.BTambahClick(Sender: TObject);
begin
if (ENama.Text='') or (EBobot.Text='')then
begin
 ShowMessage('Data belum Diisi Dengan Benar');
end else
if (DataModule1.ZQPoint.Locate('Nama_Poin',ENama.Text,[])) and (DataModule1.ZQPoint.Locate('Bobot',EBobot.Text,[])) then
begin
ShowMessage('Data sudah Terdapat di dalam database');
end else
begin
with DataModule1.ZQPoint do
begin
 SQL.Clear;
 SQL.Add('insert into poin values("''","'+ENama.Text+'","'+EBobot.Text+'","'+CmbJenis.Text+'","'+CmbStatus.Text+'")');
 ExecSQL;
 ShowMessage('Data sudah Ditambahkan');
 bersih;
end
end
end;

procedure TFormPoint.BEditClick(Sender: TObject);
begin

if (ENama.Text='') or (EBobot.Text='') then
begin
 ShowMessage('Data belum Diisi Dengan Benar');
end else
if (ENama.Text=DataModule1.ZQPoint.Fields[1].AsString) and (EBobot.Text=DataModule1.ZQPoint.Fields[2].AsString) then
begin
ShowMessage('DATA TIDAK ADA PERUBAHAN');
end else
begin
with DataModule1.ZQPoint do
begin
 SQL.Clear;
 SQL.Add('Update poin set Nama_Poin= "'+ENama.Text+'",Bobot="'+EBobot.Text+'",Jenis="'+CmbJenis.Text+'",Status="'+CmbStatus.Text+'"where id="'+id+'"');
 ExecSQL;
 ShowMessage('Data sudah DiUbah');
 bersih;
end
end
end;

procedure TFormPoint.FormCreate(Sender: TObject);
begin
bersih;
end;

procedure TFormPoint.BCetakClick(Sender: TObject);
begin
ModulCetak.CetakPoin.ShowReport;
end;

end.
