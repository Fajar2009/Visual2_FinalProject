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
    ZUser: TZQuery;
    ZOrtu: TZQuery;
    DSUser: TDataSource;
    DSOrtu: TDataSource;
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
