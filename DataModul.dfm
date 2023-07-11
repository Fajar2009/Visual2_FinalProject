object DataModule1: TDataModule1
  OldCreateOrder = False
  Left = 749
  Top = 143
  Height = 398
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
  object ZQWalikelas: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'Select * from walikelas')
    Params = <>
    Left = 80
    Top = 200
  end
  object ZQKelas: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from kelas')
    Params = <>
    Left = 80
    Top = 256
  end
  object ZQPoint: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from poin')
    Params = <>
    Left = 80
    Top = 312
  end
  object DSWalikelas: TDataSource
    DataSet = ZQWalikelas
    Left = 136
    Top = 200
  end
  object DSKelas: TDataSource
    DataSet = ZQKelas
    Left = 136
    Top = 264
  end
  object DSPoint: TDataSource
    DataSet = ZQPoint
    Left = 136
    Top = 320
  end
  object ZQSemester: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from semester')
    Params = <>
    Left = 240
    Top = 88
  end
  object DSHub: TDataSource
    DataSet = ZQHubungan
    Left = 320
    Top = 40
  end
  object DSSemester: TDataSource
    DataSet = ZQSemester
    Left = 312
    Top = 104
  end
  object ZQHubungan: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from hubungan')
    Params = <>
    Left = 240
    Top = 40
  end
  object ZQCari1: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from siswa')
    Params = <>
    Left = 240
    Top = 152
  end
  object ZCetakSemester: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      
        'SELECT semester.Tanggal,semester.Semester,semester.Status,semest' +
        'er.Tingkat_Kelas, siswa.Nama_Siswa,poin.Nama_Poin,walikelas.Nama' +
        ',ortu.Nama,kelas.Nama FROM semester JOIN siswa ON semester.Id_Si' +
        'swa=siswa.Id JOIN poin ON semester.Id_Poin=poin.Id JOIN'
      
        'walikelas ON semester.Id_Wali=walikelas.Id JOIN ortu ON semester' +
        '.Id_Ortu=ortu.Id JOIN kelas ON semester.Id_Kelas=kelas.Id;')
    Params = <>
    Left = 248
    Top = 224
  end
  object ZCetakHubungan: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      
        'SELECT hubungan.Id_Siswa, hubungan.Id_Ortu,hubungan.Status_Hub,h' +
        'ubungan.Keterangan,hubungan.Status_Ortu, siswa.Nama_Siswa,ortu.N' +
        'ama FROM hubungan JOIN siswa ON hubungan.Id_Siswa=siswa.Id JOIN ' +
        'ortu WHERE hubungan.Id_Ortu=ortu.Id')
    Params = <>
    Left = 344
    Top = 224
  end
end
