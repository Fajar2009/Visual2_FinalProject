object DataModule1: TDataModule1
  OldCreateOrder = False
  Left = 189
  Top = 181
  Height = 243
  Width = 238
  object ZConnection1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Port = 0
    Left = 32
    Top = 32
  end
  object ZQSiswa: TZQuery
    Params = <>
    Left = 80
    Top = 32
  end
  object DSSiswa: TDataSource
    Left = 136
    Top = 32
  end
  object ZUser: TZQuery
    Params = <>
    Left = 80
    Top = 88
  end
  object ZOrtu: TZQuery
    Params = <>
    Left = 80
    Top = 144
  end
  object DSUser: TDataSource
    Left = 136
    Top = 88
  end
  object DSOrtu: TDataSource
    Left = 136
    Top = 144
  end
end
