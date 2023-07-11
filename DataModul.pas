unit DataModul;

interface

uses
  SysUtils, Classes, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection;

type
  TDataModule1 = class(TDataModule)
    ZConnection1: TZConnection;
    ZQSiswa: TZQuery;
    DSSiswa: TDataSource;
    ZQUser: TZQuery;
    ZQOrtu: TZQuery;
    DSUser: TDataSource;
    DSOrtu: TDataSource;
    ZQWalikelas: TZQuery;
    ZQKelas: TZQuery;
    ZQPoint: TZQuery;
    DSWalikelas: TDataSource;
    DSKelas: TDataSource;
    DSPoint: TDataSource;
    ZQSemester: TZQuery;
    DSHub: TDataSource;
    DSSemester: TDataSource;
    ZQHubungan: TZQuery;
    ZQCari1: TZQuery;
    ZCetakSemester: TZQuery;
    ZCetakHubungan: TZQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;



implementation

{$R *.dfm}

end.
