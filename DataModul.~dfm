object DataModule1: TDataModule1
  OldCreateOrder = False
  Left = 189
  Top = 181
  Height = 362
  Width = 468
  object ZConnection1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'db_visual2'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'G:\visual 2\Final Project\libmysql.dll'
    Left = 32
    Top = 32
  end
  object ZQSiswa: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from siswa')
    Params = <>
    Left = 80
    Top = 32
  end
  object DSSiswa: TDataSource
    DataSet = ZQSiswa
    Left = 136
    Top = 32
  end
  object ZQUser: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from user')
    Params = <>
    Left = 80
    Top = 88
  end
  object ZQOrtu: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from ortu')
    Params = <>
    Left = 80
    Top = 144
  end
  object DSUser: TDataSource
    DataSet = ZQUser
    Left = 136
    Top = 88
  end
  object DSOrtu: TDataSource
    DataSet = ZQOrtu
    Left = 136
    Top = 144
  end
end
