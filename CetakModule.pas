unit CetakModule;

interface

uses
  SysUtils, Classes, frxClass, frxDBSet;

type
  TModulCetak = class(TDataModule)
    CetakSiswa: TfrxReport;
    frxDBDatasetSiswa: TfrxDBDataset;
    CetakUser: TfrxReport;
    frxDBDatasetUser: TfrxDBDataset;
    frxDBDatasetOrtu: TfrxDBDataset;
    CetakOrtu: TfrxReport;
    CetakKelas: TfrxReport;
    frxDBDatasetKelas: TfrxDBDataset;
    CetakPoin: TfrxReport;
    frxDBDatasetPoin: TfrxDBDataset;
    CetakWalikelas: TfrxReport;
    frxDBDatasetWalikelas: TfrxDBDataset;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ModulCetak: TModulCetak;

implementation

uses DataModul;

{$R *.dfm}

end.
